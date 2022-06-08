\version "2.19.81"

titleLeft = "Dig"
titleRight = ""
title = "Dig"
composerName = "C. Brown"

%{

killPreview ; rm dig*pdf ;  lilypond ly/songs/jazz/dig.ly  ; for file in dig*.pdf ; do op $file ; done  

killPreview
rm dig*pdf
lilypond ly/songs/jazz/dig.ly
mv dig*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/dig*.pdf ; do op $file ; done  

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
    \key af \major 
    \tempo "Bop" 4=240

    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -4 . 0 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    f1:7 | s | s | s | 
    bf1:7 | s | s | s | 
    ef1:7 | s | s | s | 
    af | bf2:m7 ef:7 | af1 | g2:7 gf:7 ||

    f1:7 | s | s | s | 
    bf1:7 | s | s | c:7 | 
    f1:m | c:7 | f:m | ef:7 
    af2 g:7 | gf:7 f:7 | bf2:m7 ef:7 | af1||

}

chordsFormForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsForm
}

melodyCommon = \relative c' { 
    f2 ~ 8 c r d | ef4 8 8 r d c [ a ] | b d c bf f' d ef c | r2 r8 af' r af | 
    r8 c, r d r ef r g | r f ef [ c ] d bf r4 | f'8 af g f bf g af f | r2 r4 r8 c |
}
melodyA = \relative c' { 
    \melodyCommon
    df8 c df ef f df c bf | ef df c bf a4 c ~ | 4. f16 af c8 ef df a ~ | 2. bf4 | 
    <>\xmf \comp #16
}
melodyB = \relative c' { 
    \melodyCommon
    \tuplet 3/2 { f8 g f } c8 f af g f ef | e g, bf df c4 bf8 af ~ |
    af4. c16 ef g8 f r4 | r2 r8 ef' r ef | 

    r8 df r c r bf r a | r c r gf r f r4 | 
    r8 c \tuplet 3/2 { df8 f af } c4 g8 af | R1 |
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyB
}

melodyForBb = \relative c'' { 
    \accidentalStyle default
    \melody
}

melodyForEb = \relative c'' { 
    \accidentalStyle default
    \melody
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
                \chordsFormForFlats
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForBb
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
                \chordsFormForFlats
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

