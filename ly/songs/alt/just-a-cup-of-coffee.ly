\version "2.19.81"

titleLeft = "Just a Cup"
titleRight = "of Coffee"
title = "Just a Cup of Coffee"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm just-a-cup-of-coffee*pdf
lilypond ly/songs/alt/just-a-cup-of-coffee.ly
mv just-a-cup-of-coffee*.pdf  pdf/songs/alt
for file in pdf/songs/alt/just-a-cup-of-coffee*pdf ; do open -a Preview $file ; done
mv just-a-cup-of-coffee*.midi midi

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

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
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \key d \major
    \time 4/4
    \tempo 4=56 
    \partial 4 s4 
    s1*3 \break s1 
    \bar "[|:"
    \startSectionNoBarline "A"
    s1*8
    \startSection "B"
    s1*8
    \startSection "A"
    s1*4
    \bar ":|]"
}

introChords = \chordmode {
    s4 ||
    e2:m af:maj7 | d1 | 
    e2:m af:maj7 | d1 | 
}
formChords = \chordmode {
    g2:m7.7+ c:7.11+ | f:7.9- ef:7.9- |
    e2:7 e:m | a1:7 |

    g2:m7.7+ c:7.11+ | f:7.9- ef:7.9- |
    e2:m a:7 | d:1.4.5 a:7/cs ||

    af2:m7 df:7 | bf:m7 ef:7.9- | 
    af2:m7 df:7 | gf1:maj7 | 

    f2:m7 bf:7 | ef1:maj7 | 
    b2:maj7 e:7 | d1:aug7 ||

    g2:m7.7+ c:7.11+ | f:7.9- ef:7.9- |
    e2:m af:maj7 | d1 | 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \introChords
    \formChords
}

intro = \relative c' { 
    \tuplet 3/2 { r8 d e } || \tuplet 3/2 { fs4 e d } ef8 d c bf | a2.
    \tuplet 3/2 { r8 d e } || \tuplet 3/2 { fs4 e d } ef8 d c bf | a2.    
}

head = \relative c' { 
    \tuplet 3/2 { r8 fs g } || 
    a8 fs8 4 ~ \tuplet 3/2 { 4 8 } \tuplet 3/2 { a8 g a } | fs2. \tuplet 3/2 { r8 d e } |
    fs8 b,8 4 ~ 4. a8 | e'2. \tuplet 3/2 { r8 fs e } |

    a8 fs4. ~ \tuplet 3/2 { 4 8 } \tuplet 3/2 { a8 g a } | fs2. \tuplet 3/2 { r8 d e } |
    fs8 b,8 4 ~ 4 \tuplet 3/2 { r8 d b } | e1 ||

    bf'8 4 af16 bf \tuplet 3/2 { f8 gf af } \tuplet 3/2 { bf8 ef df ~ } | 2. \tuplet 3/2 { r8 a bf } |
    \tuplet 3/2 { bf4 d, ef } f8 gf4 af16 bf | f1 |

    g4. f16 g d8 ef4 f16 g | bf8 4. ~ 4 \tuplet 3/2 { c,8 8 8 } | 
    cs16 16 8 ~ 8 ds16 es fs8 4 gs16 a | as8 4. ~ 4 \tuplet 3/2 { r8 fs g } | 

    a8 fs8 4 ~ \tuplet 3/2 { 4 8 } \tuplet 3/2 { a8 g a } | fs2. \tuplet 3/2 { r8 d e } |
    \tuplet 3/2 { fs4 e d } ef8 d c bf | a1 ||    
}

melody = \relative c' {
    \intro 
    \head
}

toplineIntro = \relative c'' {
    \tuplet 3/2 { r8 d\f e } || \tuplet 3/2 { fs4 e d } ef8 d c bf | a2.
    r4 || R1*2 ||    
}
toplineHead = \relative c'' {
    r4 \tuplet 3/2 { fs8\mp d c } bf2 | r4 \tuplet 3/2 { ff'8 ef d } df2 | 
    r4 r8 fs b,2 | r8 cs\mf e [ d ] fs e g4 | 
    r4 \tuplet 3/2 { e8\p d e } c2 | r4 \tuplet 3/2 { ef8 c ef } df2 | 
    r2 fs8\mf b,8 4 | a'8 g4 a8 e4. e32 fs g a ||

    bf4\f r r2 | \tuplet 3/2 4 { r4 g8\mp f4 g8 } ff4. r8 |
    R1 | \tuplet 3/2 4 { r4 bf8\mf gf4 bf8 } af4.\< gf16 f |
    ef4\f r r2 | r4 \tuplet 3/2 4 { g8\mp f ef c c,4 ~ } 4 |
    r8 as'8\mf 4 r8 b8 4 | r8 c16\f d c d c d c4. r8 | 

    r4 \tuplet 3/2 { r8\p fs g } a8 bf4. | r4 \tuplet 3/2 { c8 bf a } g ff4 r8 | 
    g16\mp b g8 ~ 4 af16\mf c af8 ~ 4 | a16\f cs b d  cs e d fs e2 ||
}
topline = \relative c' {
    \toplineIntro 
    \toplineHead 
    \toplineHead 
    \toplineHead 
}

