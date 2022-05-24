\version "2.19.81"

titleLeft = "Broad"
titleRight = "way"
title = "Broadway"
composerName = "W. H. Bird, T McRae & H. Woode"

%{

killPreview ; rm broadway*pdf ;  lilypond ly/songs/jazz/broadway.ly  ; for file in broadway*.pdf ; do op $file ; done  

killPreview
rm broadway*pdf
lilypond ly/songs/jazz/broadway.ly
mv broadway*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/broadway*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

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

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    \key a \major 
    %\tempo 4=240
    \override Score.RehearsalMark #'extra-offset = #'( -5 . 2 )
    \startSection "A"
    s1*4 \break
    s1*4 \break

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

melodyALickOneOne = \relative c'' { 
    b8 a4. ~ 4  b8 a ~ | 4  r8 b r a b [ a  ] | 
}
melodyALickOneTwo = \relative c'' {    
    b8 a4. ~ 4  b8 a ~ | 4  r8 fs' r e cs [ a  ] | 
}
melodyALickTwo = \relative c'' { 
    cs8 e4. ~ 4  cs8 e, ~ | 4 r8 c'8 ~ 8 a b c | 
    b8 a r4 a2 | 
}
melodyAFirstEnding = \relative c'' { 
    b8 a b c r2 |
}

melodyBridge = \relative c'' { 
    e8 fs r a, ~ 4 e'8 fs | r a,4. e'8 fs4. | e8 d e d ~ 2 | R1 | 
    d8 e r g, ~ 4 d'8 e | r g,4. d'8 e4. | d8 c d c ~ 2 | cs8 b cs b r cs4. ||
}

melody = \relative c' { 
    \accidentalStyle default
    \melodyALickOneOne
    \melodyALickOneOne
    \melodyALickTwo
    \melodyAFirstEnding
    \melodyALickOneTwo
    \melodyALickOneOne
    \melodyALickTwo R1 
    \melodyBridge
    \melodyALickOneOne
    \melodyALickOneOne
    \melodyALickTwo R1 
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    a1 | s | d:7 | s | 
    b1:m7 | e:7 | a | e:7 ||

    a1 | s | d:7 | s | 
    b1:m7 | e:7 | a | a:7 ||

    e1:m7 | a:7 | d:maj7 | s | 
    d1:m7 | g:7 | c | b2:m7 e:7 ||

    a1 | s | d:7 | s | 
    b1:m7 | e:7 | a | e:7 || 
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
        >>
    }
}
