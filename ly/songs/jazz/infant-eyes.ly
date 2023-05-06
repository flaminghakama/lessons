\version "2.19.81"

titleLeft = "Infant "
titleRight = "Eyes"
title = "Infant Eyes"
composerName = "W. Shorter"

%{

killPreview ; rm infant-eyes*pdf ;  lilypond ly/songs/jazz/infant-eyes.ly  ; for file in infant-eyes*.pdf ; do op $file ; done  

killPreview
rm infant-eyes*pdf
lilypond ly/songs/jazz/infant-eyes.ly
mv infant-eyes*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/infant-eyes*.pdf ; do op $file ; done  

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
    
    \key bf \major 
    %\tempo 4=240

    \partial 2
    s2

    \override Score.RehearsalMark #'extra-offset = #'( -5 . 2 )
    \startSection "A"
    \bar "[|:"
    s1*4 \break
    s1*5 \break

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -1 )
    \startSection "B"
    s1*4 \break
    s1*5 \break

    \startSection "A"
    s1*4 \break
    s1*5 \break
    \bar ":|]"
}

melody = \relative c'' { 
    \accidentalStyle default
    c2 || 
    f2 ~ 8 d f g | af2. g4 | f2 ~ 8 d c bf | bf'2. f4 | 
    af2 ~ 8 bf, ef af | f2. bf,4 | df2 ~ 8 ef, gf df' | bf1 ~ | 2. gf'8 af ||

    bf2 ~ 8 g f ef | df'2. bf4 | a2 ~ 8 g f c | ef'2. bf4 | 
    df2 ~ 8 ef, af df | bf2. ef,4 | gf2 ~ 8 af, cf gf' | ef1 ~ | 2 c ||

    f2 ~ 8 d f g | af2. g4 | f2 ~ 8 d c bf | bf'2. f4 | 
    af2 ~ 8 bf, ef af | f2. bf,4 | df2 ~ 8 bf ef df | bf1 ~ | 2. r4 ||

}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s2
    g1:m7 | f:m7 | ef:maj9 | a:7.9-.13- | 
    gf1:maj9 | f:1.4.5.7 | ef:m7 | bf:1.4.5.7 | bf:7.13- ||

    ef1:maj7 | e:maj7/ef | ef:maj7.11+ | e:maj7/ef |
    cf1:maj7 | bf:1.4.5.7 | af:m7 | ef:1.4.5.7 | d:7.9- ||

    g1:m7 | f:m7 | ef:maj9 | a:7.9-.13- | 
    gf1:maj9 | f:1.4.5.7 | ef:m7 | bf:1.4.5.7 | s ||
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
        \transpose ef c <<
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
