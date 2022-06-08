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
    \tempo "Bossa" 4=148
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

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4. | 
    c2:m7 f:7 | bf:m7 ef:7 | af:m7 df:7 | g1:aug7.9+ 

    c1:m | df | af | d2:m7.5- g:aug7 | 
    c1:m | f:7 | d:m7.5- | g:aug7 || 

    c1:m | df | af | d2:m7.5- g:aug7 | 
    c1:m | f:7 | d2:m7.5- g:aug7 | c1:m || 

    bf1:m9 | a:9/ef | af:6 | s | 
    a1:m7.5- | d:7 | d:m7.5- | g:aug7 ||

    c1:m | df | af | d2:m7.5- g:aug7 | 
    c1:m | f:7 | d2:m7.5- g:aug7 | c1:m || 
}



bassIntro = \relative c { 
    r8 r4 || c4 r8 f8 ~ 4 r | bf,4 r8 ef8 ~ 4 r | af,4 r8 df8 ~ 4 r | g,2 r8
}

melodyIntro = \relative c'' { 
    g8 c [ d ] ||
    ef8 d c ef ~ 4 d8 c | df8 c bf df ~ 4 c8 bf | 
    cf8 bf af cf ~ 8 df4. \glissando | bf2 r8 
}
harmonyIntro = \relative c'' { 
    s4. ||
    g8 f ef g ~ 4 s | f8 ef df f ~ 4 s | 
    ef8 df cf ef ~ 4 r | f2 s8 
}

melodyA = \relative c' { 
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    ef4. \glissando ||
    c2 ~ 8 ef g c | r c r c  r bf g [ f  ]~ | 
    f2 g8 ef c f ~ | 2 ef8 c8 8 8 ~ | 
    c1 ~ | 2     
}
harmonyA = \relative c' { 
    s4. ||
    s2 s4 s8 df | r f r g  r f ef [ c ] ~ | 
    c2 s4 s8 b ~ | 2 s | 
    r2 c8 g gs a ~ | 2 
}

melodyAFirstEnding = \relative c' { 
    ef8 c c f ~ | 2 ~ 8 ef c g' | r2 r8 
}
harmonyAFirstEnding = \relative c' { 
    s4 s8 c ~ | 2.. b8 |  r2 r8
}

melodyASecondEnding = \relative c' {     
    ef8 c c c ~ | 1 ~ | 2  
}
harmonyASecondEnding = \relative c' {     
    s2 | r4 af bf4. g8 ~ | 2 
}

melodyB = \relative c' { 
    r4 f || 
    c'2 ~ 8 bf ef bf | e,2 8 b'4 e,8 | 
    ef1 ~ | 2 r8 c'4 d8 | 

    \tuplet 3/2 { ef4 d c } ef2 ~ | 2 f \glissando | 
    d1 | r2 r8 
}
harmonyB = \relative c' { 
    r4 s ||
    s1 | s | 
    r8 f r f ef4. f8 | r f ef4 s2 |

    ef2 g | fs1 | 
    f1 | r2 r8
}

melodyAThirdEnding = \relative c' { 
    ef8 c c c ~ | 1 ~ | 2 r || 
}
harmonyAThirdEnding = \relative c' {     
    s2 | r4 af bf4. g8 ~ | 2 r 
}

melody = \relative c'' { 
    <<
        {
            \melodyIntro 
            \melodyA 
            \melodyAFirstEnding
            \melodyA    
            \melodyASecondEnding
            \melodyB
            \melodyA 
            \melodyAThirdEnding
        } \\ {
            \harmonyIntro
            \harmonyA 
            \harmonyAFirstEnding
            \harmonyA    
            \harmonyASecondEnding
            \harmonyB
            \harmonyA 
            \harmonyAThirdEnding
        }
    >>    
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
            \new Staff = "lead" \with {
                \consists "Merge_rests_engraver"
            } \keepWithTag #'(C) \transpose c c {
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
