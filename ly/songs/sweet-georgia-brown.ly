\version "2.19.83"

titleLeft = "Sweet Geor"
titleRight = "gia Brown"
title = "Sweet Georgia Brown"
composerName = " B. Bernie & M. Pinkard"
lyricistName = "K. Casey"

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
    \key f \major
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | s | s | s | 
    g1:7 | s | s | s | 
    c1:7 | s | s | s | 
    f1:7 | c:aug7 | f:7 | e2:m7 a:7 | 

    d1:7 | s | s | s | 
    g1:7 | s | s | s | 
    d1:m7 | a:7 | d:m7 | a:7 | 
    f2 e:7 | ef:7 d:7 | g:7 c:7 | f:7 e4:7 ef:7 ||
}

melodyA = \relative c' { 
    d4 e fs4. d8 | a'8 fs4 b8 ~ 4 a | d2 a8 fs4 d8 ~ | 2. r4 | 
    d4 e f4. ( d8 ) | a'8 f4 b8 ~ 4 a | d2 b8 a4 g8 ~ | 2. r4 | 
    c,4 d e4. c8 | g'8 e4 a8 ~ 4 g | c2 g8 e4 c8 ~ | 4  8 d ~ 8 c d4 | 
    a'1 ~ | 4  c,8 d ~ 8 c d4 | a'4. 8 ~ 2 | g4. a8 ~ 2 | 
}
melodyB = \relative c' { 
    d4 e fs4. d8 | a'8 fs4 b8 ~ 4 a | d2 a8 fs4 d8 ~ | 2. r4 | 
    d4 e f4. d8 | a'8 f4 b8 ~ 4 a | d2 b8 a4 g8 ( ~ | 2 a ) | 
    a4. 8 ~ 2 | g8 e4 a8 ~ 2 | r8 a4 8 4 4 | g8 e4 a8 ~ 2 |
    c,8 d4 f8 ~ 8 a4 c8 ( ~ | 8 a ) cs d ~ 4 a | g2 c8 a4 f8 ~ | 2 r 
}
melodyForm = \relative c' { 
    \melodyA
    \melodyB
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    No gal made has got a shade
    on Sweet Geor -- gia Brown,

    Two left feet, oh, so neat,
    has Sweet Geor -- gia Brown!

    They all sigh, and want to die,
    for Sweet Geor -- gia Brown!

    I'll tell you just why,
    you know i don't l -- ie, not much:


    It's been said she knocks 'em dead,
    when she lands in town!

    Since she came, why it's a shame,
    how she cools them down!

    Fel -- las she can't get
    must be fel -- las she ain't met!

    Geor -- gia claimed her, Geor -- gia named her,
    Sweet Geor -- gia Brown!

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
