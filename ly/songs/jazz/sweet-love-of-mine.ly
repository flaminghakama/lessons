\version "2.19.81"

titleLeft = "Sweet Love"
titleRight = "Of Mine"
title = "Sweet Love Of Mine"
composerName = "W. Shaw"

%{

killPreview ; rm sweet-love-of-mine*pdf ;  lilypond ly/songs/jazz/sweet-love-of-mine.ly  ; for file in sweet-love-of-mine*.pdf ; do op $file ; done  

killPreview
rm sweet-love-of-mine*pdf
lilypond ly/songs/jazz/sweet-love-of-mine.ly
mv sweet-love-of-mine*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/sweet-love-of-mine*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

structure = \relative c' { 
    \key c \minor 
    \tempo "Bossa"
    \startSection "Intro/Coda"
    \bar "[|:"
    \partial 8*3 s4.
    \bar "||"
    s1*3 | s2 s8 \bar ":|]"  \break 
    s4. 
    \startSection "A"
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -5 . -1 )

    \startSection "A"
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 
    \bar "|."
}

bassIntro = \relative c { 
    r8 r4 || c4 r8 c8 ~ 4 r | df4 r8 df8 ~ 4 r | af4 r8 af8 ~ 4 r | g2 r8
}

melodyA = \relative c' { 
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    ef4. \glissando ||
    c2 ~ 8 ef g c | r c r c ~ 8 bf g f ~ | 2 g8 ef c f ~ | 2 ef8 c8 8 8 ~ | 
    c1 ~ | 2     
}

melody = \relative c'' { 
    g8 c [ d ] ||
    ef8 d c ef ~ 4 d8 c | df8 c bf df ~ 4 c8 bf | 
    cf8 bf af cf ~ 8 df4. \glissando | bf2 r8 
    
    \melodyA 
    \relative c' { ef8 c c f ~ | 2 ~ 8 ef c g' | r2 r8 }

    \melodyA    
    \relative c' { ef8 c c c ~ | 1 ~ | 2 r4 f || 

        c'2 ~ 8 bf ef bf | ff2 8 c'4 ff,8 | ef1 ~ | 2 r8 c'4 d8 | 
        \tuplet 3/2 { ef4 d c } ef2 ~ | 2 f \glissando | d1 ~ | 2 r8 
    }
    
    \melodyA 
    \relative c' { ef8 c c c ~ | 1 ~ | 2 r || }
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4. | 
    c1:m | df | af:m7 | g:aug7.9+ 

    c1:m | df | af | d2:m7.5- g:aug7 | 
    c1:m | f:7 | d:m7.5- | g:aug7 || 

    c1:m | df | af | d2:m7.5- g:aug7 | 
    c1:m | f:7 | d2:m7.5- g:aug7 | c1:m || 

    bf1:m7 | ef:7.9- | af:maj7 | s | 
    a1:m7.5- | d:7 | d:m7.5- | g:aug7 ||

    c1:m | df | af | d2:m7.5- g:aug7 | 
    c1:m | f:7 | d2:m7.5- g:aug7 | c1:m || 
}


\layout {
    \context { 
        \Staff \RemoveAllEmptyStaves 
   }
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
            \new Staff = "bass" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                <<
                    \structure
                    \bassIntro
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
            \new Staff = "bass" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                <<
                    \structure
                    \bassIntro
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
            \new Staff = "bass" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                <<
                    \structure
                    \bassIntro
                >>
                \noPageBreak
            }
        >>
    }
}