midlineIntro = \relative c' {
    r4 || <b g>2\mf <c ef,> | <d fs,>1 |
    <fs d>2\p <g ef> | <d fs>2. r4 ||
}
midlineHead = \relative c' {
    <d bf>2\mp <e c> | <c a> <g' bf,> | 
    r4 <gs b,> <g e>2 | r4 <cs, a> <g' cs>2 | 

    <d bf>2 <e bf> | <c a> <df g,> | 
    r4 <g e>8 8 2 | r4 <g d>8 8 <g a,>2 || \pageBreak

    <ef gf,>8\mf 4. <f af,>4 r | <f df>8 4. <g df>4 r | 
    r2 <af cf,> | <gf bf,>8 4 8 8 4 8 | 
    <f af,>2\f r | r4 <g bf,>\mf <g ef> r | 
    <fs ds>4.\f r8  <d e,>4. r8 | r8 <fs c>4 e8 <d c>4. r8 ||

    r4 <d bf>\mf <e c>2| r4 <c a> <df bf>2 | 
    r4 <b g>\mp <af f>2 | <d fs,>2. r4 | 
}
midline = \relative c' {
    \midlineIntro 
    \midlineHead 
    \midlineHead 
    \midlineHead 
}

basslineIntro = \relative c {
    r4 || e2\f af | a8 d4 8 d,2 | 
    e8\mf b4 8 ef,8 af4 8 | d8 b'4 a8 d,2 ||
}
basslineHead = \relative c {
    g2\mp c | f ef | 
    e8 b'4 8 e,8 b'4 8 | e,8 a4 g8 e a,4. |

    g2 c | f ef | 
    e8 b'4 bf8 a4 e | d8 a'4 d,8 cs2 ||

    af4\mf cf df f | bf, df ef g | 
    af4 ef df af | gf ef' df ef | 
    f4\f c bf f | ef f g bf | 
    b4\ff fs gs e | d8 d' c d as d fs,4 ||

    g4.\mf 8 c4. 8 | f4. 8 ef8 bf4 ef8 | 
    e2\mf af | a8 d4 8 r8 d,4 8 ||
}
bassline = \relative c' {
    \basslineIntro 
    \basslineHead 
    \basslineHead 
    \basslineHead 
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
    Mm mm mmm mmm mmm mm mm mm mm mmmmm

    I could give my -- self
    if that's what you want

    I could give my -- self to you.

    In a mo -- ment, you came in -- to view
    sta -- ring back at me, 
    did you know?

    Would you want a tick -- et to To -- k -- yo?
    Would you want to share stor -- ies grow -- ing old?

    Why are we sear -- ching, what's the rea -- son?
    Are we an an -- ti -- dote to the grey skies, 
    to the sea -- son?

    I could give my -- self, 
    do I have a choice?

    Do we share the same des -- perate in -- ner voice?
}

\include "ly/ily/layout-songs.ily"

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \chordsSong 
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \structure
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
  \bookOutputSuffix "accompaniment"
    \header {
        poet = "Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \chordsSong 
                \formChords
                \formChords
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
            \new StaffGroup <<
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        << 
                            \topline \\
                            \midline
                        >>    
                    >>
                }
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \clef bass
                    <<
                        \structure
                        \bassline    
                    >>
                }
            >>
        >>
    }
}

\book {
    \bookOutputSuffix "sound"
    \score {
        <<
            \new ChordNames \transpose c c  { 
                s2. \chordsSong     
                \formChords 
                \formChords
            }
            \new Staff \transpose c c { s2. \topline }
            \new Staff \transpose c c { s2. \midline }
            \new Staff \transpose c c { s2. \bassline }
        >>
        \midi { }
    }
}



