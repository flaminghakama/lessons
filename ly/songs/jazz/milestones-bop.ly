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
    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )

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

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    \startSection "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
    \startSection "A"
    s1*4 \break
    s1*4 
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    s1*8

    \once \override Score.RehearsalMark #'extra-offset = #'( -7 . -3 )
    % "A"
    s1*9

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    % "B"
    s1*8 \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
    % "A"
}

rehearsalMarkTweaksForBb = \relative c' { 
    s1*8

    \once \override Score.RehearsalMark #'extra-offset = #'( -4 . -2 )
    % "A"
    s1*9

    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    % "B"
    s1*8 \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    % "A"
}

rehearsalMarkTweaksForEb = \relative c' { 
    s1*8

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
    % "A"
    s1*9

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    % "B"
    s1*8 \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    % "A"
}

melodyIntro = \relative c' { 
    r8 c d [ e ] g8 e f g | af8 c4 bf8 ~ 4 r | 
    r8 ef, f [ g ] bf g af bf | cf8 ef4 df8 ~ 4 r | 
    f8 ef d c bf4 g8 gf ~ | 2 r |
    f4 d8 ef f4 g | bf8 af g f ef4 d |
}

melodyA = \relative c' { 
    r8 d \tuplet 3/2 { ef8 g bf } f'8 ef4 gf,8 ~ | 2 r4 r8 af |
    f8 g d ef f g \tuplet 3/2 { gs8 a bf } | cf8 df4 bf8 \tuplet 3/2 { cf8 bf g } af4 |
    r8 f' \tuplet 3/2 { ef8 bf g } gf'8 ff gf ff | d4 \tuplet 3/2 { a8 fs d } cs'8 as r4 |
    r8 d, \tuplet 3/2 { ef8 g bf } f'8 ef4 d8 ~ | 2 r || 
}

melodyASecondEnding = \relative c'' { 
    d2\repeatTie r ||
}

melodyB = \relative c'' { 
    cs4. e8 a, b4 c8 ~ | 4 \tuplet 3/2 { a8 fs d } b'4 r8 a |
    c8 d b4 a8 b g fs ~ | 4 \tuplet 3/2 { b,8 d e } f8 e r4 | 
    d'8 c r b r a4. | \tuplet 3/2 { gs8 b a ~ } 4 r2 |
    c4 \tuplet 3/2 { af8 f df } r8 a' bf4 |
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
                    \rehearsalMarkTweaksForEb
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}
