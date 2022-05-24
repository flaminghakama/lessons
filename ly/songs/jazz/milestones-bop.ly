\version "2.19.81"

titleLeft = "Milestones"
titleRight = ""
title = "Milestones"
composerName = "M. Davis"

%{

killPreview ; rm milestones-bop*pdf ;  lilypond ly/songs/jazz/milestones-bop.ly  ; for file in milestones-bop*.pdf ; do op $file ; done  

killPreview
rm milestones-bop*pdf
lilypond ly/songs/jazz/milestones-bop.ly
mv milestones-bop*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/milestones-bop*.pdf ; do op $file ; done  

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
    \key bf \major 
    \tempo "Bop" 4=180
    s1*4 \break
    s1*4

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \bar "[|:"

    \startSectionNoBarline "A"
    \repeat volta 2 { 
        s1*4 \break 
        s1*3
    }
    \alternative { 
        { s1 \bar ":|]" }
        { s1 \break }    
    }

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \startSection "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "A"
    s1*4 \break
    s1*4 
    \bar "|."
}

melodyIntro = \relative c' { 
    r8 c r4 g'8 e f g | af4 c8 bf ~ 4 r | 
    r8 ef, f [ g ] bf g af bf | cf4 ef8 df ~ 4 r | 
    f8 ef d c bf4 g8 gf ~ | 2. r4 |
    f4 d8 ef f4 g | bf8 af g f ef4 d |
}

melodyA = \relative c' { 
    r8 d \tuplet 3/2 { ef8 g bf } f'4 ef8 gf, ~ | 2. r8 af |
    f8 g d ef f g \tuplet 3/2 { gs8 a bf } | cf8 df4 bf8 \tuplet 3/2 { cf8 bf g } af4 |
    r8 f' \tuplet 3/2 { ef8 bf g } gf'8 ff gf ff | d4 a8 fs cs' as r4 |
    r8 d, \tuplet 3/2 { ef8 g bf } f'4 ef8 d ~ | 2 r || 
}

melodyASecondEnding = \relative c'' { 
    d2\repeatTie r ||
}

melodyB = \relative c'' { 
    cs4 r8 e a, b r c ~ | 4 \tuplet 3/2 { a8 fs d } b'4 r8 a |
    c8 d b4 a8 b g fs ~ | 4 \tuplet 3/2 { r8 d e } f8 e r d' | 
    r8 c r b r a4. | \tuplet 3/2 { gs8 b a ~ } 4 r r8 c ~ |
    c4 \tuplet 3/2 { af8 f df } \tuplet 3/2 { c'8 a bf } r8 cs ~ |
    cs4 \tuplet 3/2 { a8 fs d } \tuplet 3/2 { cs'8 d as } b4 | 
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyIntro
    \melodyA
    \melodyASecondEnding
    \melodyB
    \melodyA
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    f1:maj7 | bf2:m7 ef:7 | af1:maj7 | df2:m7 gf:7 | 
    c1:m7 | f:7.9- | bf2:maj7 ef:7 | d:m7.5- g:7.9- ||

    c1:m7 | f:7.9- | bf2:maj7 ef:7 | af:m7 df:7 |
    c2:m7 df4:m7 gf:7 | b2:m7 e:7 | c:m7 f:7 | bf:maj7 b:dim7 ||
        bf1:maj7 ||

    a1:maj7 | a2:m7 d:7 | g1:maj7 | b2:m7 e:7.9- |
    a1:m7 | d:7 | bf2:m7 ef:7 | b:m7 e:7 || 

    c1:m7 | f:7.9- | bf2:maj7 ef:7 | af:m7 df:7 |
    c2:m7 df4:m7 gf:7 | b2:m7 e:7 | c:m7 f:7 | bf1:maj7 ||
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(bop)"
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
        subtitle = "(bop)"
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
        subtitle = "(bop)"
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
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}
