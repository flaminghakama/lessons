\version "2.19.81"

titleLeft = "Bernie's"
titleRight = "Tune"
title = "Bernie's Tune"
composerName = "B. Miller"
lyricistName = "M. Stoller & J. Lieber"

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
    \key d \minor
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m | s | bf:7.11+ | s | 
    e1:m7.5- | a:7 | d:m | e2:m7.5- a:7 | 
    d1:m | s | bf:7.11+ | s |  
    e1:m7.5- | a:7 | d:m | s | 
    bf2 g:7 | c:m7 f:7 | bf g:7 | c:m7 f:7 | 
    bf2 g:7 | c:m7 f:7 | bf1| e2:m7.5- a:7 | 
    d1:m | s | bf:7.11+ | s |  
    e1:m7.5- | a:7 | d:m | s | 
}

melodyA = \relative c'' { 
    r8 a r gs a4 r8 a | r gs a4 a,8 d f a | af2 ( ~ 4. e8 ~ | 1 ) |  
    r8 g r fs g4 r8 g | r fs g4 a,8 cs e g | f2 ( ~ 4. d8 ~ | 1 ) | 
}
melodyB = \relative c' { 
    bf4 4 g'8 f4 d8 | c4. d8 ~ 2 | 
    bf4 4 g'8 f4 d8 | c1| 
    bf4 4 g'8 f4 d8 | c4. d8 ~ 2 | 
    r8 a'4 8 2 ( ~ | 8 g f e cs2 ) | 
}
melodyForm = \relative c' { 
    \melodyA
    \melodyA
    \melodyB
    \melodyA
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    In the park, in the dark, un -- er -- neath the moon.
    Heard a boy and a girl hum -- min' Ber -- nie's Tune.

    Went to sleep, count -- in' sheep, by a blue la -- goon.
    Heard a frog, on a log, croak -- in' Ber -- nie's Tune.

    It's so ea -- sy to whist -- le, 
    It's so ea -- sy to sing.
    E -- ven hum -- ming birds hum it, 
    it's the thing.

    Of -- fice clerks, so -- da jerks picked it up so soon.
    Mil -- lion -- aires, e -- ven squares, whist - le Ber -- nie's Tune.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Hark the lark, in the park, cra -- zy as a loon.
    In a tree, skill -- ful -- ly sing -- in' Ber -- nie's Tune.

    Lit -- tle kids go to school sing-- in' Ber -- nie's Tune.
    Gurg -- lin' brooks, bub -- lin pools, bab -- ble Ber -- nie's Tune.

    You don't have to read mu -- sic
    you don't have to be smart.
    Ber -- nie said you can sing it, 
    from the heart.

    So if you hap -- pen to get the urge to croon,
    Take a tip, man get hip, make it Ber -- nie's Tune.
}


\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
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
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
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
                    \melodyForm
                >>
            }
        >>
    }
}
