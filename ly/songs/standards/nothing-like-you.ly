\version "2.24.0"

titleLeft = "Nothing"
titleRight = "Like You"
titleFull = "Nothing Like You"
composerName = "B. Dorough"
lyricistName = "F. Landesman"
arranger = ""
copyright = ""

%{

killPreview ; rm nothing-like-you*pdf ; lilypond ly/songs/standards/nothing-like-you.ly ; for file in nothing-like-you*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/nothing-like-you*
lilypond ly/songs/standards/nothing-like-you.ly 
mv nothing-like-you*pdf pdf/songs/standards
mv nothing-like-you*midi midi
for file in pdf/songs/standards/nothing-like-you*pdf ; do op $file ; done 


git add . ; git commit -m"fixing lyric" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.padding = #2

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

    \tempo 4=228
    \key bf \major
    \time 4/4

    \partial 8 
    s8

    \startSection "C1"
    s1*8

    \startSection "V1"
    s1*8

    \startSection "B1"
    s1*8

    \startSection "P1"
    s1*8

    \startSection "C2"
    s1*8

    \startSection "V2"
    s1*8

    \startSection "B2"
    s1*8

    \startSection "P2"
    s1*4

    \startSection "C3"
    s1*12

    \startSection "P3"
    s1*16

    \startSection "B3"
    s1*8

    \startSection "C4"
    s1*12

    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 4 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT

    s8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0.2 )
    % "Chorus 1"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Verse 1"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Bridge 1"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Pre-chorus 1"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Chorus 2"
    s1*4 
    \pageBreak 
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Verse 2"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Bridge 2"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Pre-chorus 2"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Chorus 3"
    s1*4 \break
    s1*4 \break
    s1*4 

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Pre-chorus 3"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Bridge 3"
    s1*4 \break 
    s1*4 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( -1.5 . 0.2 )
    % "Chorus 4"
    s1*4 \break 
    s1*4 \break 
    s1*4 
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForSound = \relative c' { 

    \tempo 4=230
 
    s8

    % "C1"
    s1*8

    % "V1"
    s1*8

    \tempo 4=230
    % "B1"
    s1*8

    % "P1"
    s1*8

    % "C2"
    s1*8

    \tempo 4=230
    % "V2"
    s1*8

    \tempo 4=232
    % "B2"
    s1*8

    \tempo 4=231
    % "P2"
    s1*4

    % "C3"
    s1*12

    % "P3"
    s1*16

    % "B3"
    s1*8

    % "C4"
    s1*12

    \bar "||"
}



chordsChorus = \chordmode { 
    f1:7 | s | ef:m | s | 
    af:7.9- | s | df | s ||
}
chordsChorusThree = \chordmode { 
    f1:7 | s | ef:m7 | ef:m7.5-  | 
    bf1:maj13 | a:maj13 | af1:maj13 | g:maj13 |
    bf1:m7 | ef:m7.13- | bf:maj7.11+ | s ||
}

chordsVerse = \chordmode { 
    bf1:m7.13- | s | s | s | 
    df1:m | s | b:13 | gs:m7 ||
}

chordsBridge = \chordmode { 
    af1 | a | af | g |
    g1 | af | g | b:aug7 ||
}

chordsPrechorusOne = \chordmode { 
    df1 | d | s | ef | 
    af1:13 | d:6.9 | a:7 | d:7 |  
}
chordsPrechorusTwo = \chordmode { 
    df1 | d | s | ef | 
}
chordsPrechorusThree = \chordmode { 
    d1 | ef | s | e | 
    ef | e | s | ef | 
    d1 | ef | s | e | 
    ef | e | s | ef |  
}



chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s8

    \chordsChorus
    \chordsVerse
    \chordsBridge
    \chordsPrechorusOne

    \chordsChorus
    \chordsVerse
    \chordsBridge
    \chordsPrechorusTwo

    \chordsChorusThree
    \chordsPrechorusThree
    \chordsBridge

    \chordsChorusThree
}

melodyChorusOne = \relative c' { 
    d8 ~ || 8 ef f g ~ 8 a4 bf8 ~ | 8 c df c ~ 4 bf8 af ~ | 
    af1 | r2  af8 f af4 | 
    gf2 r4 af8 a ~ | 8 af4 gf8 af4 gf | 
    f1 |
}
melodyVerseOne = \relative c' { 
    f8 bf,8 4 4 c | df8 c bf4 r2 |
    f'8 bf,8 4 4 c | df2 r2 |
    r8 af' df,8 [ 8 ]  4  ef8 ff ~ | 8 ef df4 ~ 4 f8 fs ~ | 
    fs8 4 b,8 ~ 8 4 cs8 | ds1 |    
}
melodyBridgeOne = \relative c'' { 
    r4 c ef, c' | cs2 r |
    r4 r8 bf  c ef, c'4 | b a8 d, ~ 4 r | 
    r4 b' d, b' | c2 r  |
    r4 r8 as  b d, b'4 | a4 g8 d r2
}
melodyPrechorusOne = \relative c' { 
    df4 8 8 4 4 | d4 r r r8 d ~ | 
    d8 4 8 4 4 | ef4 r r2 |
    ef8 8 4 4 8 e ~ | 8 8 4 4 4 |
    e2. r8 f ~ | 8 8 4 4 r8 
}

