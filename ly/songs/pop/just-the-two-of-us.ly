\version "2.19.83"

titleLeft = "Just The"
titleRight = "Two Of Us"
title = "Just The Two Of Us"
composerName = "B. Withers & G. Washington, Jr."
lyricistName = "B. Withers & G. Washington, Jr."

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm just-the-two-of-us*pdf ; lilypond ly/songs/pop/just-the-two-of-us.ly ; for file in just-the-two-of-us*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/just-the-two-of-us*
lilypond ly/songs/pop/just-the-two-of-us.ly 
mv just-the-two-of-us*pdf pdf/songs/pop
for file in pdf/songs/pop/just-the-two-of-us*pdf ; do op $file ; done 

%}

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

    \key f \minor
    \tempo 4=96
    \time 4/4
    \startSectionNoBarline "Intro"
    s1*8

    \break

    \startSectionNoBarline "Verse I"
    s1*8

    \pageBreak

    \startSection "Chorus"    
    s1*8

    \startSection "Verse II"
    s1*8
    \startSection "Chorus"    
    s1*8

    \pageBreak 

    \startSection "Bridge"
    s1*7
    \bar "||"
    \time 6/4
    s1.

    \startSection "Interlude"
    \time 4/4
    s1*4

    \startSection "Verse III"
    s1*8

    \startSection "Chorus"
    s1*8
    \bar "||" 
    
    \pageBreak 

    s1*6 
    \startSectionNoBarline "Solo"
    s1*2

    \startSection ""
    s1*8

    \startSection ""
    s1*8

    \startSection ""
    s1*2
    \bar "|."    
}


chordsCell = \chordmode { 
    df2:maj7 c:aug7 | f:m7 ef4:m7 af:7 | df2:maj7 c:aug7 | f1:m7 | 
}

chordsIntro = \chordmode { 
    \chordsCell
    \chordsCell
}

chordsVerse = \chordmode { 
    \chordsCell
    \chordsCell
}

chordsChorus = \chordmode { 
    \chordsCell
    \chordsCell
}

chordsBridge = \chordmode {
    df2:maj7 c:aug7 | b:maj7 bf:7 | a:maj7 af:7 | cs:maj7 fs2:13 | 
    df2:maj7 c:aug7 | b:maj7 bf:7 | a:maj7 af:7 | cs:maj7 fs1:13 | 
}
chordsBridgeForEb = \chordmode {
    df2:maj7 c:aug7 | cf:maj7 bf:7 | bff:maj7 af:7 | df:maj7 gf2:13 | 
    df2:maj7 c:aug7 | cf:maj7 bf:7 | bff:maj7 af:7 | df:maj7 gf1:13 | 
}

chordsInterlude = \chordmode { 
    \chordsCell
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsVerse
    \chordsChorus
    \chordsVerse
    \chordsChorus
    \chordsBridge
    \chordsInterlude
    \chordsVerse
    \chordsChorus
    \chordsChorus
    \chordsChorus
    \chordsChorus
}
chordsSongForEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsVerse
    \chordsChorus
    \chordsVerse
    \chordsChorus
    \chordsBridgeForEb
    \chordsInterlude
    \chordsVerse
    \chordsChorus
    \chordsChorus
    \chordsChorus
    \chordsChorus
}

