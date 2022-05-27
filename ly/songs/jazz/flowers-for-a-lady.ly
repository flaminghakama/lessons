\version "2.19.81"

titleLeft = "Flowers For"
titleRight = "A Lady"
title = "Flowers For A Lady"
composerName = "G. Adams"

%{

killPreview ; rm flowers-for-a-lady*pdf ;  lilypond ly/songs/jazz/flowers-for-a-lady.ly  ; for file in flowers-for-a-lady*.pdf ; do op $file ; done  

killPreview
rm flowers-for-a-lady*pdf
lilypond ly/songs/jazz/flowers-for-a-lady.ly
mv flowers-for-a-lady*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/flowers-for-a-lady*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #10

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #20

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
    
    \key ef \major 
    \tempo 4=176

    s1*4 \break
    s1*4 \break

    \startSection ""
    s1*6 \break

    \startSection ""
    s1*4 \break
    s1*4 \break
    \bar "|."
}

melodyA = \relative c'' { 
    d8 ef d c ~ 4 bf8 a | bf a f a g f c a' | 
    g2. r8 d | ef g bf d r f d4 |
}

melodyBUpper = \relative c'' { 
    e4. d8 e4. d8 | e4. g8 e4. c8 | 
    d1 ~ | 2.. 8 | 
    cs1 ~ | 2. r4
}
melodyBLower = \relative c'' { 
    b4. a8 b4. a8 | b4. d8 b4. g8 | 
    a1 ~ | 2.. 8 | 
    gs1 ~ | 2. r4
}

melodyC = \relative c' { 
    cs8 as16 b cs8 d fs a r cs | r e cs2.\trill |
    r8 gs \tuplet 3/2 { a8 cs e } gs8 e r cs ~ | 1\trill |
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyA
    <<
        \melodyBUpper \\
        \melodyBLower
    >> 
    \melodyC
    \melodyC
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1:m | f:7 | ef:maj7 | s | 
    g1:m | f:7 | ef:maj7 | s | 
    c1:maj7 | s | bf:maj7 | s | a:maj7 | s | 
    b1:m7/e | cs:m7/e | d:maj7/e | cs:m7/e | 
    b1:m7/e | cs:m7/e | d:maj7/e | cs:m7/e | 
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
