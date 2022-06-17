\version "2.19.81"

titleLeft = "On The"
titleRight = "Quee-Tee"
title = "On The Quee-Tee"
composerName = "F. Hubbard"

%{

killPreview ; rm on-the-quee-tee*pdf ;  lilypond ly/songs/jazz/on-the-quee-tee.ly  ; for file in on-the-quee-tee*.pdf ; do op $file ; done  

killPreview
rm on-the-quee-tee*pdf
lilypond ly/songs/jazz/on-the-quee-tee.ly
mv on-the-quee-tee*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/on-the-quee-tee*.pdf ; do op $file ; done  

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
    
    \key c \major 
    %\tempo 4=240
    \time 3/4

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -1 )
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s2.*3 
        \time 4/4 
        s1 \break
        s1*4 \break
        s1*2 
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \bar "[|:" \break } 
    }
    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSectionNoBarline "B"
    \repeat volta 2 { 
        s1*4 \break
        s1*2 
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \break } 
    }

    \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
    \startSection "A"
    \time 3/4
    s2.*3 
    \time 4/4 
    s1 \break
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsA= \chordmode { 
    c2.:m9 | bf:m9 | af:m9 | gf2:m9 b:7 | 
    ef1:m9 | e:7.5- | af:7 | a:7 | 
    d1:7 | g:7 | gf:maj7.11+ | s ||
}
chordsB = \chordmode { 
    g1:maj7 | c:maj7 | f:maj7 | bf:maj7 | 
    ef1:maj7 | af:maj7 | g:maj7 | s || g:maj7 | c1:maj7 ||
}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsA
    gf1:maj7.11+ | s ||
    \chordsB
    \chordsA
}


melodyA = \relative c'' { 
    d2. | c | bf | af2 gf4 r8 f ~ | 
    f1 ~ | 2 f8 af r bf | f ef f2. ~ | 2 f8 af bf ef, | 
    f1 | r2 bf8 c r f16 c |
}
melodyAFirstEnding = \relative c'' { 
    f1 ~ | 2 \tuplet 3/2 { r4 e ef } |
}
melodyASecondEnding = \relative c'' { 
    f1 ~ | 2. r4 |
}

melodyBridgeCommon = \relative c'' { 
    fs4. e8 fs e cs b ~ | 4. 8 ~ 4 a | 
    e'4. d8 e d b a ~ | 4. 8 ~ 4 g | 
    d'4. c8 d c a g ~ | 4. 8 ~ 4. 8 | 
}
melodyBridgeFirstEnding = \relative c' { 
    fs8 b2.. ~ | 2. r4 
}
melodyBridgeSecondEnding = \relative c' { 
    fs8 b2.. | b8 e2.. || 
}

melody = \relative c' { 
    \accidentalStyle default
    \melodyA
    \melodyAFirstEnding
    \melodyASecondEnding
    \melodyBridgeCommon
    \melodyBridgeFirstEnding
    \melodyBridgeSecondEnding
    \melodyA
    \melodyASecondEnding    
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
