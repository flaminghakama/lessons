\version "2.19.81"

titleLeft = "Brownie"
titleRight = "Speaks"
title = "Brownie Speaks"
composerName = "C. Brown"

%{

killPreview ; rm brownie-speaks*pdf ;  lilypond ly/songs/jazz/brownie-speaks.ly  ; for file in brownie-speaks*.pdf ; do op $file ; done  

killPreview
rm brownie-speaks*pdf
lilypond ly/songs/jazz/brownie-speaks.ly
mv brownie-speaks*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/brownie-speaks*.pdf ; do op $file ; done  

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
    \key bf \major 
    \tempo "Bop" 4=248
    \startSection "Intro"
    \bar "[|:"
    \repeat volta 2 { 
        s1*3
    }
    \alternative { 
        { s1 \bar ":|]" }
        { s1 \bar "[|:" \break }    
    }

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \startSectionNoBarline "A"
    \repeat volta 2 { 
        s1*4 \break 
        s1*3 
    }
    \alternative { 
        { s1 \bar ":|]" \break }
        { s1  }    
    }

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \startSection "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "A"
    s1*4 \break
    s1*3 |
    s4 s8 \mark "Last X Only" s8 s2 
    \bar "|."
}

melodyIntro = \relative c'' { 
    bf8 a bf c df ef f4 ~ | 4 gf8 e f ef cf a | 
    bf8 a bf df c bf gf4 ~ | 2 r || gf2\repeatTie 
}

melodyA = \relative c' { 
    r8 f8 g [ a ] ||
    bf8 f bf d  df ef f cf | bf4 \tuplet 3/2 { af8 gf f } fs8 b a f |
    bf8 f bf a af ef r4 | gf8 af bf e, f g a f | 
    bf4 c8 cs d c bf af | g f' ef gf, r f'  ef [ \grace { cs8 \slurUp ( } d8 ~ ] | 
    d4 ) bf8 g c f, r4 | 
}

melodyAForFlats = \relative c' { 
    r8 f8 g [ a ] ||
    bf8 f bf d  df ef f cf | bf4 \tuplet 3/2 { af8 gf f } gf8 cf bff f |
    bf8 f bf a af ef r4 | gf8 af bf e, f g a f | 
    bf4 c8 cs d c bf af | g f' ef gf, r f'  ef [ \grace { cs8 \slurUp ( } d8 ~ ] | 
    d4 ) bf8 g c f, r4 | 
}

melodyFirstEnding = \relative c' { 
    r2 r8 f8 g [ a ] ||
}

melodySecondEnding = \relative c' { 
    r4 r8 
    <<
        \relative c'' { af8 ~ 8 f a bf } \\
        \relative c' { e8 ~ 8 c ef d }
    >>
}

melodyThirdEnding = \relative c' { 
    r4 r8 
    <<
        \relative c'' { af8 ~ 8 f a \fermata bf }
        \relative c' { e8 ~ 8 c ef d }
    >>
}

melodyBridge = \relative c' <<
    \relative c'' { 
        \override Glissando.style = #'zigzag
        r8 b c [ bf ]  a c g fs! ~ | 4. 8 r4 f ~ | 2 \glissando cf' 8 f, r4 | R1 |
        r8 a bf [ af ]  g bf gf f | e4. 8 r4 ds ~ | 2  a'8 ds, r4 | r2 
    } \\
    \relative c'' { 
        \override Glissando.style = #'zigzag
        r8 gs a [ g ]  fs a e d ~ | 4. 8 r4 df ~ | 2  g8 df r4 | R1 | 
        r8 fs8 g [ f ]  e g d df | c4. 8 r4 b ~ | 2 \glissando fs'8 b, r4 | r2
    }
>>

melodyBridgeForFlats = \relative c' <<
    \relative c'' { 
        \override Glissando.style = #'zigzag
        r8 b c [ bf ]  a c g fs! ~ | 4. 8 r4 f ~ | 2 \glissando cf' 8 f, r4 | R1 |
        r8 a bf [ af ]  g bf gf f | e4. 8 r4 ef ~ | 2  bff'8 ef, r4 | r2 
    } \\
    \relative c'' { 
        \override Glissando.style = #'zigzag
        r8 gs a [ g ]  fs a e d ~ | 4. 8 r4 df ~ | 2  g8 df r4 | R1 | 
        r8 fs8 g [ f ]  e g d df | c4. 8 r4 cf ~ | 2 \glissando gf'8 cf, r4 | r2
    }
>>

melody = \relative c'' { 
    \accidentalStyle default
    \melodyIntro
    \melodyA
    \melodyFirstEnding
    \melodySecondEnding
    \melodyBridge
    \melodyA
    \melodyThirdEnding
}

melodyForBb = \relative c'' { 
    \accidentalStyle default
    \melodyIntro
    \melodyAForFlats
    \melodyFirstEnding
    \melodySecondEnding
    \melodyBridgeForFlats
    \melodyAForFlats
    \melodyThirdEnding
}

melodyForEb = \relative c'' { 
    \accidentalStyle default
    \transpose c c, \melodyIntro
    \melodyAForFlats
    \melodyFirstEnding
    \melodySecondEnding
    \melodyBridgeForFlats
    \melodyAForFlats
    \melodyThirdEnding
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    bf2:m df:7 | gf:maj7 f:7 | bf:m af:7 | gf2:7 f:7 || gf:7 f:7 ||

    bf2 df:7 | gf:maj7 b:7 | bf:7 af:7 | gf:7 f:7 | 
    bf1:7 | ef2 ef2:m | d:m7 g:m7 | c:m7 f:7 || c:m7 f:7 ||

    d1:7 | s | df:7.11+ | s | 
    c1:7 | s | b:7 | s | 

    bf2 df:7 | gf:maj7 b:7 | bf:7 af:7 | gf:7 f:7 | 
    bf1:7 | ef2 ef2:m | d:m7 g:m7 | c4:m7 f:7 bf2 ||
}

chordsFormForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    bf2:m df:7 | gf:maj7 f:7 | bf:m af:7 | gf2:7 f:7 || gf:7 f:7 ||

    bf2 df:7 | gf:maj7 cf:7 | bf:7 af:7 | gf:7 f:7 | 
    bf1:7 | ef2 ef2:m | d:m7 g:m7 | c:m7 f:7 || c:m7 f:7 ||

    d1:7 | s | df:7.11+ | s | 
    c1:7 | s | cf:7 | s | 

    bf2 df:7 | gf:maj7 cf:7 | bf:7 af:7 | gf:7 f:7 | 
    bf1:7 | ef2 ef2:m | d:m7 g:m7 | c4:m7 f:7 bf2 ||
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

