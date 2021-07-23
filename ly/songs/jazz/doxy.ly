\version "2.19.81"

titleLeft = "Doxy"
titleRight = " "
title = "Doxy"
composerName = "Sonny Rollins"

%{

killPreview ; rm doxy-*pdf ;  lilypond ly/songs/jazz/doxy.ly  ; for file in doxy-*.pdf ; do op $file ; done  

killPreview
rm doxy*.pdf 
lilypond ly/songs/jazz/doxy.ly
python ~/git/PyPDF2/Scripts/pdfcat -o doxy-for-Eb.pdf pdf/songs/jazz/doxy-for-Eb.pdf pdf/songs/jazz/doxy-blank-for-Eb.pdf
mv doxy-for-Eb.pdf pdf/songs/jazz/printable
mv doxy*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/doxy*pdf pdf/songs/jazz/printable/doxy*pdf ; do open -a Preview $file ; done

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

strcture = \relative c' { 
    \key bf \major
    s1
    \bar "||"
  
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \bar "||" \break
  
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*3 \break
    s1*3
    \bar "|."
}

strctureBlank = \relative c' { 
    \key bf \major
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \bar ":|][|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \bar ":|]"
}


chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf2 af:7 | g1:7 | c2:7 f:7 | bf f:7 | 
    bf2 af:7 | g1:7 | c1:7 | f:7 |
    bf1:7 | s | ef:7 | bf:dim7 | 
    bf2 af:7 | g1:7 | c2:7 f:7 | bf2 f:7 | 
}


chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 ||
    \chordsForm
    \chordsForm
    c2:7 f:7 | bf1 | 
}

melodyForm = \relative c' { 
    r2 r4 r8 f8 ||
    
    bf8 d bf ( f )  bf4 r8 f8 | bf ( f  bf ) df r g,4 f8 |
    e8 g bf df  \tuplet 3/2 { c8 ( df c ) } g8 bf | r2 r4 r8 f8 |
    
    bf8 d bf ( f )  bf4 r8 f8 | bf ( f  bf ) df r g,4 f8 |
    e8 g bf df  \tuplet 3/2 { c8 ( df c ) } g8 a | R1 |

    g'4 r8 f8 ~ 8 r8 df4 ~ | 4. g,8 r c4 g8 | 
    df'4 8 8 g,4 c | r2 r4 r8 f,8 |
    
    bf8 d bf ( f )  bf4 r8 f8 | bf ( f  bf ) df r g,4 f8 |
    e8 g bf df  \tuplet 3/2 { c8 ( df c ) } g8 bf | 
}

doxyTag = \relative c'' { 
    r2 r8 g4 f8 |
    e8 g bf df  \tuplet 3/2 { c8 ( df c ) } g8 bf | 
    r8 e f [ bf, ] r2 ||
}

melody = \relative c' { 
    \melodyForm
    \transpose c, c \melodyForm
    \doxyTag
}

\header {
    title = "Doxy"
    composer = "Sonny Rollins"
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c { 
                \include "ly/ily/chord-names-properties.ily"                
                \chordsHead 
            }
            \new Staff = "lead" \transpose ef c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \strcture
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "blank-for-Eb"
    \header {
        subtitle = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
                \chordsForm
            }
            \new Staff = "lead" \transpose ef c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \strctureBlank 
                \noPageBreak
            }
        >>
    }
}