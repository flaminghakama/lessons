\version "2.19.81"

titleLeft = "Watch What"
titleRight = "Happens"
title = "Watch What Happens"
composerName = "M. Legrand"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

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

\include "ly/ily/layout.ily"

strcture = \relative c' { 
    \key ef \major
    \mark \markup \box "A"
    s1*4 \break
    s1*4 \bar "||" \break
    \mark \markup \box "A"
    s1*4 \break
    s1*4 \bar "||" \break
    \mark \markup \box "B"
    s1*4 \break
    s1*4 \bar "||" \break
    \mark \markup \box "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef1:maj7 | s | f:9 | s |
    f1:m9 | bf2:sus bf:13 | ef:maj7 e:maj7 | f:maj7 e:maj7 ||

    ef1:maj7 | s | f:9 | s |
    f1:m9 | bf2:sus bf:13 | ef:maj7 e:maj7 | f:maj7 gf:maj7 ||


    g1:maj7 | s | g:m7 | c:7 | 
    f1:maj7 | s | f:m7 | bf:7 ||


    ef1:maj7 | s | f:9 | s |
    f1:m9 | bf2:sus bf:13 | ef1:6 | e2:6 d:6 | 
    ef1:6 | e2:6 d:6 | ef1:6 | f2:m7 bf:7 ||
}

melodyA = \relative c'' { 
    g4. 8 2 ~ | 4 c,8 ef \tuplet 3/2 { g4 f ef } | 
    g1 | r4 c,8 ef \tuplet 3/2 { g4 f ef } | 
    g1 | \tuplet 3/2 { r4 c, ef } \tuplet 3/2 { g4 f ef } |
}
melodyB = \relative c'' { 
    b1 | r4 d,8 g  c b a g | bf4. a8 bf2 ~ | 2 a4 g |
    c,4. a'8 2 ~ | 4 c,8 f \tuplet 3/2 { a4 g f } | af1 ~ | 1 ||
}
melody = \relative c' { 
 
    \override Beam.damping = #2.75
    \override Stem.length-fraction = #(magstep 1.25)

    \melodyA    
    \relative c'' { 
        g2 gs | a gs | 
    }

    \melodyA
    \relative c'' { 
        g2 gs | a bf | 
    }

    \melodyB

    \melodyA 
    \relative c' { 
        ef2. 4 | e4 4 d8 4 ef8 ~ | 
        ef2. 4 | e4 4 d8 4 ef8 ~ | 
        ef1 ~ | 1 |
    }
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Let some -- one 
    start be -- liev -- ing in you.

    Let him hold out his hand,
    let him touch you and watch what hap -- pens.

    One some -- one
    who can look in your eyes

    and see in -- to your heart,
    Let him find you and watch what hap -- pens.

    Cold, no I won't be -- lieve you heart is cold, 
    May -- be just a -- fraid
    to be bro -- ken a -- gain.

    Let some -- one
    with a deep love to give

    Give that deep love to you
    and what ma -- gic you'll see.

    Let some -- one give his heart, 
    Some -- one who cares like me.

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \chordsForm }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { \chordsForm }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { \chordsForm }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-F-for-Eb"
    \header {
        subtitle = ""
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef d  { \chordsForm }
            \new Staff = "voice" \transpose ef, d { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}