melodyIntro = \relative c''' { 
    c8 af16 f ~ 16 c8 af'16  g8 af bf c | 
    af8 f16 c ~ 16 f8 af16  bf8 gf <af f> <gf ef> | 
    af8. f16 ~ 16 df c8  e g bf c |
    <af f>4. <f' ef>8 ~ 2 |
    << 
        { 
            c8 df16 c ~ 16 df8 c16 ~ 8 df c df | 
            c8 df16 c ~ 16 df8 ef16 ~ 4 c8 bf | 
            c8 df16 c ~ 16 df8 c16 ~ 8 df af g | 
            af8 c af f' ~ 2 
        } \\ \relative c''' {
            g4.. f16 ~ 4 4  
            f4.. gf16 ~ 4 af8 gf |
            af4.. g16 ~ 2
            f4. ef'8 ~ 2
        }
    >>
}
melodyVerse = \relative c'' { 
    r8 af8  8 16 g ~  16 8 af16 ~  16 bf8. |
    c4  df8 ef16 f ~  8 ef16 c ~  16 16 ( af ) bf ~ | 
    bf8. af16  c8 16 bf ~  8 af  c bf | 
    f4. r8 r2 ||

    r8 af16 16 ~  16 8 g16 ~ 16 8.  af8 bf |
    c4  df16 ef8 f16 ~  8 ef16 c ~  16 bf8  16 ( ~ | 
    bf16 af8 ) 16  c16 bf af bf ~ 16 af8 c16 (   cf8 ) bf 
    f4. r8 
}
melodyChorusShort = \relative c'' { 
    r8 c ( bf ) [ af ] ||
    bf8 af16 16  r4  r  ef'8 c | 
    ef8 c16 ef ~  16 8 f16 ( ~  8 ef )  c8 af | 
    bf8 af16 16  r4  r   bf'8 af16 bf ~ |
    bf8 af16 f  r4  r8 f ( ef ) [ f ] |

    f8 ef16 16  r4  r  ef8 8 | 
    f8 16 ef ~  16 8 16 ( c4 )
}
melodyChorus = \relative c'' { 
    \melodyChorusShort c8 bf | 
    bf8 af16 16  r4  r  bf16 af8 f16 ~ | 
    4. r8
}
melodyBridge = \relative c''' { 
    c8 bf16 af ~  16 f8 c'16 ~ 16 bf c8 ~ 4 |
    bf8 af16 gf ~  16 ef8 bf'16 ~ 4 r |
    af8 gf16 ff ~  16 df8 af'16 ~ 16 gf af8 ~ 8 gf |
    f8. af16 ~ 8 ef' ~ 4. r8 |         

    c,8 bf16 af ~  16 f8 c'16 ~ 16 bf c8 ~ 4 |
    bf8 af16 gf ~  16 ef8 bf'16 ~ 4 r |
    af8 gf16 ff ~  16 df8 af'16 ~ 16 gf af8 ~ 8 gf |
    f8. af16 ~ 8 ef' ~ 2 ~ 4. r8  |         
}
melodyVerseTwo = \relative c'' { 
    r8 af16 16 ~ 16 8 g16 ~  8  8 af bf16 c ~ |
    c4  ef8 c  f ef16 \grace { df8 ( } c16 ~  8 ) bf16 af ~ | 
    af8. 16  c16 bf8 16 ~  16 af8 \grace { c8 ( } cf16 ~ 8 ) bf | 
    f4. r8 r2 ||

    r8 g16 af ~  16 8.  g8 16 af ~  16 bf8. | 
    c4  ef8 c16 ef ~ 8 df c bf | 
    af8 r   c16 bf af bf ~  8 af16 cf (   bf8 ) af | 
    f4. r8 
}
melodyInterlude = \relative c'' { 
    s1*4
}
melodyVerseThree = \relative c'' { 
    r8 af8  8 16 g ~  16 8 af16 ~  16 bf8. |
    c4  df8 ef16 f ~  16 ef8 df16 ( c8 ) bf16 16 ( | 
    af8. ) 16  c8 16 bf ~  8 af16 c ~ 8 bf16 f ~ | 
    f4. r8 r2 ||

    r8 g16 af ~  16 8.  g8 16 af ~  16 bf8 c16 ~ |
    c4  df16 ef8 f16 ~  8 ef16 c ~  16 bf8  16 ( ~ | 
    bf16 af8. )  c16 bf af bf ~  8 af16 cf (   bf8 ) af | 
    f4. r8 
}
melodySaxSolo = \relative c' { 
    r4 bf8 c ~ 4 ef8 f16 ef | 
    af8. f16 ~  8 ef  f af  bf16 16 af bf ||

    c16 ef r8  f ef  f r  r4 | 
    r2  bf,,16 c8.  ef8 f | 
    af8. f16 ~  8 af  bf16 c ef8  r16 f ef f ~ |
    f8 ef  af, f ~  4 r | 

    r4  r8 af'  bf af  \slurUp \grace { af8 ( } c8 [ ) r16 bf ] ~ |
    bf16 af8 f16 ~  8 ef  bf,16 c8.  ef8 f | \slurNeutral
    af8. f16 ~  4  r16 cf' ( bf ) af   \tuplet 6/4 { cf16 ( bf af  f ef c ) }  |
    af8 bf8 \grace { bf8 ( } c8 ) ef  f af  bf16 c ef8 ||

    r4  f16 16 ef8  af f  bf [ af16 \slurUp \grace { bf8 ( } c16 ~ ] | 
    c16 ) af8 f16 ~  8 ef  f4  r | \slurNeutral
    r8. cf'16 ~  8. af16  
        \tuplet 3/2 { bf32 ( cf bf } af16 ) f ef  
        \tuplet 3/2 { af32 ( bf af } f16 ) ef df |
    c8 ef16 f ~  8 ef16 c  
        \tuplet 3/2 { bf32 ( cf bf } af16 ) f ef 
        c ef f8 |

    af8. f16 ~  4  r8 f'' ~  \tuplet 3/2 { f8 [ ef \slurUp \grace { cf8 ( } c8 ) } ] |
    \tuplet 3/2 { bf16 ( c bf } af8 )  
        \grace { cf8 ( } c8 ) r  
        df16 c bf af 
        gf8 [ af16 \grace { ef8 ( } f16 ] ~ |
    f8. ) ef32 c  
        \tuplet 3/2 { cf32 bf af } f16 af8  
        bf8 af      
        \grace { af8 ( } c16 ) ef f af ~ | 
    af16 f8.  ef8 f  r8 c, ef [ f ] | 

    af8. f16 ~ 4  r8 f'' ~ 8 \tuplet 3/2 { bf,16 ( cf bf ) } |
    \tuplet 3/2 { af16 ( bf af ) } f16 ef  f af r8 r2 |
}
melodySaxSoloForEb = \relative c'' { 
    r4 bf8 c ~ 4 ef,8 f16 ef | 
    af8. f16 ~  8 ef  f af  bf16 16 af bf ||

    c16 ef r8  f ef  f r  r4 | 
    r2  bf,16 c8.  ef,8 f | 
    af8. f16 ~  8 af  bf16 c ef8  r16 f ef f ~ |
    f8 ef  af, f ~  4 r | 

    r4  r8 af'  bf af  \slurUp \grace { af8 ( } c8 [ ) r16 bf ] ~ |
    bf16 af8 f16 ~  8 ef  bf16 c8.  ef,8 f | \slurNeutral
    af8. f16 ~  4  r16 cf' ( bf ) af   \tuplet 6/4 { cf16 ( bf af  f ef c ) }  |
    af'8 bf8 \grace { bf8 ( } c8 ) ef,  f af  bf16 c ef8 ||

    r4  f16 16 ef8  af f  bf [ af16 \slurUp \grace { bf8 ( } c16 ~ ] | 
    c16 ) af8 f16 ~  8 ef  f4  r | \slurNeutral
    r8. cf'16 ~  8. af16  
        \tuplet 3/2 { bf32 ( cf bf } af16 ) f ef  
        \tuplet 3/2 { af32 ( bf af } f16 ) ef df |
    c8 ef16 f ~  8 ef16 c  
        \tuplet 3/2 { bf32 ( cf bf } af16 ) f ef 
        c ef f8 |

    af8. f16 ~  4  r8 f'' ~  \tuplet 3/2 { f8 [ ef \slurUp \grace { cf8 ( } c8 ) } ] |
    \tuplet 3/2 { bf16 ( c bf } af8 )  
        \grace { cf8 ( } c8 ) r  
        df16 c bf af 
        gf8 [ af16 \grace { ef8 ( } f16 ] ~ |
    f8. ) ef32 c  
        \tuplet 3/2 { cf32 bf af } f16 af8  
        bf8 af      
        \grace { af8 ( } c16 ) ef f af ~ | 
    af16 f8.  ef8 f  r8 c, ef [ f ] | 

    af8. f16 ~ 4  r8 f'' ~ 8 \tuplet 3/2 { bf,16 ( cf bf ) } |
    \tuplet 3/2 { af16 ( bf af ) } f16 ef  f af r8 r2 |
}

melodySong = \relative c' { 
    \melodyIntro
    \melodyVerse
    \melodyChorus r2
    \melodyVerseTwo
    \melodyChorus r2
    \melodyBridge
    \melodyInterlude
    \melodyVerseThree
    \melodyChorus
    \melodyChorusShort r4
    \melodySaxSolo
}
melodySongForEb = \relative c' { 
    \melodyIntro
    \melodyVerse
    \melodyChorus r2
    \melodyVerseTwo
    \melodyChorus r2
    \melodyBridge
    \melodyInterlude
    \melodyVerseThree
    \melodyChorus
    \melodyChorusShort r4
    \melodySaxSoloForEb
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 28 { \skip 1 }

    I see the crys -- tal rain -- drops fall
    And the beau -- ty of it all
    Is when the sun comes shin -- ing through

    To make those rain -- bows in my mind
    When I think of you some -- time
    And I wan -- na spend some time with you

    Just the two of us
    We can make it if we try
    Just the two of us
    (Just the two of us)
    Just the two of us
    Build -- ing cast -- les in the sky
    Just the two of us
    You and I


    We look for love, no time for tears
    Wast -- ed wa -- ter's all that is
    And it don't make no flo -- wers grow
    Good things might come to those who wait
    Not for those who wait too late 
    We got -- ta go for all we know

    Just the two of us
    We can make it if we try
    Just the two of us
    (Just the two of us)
    Just the two of us
    Build -- ing cast -- les in the sky
    Just the two of us
    You and I

    \repeat unfold 28 { \skip 1 }
    \repeat unfold 16 { \skip 1 }

    I hear the crys -- tal rain -- drops fall
    On the win -- dow down the hall
    And it be -- comes the morn -- ing dew
    And, dar -- ling, when the morn -- ing comes
    And I see the morn -- ing sun
    I want to be the one with you

    Just the two of us
    We can make it if we try
    Just the two of us
    (Just the two of us)
    Just the two of us
    Build -- ing cast -- les in the sky
    Just the two of us
    You and I

    Just the two of us
    We can make it if we try
    Just the two of us
    (Just the two of us)
    Just the two of us
    Build -- ing cast -- les in the sky

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 28 { \skip 1 }


    \repeat unfold 42 { \skip 1 }
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 28 { \skip 1 }
    \repeat unfold 38 { \skip 1 }


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
                    \melodySong
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
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForEb
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
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
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForEb
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySongForEb
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

