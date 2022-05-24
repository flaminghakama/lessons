\version "2.19.81"

titleLeft = "Little Miss"
titleRight = "Laurie"
title = "Little Miss Laurie"
composerName = "H. Franklin"

%{

killPreview ; rm little-miss-laurie*pdf ;  lilypond ly/songs/jazz/little-miss-laurie.ly  ; for file in little-miss-laurie*.pdf ; do op $file ; done  

killPreview
rm little-miss-laurie*pdf
lilypond ly/songs/jazz/little-miss-laurie.ly
mv little-miss-laurie*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/little-miss-laurie*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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
    \key f \major 
    \tempo "Bossa"  
    
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \startSection "A"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 

    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*6 
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \override Score.RehearsalMark #'extra-offset = #'( -4 . 2 )
    s1*16  
    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
}

rehearsalMarkTweaksForBb = \relative c' { 
    \override Score.RehearsalMark #'extra-offset = #'( -4 . 2 )
    s1*16  
    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
}

rehearsalMarkTweaksForEb = \relative c' { 
    \override Score.RehearsalMark #'extra-offset = #'( -4 . 2 )
    s1*16  
    \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
}

melodyA = \relative c' { 
    d2 ~ 8 e4 f8 | a4. g8 fs4 g | c2. a4 | e2. ef4 | 
    d2 ~ 8 e4 f8 | a4. g8 fs4 g | d'2. c4 | e,2. ef4 | 
    d2 ~ 8 e4 f8 | a4. g8 fs4 g | c2 ~ 8 a4 f8 ~ | 2. c'4 | 
}

melodyFirstEnding = \relative c'' { 
    d2. bf4 | gs2 ~ 8 b d f | e2 ~ 8 a, c d | ef8 f4 d8 ~ 2 |
}

melodySecondEnding = \relative c'' { 
    d2 ~ 8 a4 g16 f | g2. d4 | 
    fs4. 8 ~ 4 4 ~ | 8 4. 4 4 |
    f4. 8 ~ 4 4 ~ | 8 4. 4 4 |
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyFirstEnding
    \melodyA
    \melodySecondEnding
}

chordsCommon = \chordmode { 
    g1:m7 | c:7 | a:m7 | d:7.9- | 
    g1:m7 | c:7 | a:m7 | d:7.9- | 
    g1:m7 | c:7 | a:m7 | d:m7 | 

}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    \chordsCommon
    b1:m7 | e:7.9- | a:m7 | d:7.9- |
    \chordsCommon
    g1:m7 | c:7 | b | s | f | s |
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
            \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
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
            \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
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
            \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}
