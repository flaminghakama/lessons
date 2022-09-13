\version "2.19.83"

titleLeft = "Sir"
titleRight = "Duke"
title = "Sir Duke"
composerName = "S. Wonder"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm sir-duke*pdf ; lilypond ly/songs/pop/sir-duke.ly ; for file in sir-duke*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/sir-duke*
lilypond ly/songs/pop/sir-duke.ly 
mv sir-duke*pdf pdf/songs/pop
for file in pdf/songs/pop/sir-duke*pdf ; do op $file ; done 

git add . ; git commit -m"sir duke" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

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

\layout { 
    \context {
        \Score
        \override Glissando.style = #'trill
    }
}



structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \key b \major
    \tempo 4=104
    \time 4/4
    \startSectionNoBarline "Intro"
    \bar "[|:"
    s1*4 
    \bar ":|]"
    \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -8 . -1 ) 
    \startSectionNoBarline "Verse"
    s1*8

    \once \override Score.RehearsalMark #'extra-offset = #'( -13.4 . -3 ) 
    \startSection "Pre-chorus"    
    s1*4
    \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -8 . -2.6 ) 
    \startSection "Chorus"    
    s1*8
    \break

    \once \override Score.RehearsalMark #'extra-offset = #'( -8 . 1.6 ) 
    \startSection "Bridge"    
    s1*8

    \pageBreak

    \startSection "Verse"    
    s1*8

    \startSection "Pre-chorus"    
    s1*4

    \startSectionNoBarline "Chorus"    
    \bar "[|:"
        s1*8
    \bar ":|]"

    \startSection "Bridge"    
    s1*8

    \startSectionNoBarline "Chorus"    
    \bar "[|:"
    s1*8
    \bar ":|]"
}


chordsIntro = \chordmode { 
    s1*4
}

chordsVerse = \chordmode { 
    b1 | gs:m | g | fs | 
    b1 | gs:m | g | fs2 f:7
}
chordsVerseForFlats = \chordmode { 
    b1 | gs:m | fss | fs | 
    b1 | gs:m | fss | fs2 es:7
}

chordsPrechorus = \chordmode { 
    e4:9 ef:9 d:9 df:9 | d:9 ds:9 e2:9 | 
    e4:9 ef:9 d:9 df:9 | d8:9 ds:9 e:9 f:9 fs2:9 | 
}
chordsPrechorusForFlats = \chordmode { 
    e4:9 ds:9 css:9 cs:9 | css:9 ds:9 e2:9 | 
    e4:9 ds:9 css:9 cs:9 | css8:9 ds:9 e:9 es:9 fs2:9 | 
}

chordsChorus = \chordmode { 
    b1 | f:m | e:maj7 | cs2:m7 fs:1.3.5.7.11 |  
    b1 | f:m | e:maj7 | cs2:m7 fs:1.3.5.7.11 |      
}
chordsChorusForFlats = \chordmode { 
    b1 | es:m | e:maj7 | cs2:m7 fs:1.3.5.7.11 |  
    b1 | es:m | e:maj7 | cs2:m7 fs:1.3.5.7.11 |      
}

chordsBridge = \chordmode {
    s1*8
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsVerse
    \chordsPrechorus
    \chordsChorus
    \chordsBridge

    \chordsVerse
    \chordsPrechorus
    \chordsChorus
    \chordsBridge

    \chordsChorus
}
chordsSongForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsVerseForFlats
    \chordsPrechorusForFlats
    \chordsChorusForFlats
    \chordsBridge

    \chordsVerseForFlats
    \chordsPrechorusForFlats
    \chordsChorusForFlats
    \chordsBridge

    \chordsChorusForFlats
}