melodyVerseTwo = \relative c' { 
    f8 | r bf,4 8  4 c | df8 c bf4 r r8 f' |
    r8 bf,4 8 4 c | df2 r4 r8 af' ~ |
    4 df,8 8  4 ef | ff8 ef df4  r f8 fs ~ | 
    fs8 b,4.  4 cs8 ds ~ | 2. r4 |    
}
melodyBridgeTwo = \relative c'' { 
    r4 c ef, c' | cs2 r |
    r4 bf8 c ~ 8 af c4 | b a d,2 | 
    r4 b' d, b' | c2 r |
    r4 as8 b ~ 8 d, b'4 | a4 g8 d ~ 4 r8   
}
melodyPrechorusTwo = \relative c' { 
    df8 ~ || 4 8 8 4 4 | d4 r r r8 d | 
    r8 d r d ~ 4 8 8 | ef4 r r r8 
}

melodyChorusThree = \relative c' { 
    d8 ~ || 8 ef f g ~ 8 a4 bf8 ~ | 8 c df c ~ 4 bf8 ef ~ | 
    ef1 ~ | 2. r4 |

    r4 d g, d' | cs2. r4 |
    r4 c f, c' | b2. r8 bf ~ | 
    bf8 8 4 4 8 8 ~ | 8 8 4 df cf | 
    bf1 | R1 | 
}
melodyPrechorusThree = \relative c' { 
    d4 8 8 4 4 | ef4 r r r8 ef ~| 
    ef8 4 8 4 4 | e4 r r d8 ef ~ | 
    8 8 4 4 8 e ~ | 8 8 4 4 4 | 
    e1 | r2 r8 d4. | 

    d4 8 8 4 4 | ef2 r4 r8 ef ~ | 
    ef8 bf4 g8 ~ 8 ef'4 c8 | e2 r | 
    ef8 8 4 4 8 e ~ | 8 8 4 4 4 | 
    e1 | 
}

melodyBridgeThree = \relative c'' { 
    r4 g f g || ef2. r4 |
    r8 ef f [ gf ]  af gf f gf | ff4 ef2. | 
    r4 e d e | df2. r4 | 
    r8 ef ff [ gf ]  g f ef f | 
    ef4 d2. | r2 r4 r8  

}

melodyChorusFour = \relative c' { 
    d8 ~ || 8 ef f g ~ 8 a4 af8 ~ | 8 bf c bf ~ 4 af8 ef' ~ | 
    ef1 ~ | 2. r4 |

    r4 d g, d' | df2. r4 |
    r4 c f, c' | b2. r8 bf ~ | 
    bf8 8 4 4 8 8 ~ | 8 8 4 df4. cf8 | 
    a1 ~ | 1 ||
}


melody = \relative c'' { 
    \accidentalStyle modern
    \melodyChorusOne | R1 |
    \melodyVerseOne
    \melodyBridgeOne
    \melodyPrechorusOne

    \melodyChorusOne | r2 r4 r8 
    \melodyVerseTwo
    \melodyBridgeTwo
    \melodyPrechorusTwo

    \melodyChorusThree
    \melodyPrechorusThree
    \melodyBridgeThree

    \melodyChorusFour
}

melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    No -- thing like you has ev -- er been seen be -- fore!
    No -- thing like you, ex -- is -- ted in days of yore

    Nev -- er were lips so kiss -- a -- ble, nev -- er were eyes so bright
    I can't be -- lieve it's pos -- si -- ble that you bring me such de -- light

    No -- thing can match the rap -- ture of your em -- brace
    No -- thing can catch the ma -- gic that's in your face

    You're like a dream come true, some -- thing com -- plete -- ly new
    No -- thing like you has ev -- er been seen be -- fore
    No -- thing like you

    No -- thing like you has ev -- er been mine be -- fore!
    Kiss -- es I've known, but none so di -- vine be -- fore

    No one has your mag -- ni -- fi -- cence, who can de -- scribe your charms
    I'd like to make my re -- si -- dence for -- ev -- er in your arms

    I nev -- er knew how won -- der -- ful life could be
    No one but you could ev -- er do this to me

    Call me a fool in love, one thing I'm cer -- tain of:

    No -- thing like you has ev -- er been seen be -- fore!
    No -- thing like you
    No -- thing like you
    No -- thing like you has ev -- er been seen be -- fore!

    You're like a dream come true, some -- thing com -- plete -- ly new
    ah No -- thing like you has ev -- er been seen be -- fore!
    Just call me a fool in love
    One thing I'm cer -- tain of 
    No -- thing like you has ev -- er been seen be -- fore!

    No -- thing like you
    You're all I ev -- er dreamed and wan -- ted 
    No -- thing like you
    I nev -- er knew that you ex -- is -- ted  

    No -- thing like you has ev -- er been seen be -- fore!
    No -- thing like you
    No -- thing like you
    No -- thing like you has ev -- er been seen be -- fore!
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Eb-for-C"
    \header {
        subtitle = "(original key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "Sound"
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                <<
                    \structure
                    \rehearsalMarkTweaksForSound
                    \melody
                >>
            }
        >>
        \midi {}
    }
}

