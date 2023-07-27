\version "2.19.81"

titleLeft = "Escon"
titleRight = "dido"
title = "Escondido"
composerName = "B. Maupin"

%{

killPreview ; rm escondido*pdf ;  lilypond ly/songs/jazz/escondido.ly  ; for file in escondido*.pdf ; do op $file ; done  

killPreview
rm escondido*pdf
lilypond ly/songs/jazz/escondido.ly
mv escondido*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/escondido*.pdf ; do op $file ; done  

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
  system-system-spacing.basic-distance = #14

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

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \key f \minor 
    \once \override Score.MetronomeMark #'extra-offset = #'( -3 . 1 )
    \tempo 4=80 
    \bar "[|:"
    s1*2 \break
    s1*2 \break
    s1*2 \break
    s1*2 
    \bar ":|]"
}

melodyA = \relative c' { 
    f8. 16 ~ 16 g8 af16 ~ 2 | 
    r4 r16 g8 bf16 ~ 16 af8 g16 ~ 16 f8 e16 ~ | 

    e8. 16 ~ 16 f8 g16 ~ 2 | 
    R1 | 

    ef16 [ ef r ef ~ ] 16 f8 gf16 ~ 4 r8. f16 | 
    af2 ~ 8. f16  ef8. df16 | 

    c1 | 
    R1 ||
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyA
}

basslineA = \relative c { 
    f8 df'16 f,  c'4  r4 r16 f, c' f, |
    df'8. f,16  c'16 [ f, r df' ]  r16 [ f, r c' ]  f,8 c'16 f, |

    e8 df'16 e,  c'4  r4 r16 e, c' e, |
    df'8. e,16  c'16 [ e, r df' ]  r16 [ e, r c' ]  e,8 c'16 e, |

    ef8 df'16 ef,  c'4  r4 r16 ef, c' ef, |
    df'8. ef,16  c'16 [ ef, r df' ]  r16 [ ef, r c' ]  ef,8 c'16 ef, |

    df8 c'16 df,  c'4  r8. df,16  c'16 [ df, r bf ~ ] |
    bf8 df'16 bf,  c'8. c,16 ~ 8 df'16 c,  c'8. 16 ||
}

bassline = \relative c'' { 
    \accidentalStyle default
    \basslineA
}


chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    f1:m9.13- | s | 
    e1:1.3.5+.7+.8+.9+ | s | 
    ef1:m9 | s | 
    df1:maj7 | bf2:m9 c:7.9-.13- ||
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
        \new StaffGroup \transpose c c <<
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                <<
                    \structure
                    \bassline
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
        \new StaffGroup \transpose bf, c <<
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \transpose c, c \bassline
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
        \new StaffGroup \transpose ef, c <<
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \transpose c, c \bassline
                >>
                \noPageBreak
            }
        >>
    }
}