melodyIntro = \relative c' { 
    b4 ds fs8. b16 r4 |
    gs,8 8  b16 ( as b8 )  ds16 ( d ds gs ) r4 | 
    g,8 8  b b  d16 ( cs d8 ) \hideNotes \grace { c4 \glissando } \unHideNotes g'8. fs16 | 
    R1 
}
melodyIntroForFlats = \relative c' { 
    b4 ds fs8. b16 r4 |
    gs,8 8  b16 ( as b8 )  ds16 ( css ds gs ) r4 | 
    fss,8 8  ass ass  css16 ( bss css8 ) \hideNotes \grace { c4 \glissando } \unHideNotes fss8. fs16 | 
    R1 
}
melodyVerse = \relative c'' { 
    r4  ds8 fs  gs fs  ds cs | b cs4 gs8 ~ 8 r gs b |
    d8 cs b g b d ( cs ) 8 ~ | 2 r | 

    r4  ds16 fs8 gs16 ~  8 fs16 ds ~  16 cs8 b16 ~ | 8 cs4 gs8 r fs gs [ b ] |
    d8 ( cs ) b [ r16 g16 ] b8 d ( cs ) 8 ~ | 4. c8 ~ 4 r16 as b16 16 |
}
melodyVerseForFlats = \relative c' { 
    r4  ds8 fs  gs fs  ds cs | b cs4 gs8 ~ 8 r gs b |
    css8 bss ass fss ass css ( cs ) 8 ~ | 2 r | 

    r4  ds16 fs8 gs16 ~  8 fs16 ds ~  16 cs8 b16 ~ | 8 cs4 gs8 r fs gs [ b ] |
    css8 ( bss ) ass [ r16 fss16 ] ass8 css ( cs ) 8 ~ | 4. bs8 ~ 4 r16 as b16 16 |
}
melodyPrechorus = \relative c'' { 
    b8 8  bf8 8  a8 16 gs ~  8 8 | a8 8  as8 16 b  r4  r16 as b16 16 | 
    b8 16 16  bf8 16 a ~  16 16 gs8 ~  8 16 16 | a8 as b c16 cs  r4 
        fs4*7/8 \glissando \hideNotes \grace { fs,4 } \unHideNotes s32
}
melodyPrechorusForFlats = \relative c' { 
    b8 8  as8 8  gss8 16 gs ~  8 8 | gss8 8  as8 16 b  r4  r16 as b16 16 | 
    b8 16 16  as8 16 gss ~  16 16 gs8 ~  8 16 16 | gss8 as b bs16 cs  r4 
        fs4*7/8 \glissando \hideNotes \grace { fs,4 } \unHideNotes s32
}
melodyChorus = \relative c'' { 
    r4 ds8 fs fs ds fs ( ds ) | as' ( gs as ) gs ( ~ 16 fs ds8 ) r4 | 
    r4 gs8 fs fs ds gs16 ( fs8. ) | ds4 cs16 ( b gs8 ) b4 gs8 ( fs ) |
}
melodyBridge = \relative c' { 
    b4  r16 b ( ds cs )  r cs ( gs' ) fs  r8  \grace { fs16 \glissando ( } fs,16 gs ) |
    b16 ( gs ) cs ( d   ds ) fs ( gs  b )  r cs ( d ds )  r4 | 
    gs8. ds16  r8 fs ~ 8 cs4 ds8 |
    cs16 ( b ) gs ( fs )  cs' ( b gs ) b ~  4 r | 
    ds8 cs16 ( b )  cs ( b gs ) b  (  gs  fs ) gs8 ~  16 fs ( ds fs ) | 
    ds16 ( cs  ds ) cs (  b cs b ) gs ~  8 fs  r4 |
    \grace { fs'16 ( \glissando } fs,16 gs ) b ( cs  ds ) fs ( gs ) b   r gs ( b8 ~  16 [ ) gs8*1/2 s16\mordent ( fs16 ] ) |
    gs8. fs16 ( ~  16 \mordent ds ) fs8 ~  8 fs'16 16  r4 |
}
melodyBridgeForFlats = \relative c' { 
    b4  r16 b ( ds cs )  r cs ( gs' ) fs  r8 \grace { fs \glissando ( } fs,16 gs ) |
    b16 ( gs ) cs ( css   ds ) fs ( gs  b )  r cs ( css ds )  r4 | 
    gs8. ds16  r8 fs ~ 8 cs4 ds8 |
    cs16 ( b ) gs ( fs )  cs' ( b gs ) b ~  4 r | 
    ds8 cs16 ( b )  cs ( b gs ) b  (  gs  fs ) gs8 ~  16 fs ( ds fs ) | 
    ds16 ( cs ds ) cs ( b cs b ) gs ~  8 fs  r4 |
    \grace { fs'16 ( \glissando } fs,16 gs ) b ( cs  ds ) fs ( gs ) b   r gs ( b8 ~  16 ) gs8 \mordent ( fs16 ) |
    gs8. fs16 ( ~  16 \mordent ds ) fs8 ~  8 fs'16 16  r4 |
}

melodySong = \relative c' { 
    \melodyIntro
    \melodyVerse
    \melodyPrechorus
    \melodyChorus
    \melodyChorus
    \melodyBridge

    \melodyVerse
    \melodyPrechorus
    \melodyChorus
    \melodyChorus

    \melodyBridge

    \melodyChorus
    \melodyChorus
}

melodySongForEb = \relative c' { 
    \melodyIntroForFlats
    \melodyVerseForFlats
    \melodyPrechorusForFlats
    \transpose c' c \melodyChorus
    \transpose c' c \melodyChorus
    \melodyBridgeForFlats

    \melodyVerseForFlats
    \melodyPrechorusForFlats
    \transpose c' c \melodyChorus
    \transpose c' c \melodyChorus

    \melodyBridgeForFlats

    \transpose c' c \melodyChorus
    \transpose c' c \melodyChorus
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 15 { \skip 1 }

    Mu -- sic is a world with -- in it -- self
    With a lan -- guage we all un -- der -- stand
    With an e -- qual op -- por -- tun -- i -- ty
    For all to sing, dance and clap their h -- ands
    
    But just be -- cause a re -- cord has a groove
    Don't make it in the groove
    But you can tell right a -- way at let -- ter A
    When the peo -- ple start to move \skip 1
    
    They can feel it all o -- ver
    They can feel it all o -- ver peo -- ple
    They can feel it all o -- ver
    They can feel it all o -- ver peo -- ple

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 15 { \skip 1 }

    Mu -- sic knows that it is and al -- ways will
    Be one of the things that life just won't quit
    But here are some of mu -- sic's pi -- o --neers
    That time will not al -- low us to for -- get now
    
    For there's Ba -- sie, Mil -- ler, Satch -- mo
    And the king of all, Sir Duke
    And with a voice like El -- la's ring -- ing out
    There's no way the band could lose

    You can feel it all o -- ver
    You can feel it all o -- ver peo -- ple
    You can feel it all o -- ver
    You can feel it all o -- ver peo -- ple
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
                %\lyricsto "lead" { \lyricsHeadTwo } 
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
        \transpose as, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats 
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
                %\lyricsto "lead" { \lyricsHeadTwo } 
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
        \transpose ds, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats 
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
                %\lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

