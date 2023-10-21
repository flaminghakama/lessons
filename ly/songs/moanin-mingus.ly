\version "2.19.81"

titleLeft = "Moan"
titleRight = "in'"
title = "Moanin'"
composerName = "C. Mingus"

%{

killPreview ; rm moanin-mingus*pdf ;  lilypond ly/songs/jazz/moanin-mingus.ly  ; for file in moanin-mingus*.pdf ; do op $file ; done  

killPreview
rm moanin-mingus*pdf
lilypond ly/songs/jazz/moanin-mingus.ly
mv moanin-mingus*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/moanin-mingus*.pdf ; do op $file ; done  

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

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \key ef \major 
    \tempo 4=184
    \partial 4*1 s4 
    \startSectionNoBarline "A"
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \override Score.RehearsalMark #'extra-offset = #'( 0 . -2 )
    s1*3 | \mark "Last X Only" s1 \break
    \bar ":|]"

    \override Score.RehearsalMark #'extra-offset = #'( -8 . -2 )
    \startSectionNoBarline "Coda"
    s1*4 \break
    s1*3
    \bar "|."
}

bariLickOneInEb = \relative c' { 
    d2. \glissando a'4-. | bf,-^ r r2 |
    r8 e g4-. d'8 bf g4-. | bf,-^ r r2 |  
}
bariLickTwoInEb = \relative c' { 
    d4 8 8 f g r4 | r8 d8 8 [ 8 ] f g r d ~|
    d4 8 8 f g r4 | r8 d8 8 [ 8 ] f8 8 d d' ~ |
    d4 c8 a g f d d' ~ | 4 c8 a g f d d' ~ | 
    d4 c8 d ~ 4 c8 d ~ | 4 c8 f ef df c4 | 
}

melodyTrombone = \relative c' { 
    c1 ~ | 2. 4 ( | b1 ~ | 2 ) ef8 ( d ) ef ( d ) |
    c1 ~ | 2. 4 ( | b1 ~ | 2 ) ef8 ( d ) ef ( d ) |
    e1 | r4 f8 g ~ 8 f g ( f ) | e1 | r8 cf r af bf4. af8 ~ | 
    af1 ~ | 1 ~ | 1 ~ | 2. r4 ||
}


melody = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyB
    \melodyA
    \melodyC
    \melodyCoda
}

melodyForEb = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyB
    \melodyA
    \melodyC
    \melodyCodaForEb
}

chordsHeadInEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m7 | f:7 | e:m7.5- | a:7.9- | 
    d1:m7 | f:7 | e:m7.5- | a:7.9- | 
    d1:m7 | f:7 | e:m7.5- | a:7.5- | 
    g1:maj7 | f:7 | e:7 | a:7 | 

    d1:m7 | f:7 | e:m7.5- | a:7.9- | 
    d1:m7 | f:7 | e:m7.5- | a:7.9- | 
    d1:m7 | f:7 | e:m7.5- | a:7.5- | 
    g1:maj7 | f:7 | s | a2: d:7.9- | 

    g1:m | s | af:7 | s | 
    g1:m | s | af:7 | s | 
    g1:m | f:7 | ef:7 | d:7 | 
    g1:7 | f:7 | bf:7 | a:7 ||

    d1:m7 | f:7 | e:m7.5- | a:7.9- | 
    d1:m7 | f:7 | e:m7.5- | a:7.9- | 
    d1:m7 | f:7 | e:m7.5- | a:7.5- | 
    g1:maj7 | f:7 | e:7 | a:7 | 
}

chordsForm = \transpose c ef, chordsHeadInEb

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
        \transpose c g <<
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
        \transpose c g \transpose bf, c <<
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
        \transpose c g \transpose ef c <<
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
                    \melodyForEb
                >>
                \noPageBreak
            }
        >>
    }
}
