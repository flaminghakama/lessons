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
    
    %\tempo 4=240
    \time 3/4

    \override Score.RehearsalMark #'extra-offset = #'( -4 . -2 )
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s2.*3 
        \bar "||"
        \time 4/4 
        s1 \break
        s1*4 \break
        s1*2 
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \bar "[|:" \break } 
    }
    \override Score.RehearsalMark #'extra-offset = #'( -4 . -2 )
    \startSectionNoBarline "B"
    \repeat volta 2 { 
        s1*4 \break
        s1*2 
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \break } 
    }

    \override Score.RehearsalMark #'extra-offset = #'( -3 . 3 )
    \startSection "A"
    \time 3/4
    s2.*3 
    \bar "||"
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
    ef1:maj7 | af:maj7 | g:maj7 | s || g1:maj7 | c1:maj7 ||
}
chordsForm = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsA
    gf1:maj7.11+ | s ||
    \chordsB
    \chordsA
}


melodyA = \relative c'' { 
    d2. | c | bf | af2 gf4 r8 f ~ | 
    f1 ~ | 4 r f8 af4 bf8 | f ef f2. ~ | 4 r f8 af bf ef, | 
    f1 ~ | 4 r 
}
melodyADouble = \relative c'' { 
    bf8 c4 ef16 c |
}
melodyAFirstEndingDouble = \relative c'' { 
    f1 ~ | 2  
}
melodyAFirstEnding = \relative c'' { 
    \tuplet 3/2 { r4 e ef } |
}
melodyASecondEnding = \relative c'' { 
    f1 ~ | 2. r4 || 
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

melody = {
    \accidentalStyle default
    \melodyA
    \melodyADouble
    \melodyAFirstEndingDouble
    \melodyAFirstEnding
    \melodyASecondEnding
    \melodyBridgeCommon
    \melodyBridgeFirstEnding
    \melodyBridgeSecondEnding
    \melodyA
    \melodyADouble
    \melodyASecondEnding
}

harmonyA = \relative c'' { 
    g2. | f | ef | df2 cf4 r8 af ~ | 
    af2.. bf8 ~ | 2 r2 | r d4 r8 cs ~ | 2. r4 | 
    r2 r8 c c [ df ] | r2 
}  

harmonyAFirstEnding = \relative c' { 
    f1 ~ | 2 r2 |
}

harmonyBridgeFirstEnding = \relative c' { 
    fs8 2.. ~ | 2. r4 
}
harmonyBridgeSecondEnding = \relative c' { 
    fs8 2.. | 8 b2.. || 
}
harmonyBridgeFirstEndingLeadSheet = \relative c' { 
    s8 fs2.. ~ | 2. r4 
}
harmonyBridgeSecondEndingLeadSheet = \relative c' { 
    s8 fs2.. | 8 b2.. || 
}

harmony = \relative c' { 
    \accidentalStyle default
    \harmonyA
    \transpose c c, \melodyADouble
    \harmonyAFirstEnding
    \transpose c c, \melodyASecondEnding
    \melodyBridgeCommon
    \harmonyBridgeFirstEnding
    \harmonyBridgeSecondEnding
    \harmonyA
    \transpose c c, \melodyADouble
    \transpose c c, \melodyASecondEnding    
}

lead = {
    \accidentalStyle default
    << 
        \melodyA \\
        \harmonyA
    >>
    \melodyADouble
    \melodyAFirstEndingDouble
    <<
        \melodyAFirstEnding \\
        { r2 }
    >>
    \melodyASecondEnding
    \melodyBridgeCommon
    <<
        \melodyBridgeFirstEnding \\
        \harmonyBridgeFirstEndingLeadSheet
    >>
    <<
        \melodyBridgeSecondEnding \\
        \harmonyBridgeSecondEndingLeadSheet
    >>
    << 
        \melodyA \\
        \harmonyA
    >>
    \melodyADouble
    \melodyASecondEnding
}

% \layout {
%     \context {
%         \Score
%         proportionalNotationDuration = #(ly:make-moment 1/8)
%     }
% }

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
                    \key c \major 
                    \structure
                    \lead
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "harmony-for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Harmony for Eb"
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
                    \key c \major 
                    \structure
                    \harmony
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
                    \key bf \major 
                    \structure
                    \lead
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
                    \key ef \major 
                    \structure
                    \lead
                >>
                \noPageBreak
            }
        >>
    }
}
