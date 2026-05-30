\version "2.24.0"

titleLeft = "Septem"
titleRight = "ber"
titleFull = "September"
composerName = "EWF"
arranger = ""
copyright = ""

%{

killPreview ; rm september*pdf ;  lilypond ly/songs/pop/september.ly  ; for file in september*.pdf ; do op $file ; done  

killPreview
rm september*pdf
lilypond ly/songs/pop/september.ly
mv september*.pdf pdf/songs/pop
for file in pdf/songs/pop/september*.pdf ; do op $file ; done  

git add . ; git commit -m"september" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.padding = #5

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
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}


structure = \relative c' { 

    \tempo 4=124
    \key a \major
    \time 4/4

    s1*10

    \startSection "Verse 1"
    s1*8

    \startSection "Verse 2"
    s1*8

    \startSection "Chorus 1"  
    s1*8

    \startSection "Bridge" 
    s1*8

    \startSection "Verse 3"
    s1*8

    \startSection "Verse 4"
    s1*8

    \startSection "Chorus 2" 
    s1*8

    \startSection "Chorus 3" 
    s1*8

    \startSection "Verse 5"
    \startRepeat
    s1*8
    \endRepeat
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -4 . 2 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    s1*10

    % "Verse 1"
    s1*8 

    % "Verse 2"
    s1*8 \break

    % "Chorus 1"  
    s1*8 \break

    % "Bridge" 
    s1*8 \break

    % "Verse 3"
    s1*8 

    \pageBreak

    % "Verse 4"
    s1*8 \break

    % "Chorus 2" 
    s1*8 \break

    % "Chorus 3" 
    s1*8 \break

    % "Verse 5"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForBb
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

}

chordsSong = \chordmode { 
}

hornIntro = \relative c' { 
    r2 r4 c16 c b a | b a8. c'16 c b a  b a8. ~ 4 ~ | 2. 
}
trumpetIntro = \relative c'' { 
    r8 a ~ | 
    a1 ~ | 2 4 r ||
}
tromboneIntro = \relative c' { 
    r8 d ~ | 
    d1 ~ | 2 4 r ||
}
bariIntro = \relative c' { 
    r2 r4 c16 c b a | b a8. ~ 2 c16 c b a  | b a8. ~ 4 ~ 4 r8 fs ~ | 
    fs1 ~ | 2 4 r ||
}

trumpetVerseOne = \relative c''' {
    r8 a ~ | 1 ~ | 2 4-. 4-. ||
}
tromboneVerseOne = \relative c' {
    r8 fs ~ | 1 ~ | 2 4-. 4-. ||
}
bariVerseOne = \relative c' {
    r8 b16 cs | d4. d16 e fs2 ~ | 2 4-. 4-. ||
}

hornsVerseTwo = { R1*8 }

trumpetLickChorus = \relative c'' {
    r8 a  r4 r8 gs  r4 | a4 fs8 e  a4 fs8 e |  
}
tromboneLickChorus = \relative c' {
    r8 fs  r4 r8 e  r4 | a4 fs8 e  a4 fs8 e |  
}

trumpetEndChorus = \relative c''' {
    r8 a  f16 fs a8  r a fs [ a ] | r a fs [ a ]  8-. 8-. 4-. 
}
tromboneEndChorus = \relative c'' {
    r8 a  f [ a ]  r a fs [ a ] | r a fs [ a ]  8-. 8-. 4-. 
}


trumpetBridge = \relative c'' { 
    cs8 8 8 b  r a r b ~ | 4. a8 ~ 4 r |
}
trumpetBridgeEnd = \relative c'' { 
    cs8 8 8 b  r a r b ~ | 4. a8 ~ 4 r |
}
tromboneBridge = \relative c'' { 
    a8 8 8 gs  r fs r gs ~ | 4. fs8 ~ 4 r |
}
tromboneBridgeEnd = \relative c'' { 
    a8 8 8 gs  r fs r b ~ | 4. cs8 ~ 4 r |
}
bariBridge = \relative c' { 
    fs8 8 8 e  r d r e ~ | 4. cs8 ~ 4 r |
}
bariBridgeEnd = \relative c' { 
    fs8 8 8 gs  r fs r es ~ | 4. fs8 ~ 4 r |
}
hornsBridgeFanfare = \relative c'' { 
    r16 a c cs  e e fs e  a a fs cs  e e fs e | 
    a16 a fs e  a a fs e  a a fs e  a a fs e | 
}

trumpetVerseFour = \relative c'' { 
    r8 a r4 r2 | R1 | 
}
tromboneVerseFour = \relative c' { 
    r8 a r b  cs e fs e | a4 fs8 e a4 fs8 e | 
}
trumpetVerseFourEnd = \relative c'' { 
    r8 a r4 r2 | b4. cs8 ~ 4 r4 |
}
tromboneVerseFourEnd = \relative c'' { 
    r8 fs r4 r2 | b4. a8 ~ 4 r4 |
}
bariVerseFourEnd = \relative c' { 
    r8 a r4 r2 | es4. fs8 ~ 4 r | 
}


hornsEndChorusThree = \relative c'' {
    a8 4 8  4 8 8 ~ | 8 8 4 8 8 4-. |
}


trumpetVerseFive = \relative c'' { 
    r8 a r4 r8 a r4 | r2 a,4 fs8 e | 
    r8 a' r4 r8 a r4 | a4 fs8 e a4 fs8 e  | 
    r8 a' r4 r8 a r4 | a4 fs8 e a4 fs8 e  | 
}
tromboneVerseFive = \relative c'' { 
    cs4 d8 cs ~ 4 r | cs8 d cs b  a4 fs | 
    cs'4 d8 cs ~ 4 r | cs8 d cs b  a4 fs | 
    cs'4 d8 cs ~ 4 r | cs8 d cs b  a4 fs | 
}



hornsSong = {

    <>\xmp
    R1*5 
    << 
        {
            \hornIntro 
            <<
                \trumpetIntro
                \tromboneIntro
            >>
        } \\
        \bariIntro
    >>

    <>\xmp
    R1*5 | r2 r4 
        <<
            << 
                \trumpetVerseOne
                \tromboneVerseOne
            >> \\
            \bariVerseOne
        >>

    <>\xmp
    R1*8

    << 
        {
            \trumpetLickChorus
            \trumpetLickChorus
            \trumpetLickChorus
            \trumpetEndChorus
        }
        {
            \tromboneLickChorus
            \tromboneLickChorus
            \tromboneLickChorus
            \tromboneEndChorus
        }
    >>

    << 
        <<
            {
                \trumpetBridge
                \trumpetBridge
                \trumpetBridgeEnd
            }
            {
                \tromboneBridge
                \tromboneBridge
                \tromboneBridgeEnd
            }
        >> \\
        {
            \bariBridge
            \bariBridge
            \bariBridgeEnd
        }
    >>
    \hornsBridgeFanfare

    % Verse 3
    <>\xmp
    R1*6
    \hornsBridgeFanfare

    << 
        {
            \trumpetVerseFour
            \trumpetVerseFour
            \trumpetVerseFourEnd
        }
        {
            \tromboneVerseFour
            \tromboneVerseFour
            \tromboneVerseFourEnd
        }
        {
            s1*4
            \transpose c, c \bariVerseFourEnd
        }
    >>
    \hornsBridgeFanfare

    % Chorus 2
    << 
        {
            \trumpetLickChorus
            \trumpetLickChorus
            \trumpetLickChorus
            \trumpetEndChorus
        }
        {
            \tromboneLickChorus
            \tromboneLickChorus
            \tromboneLickChorus
            \tromboneEndChorus
        }
    >>

    % Chorus 3
    \transpose c, c << 
        {
            \trumpetLickChorus
            \trumpetLickChorus
            \trumpetLickChorus
        }
        {
            \tromboneLickChorus
            \tromboneLickChorus
            \tromboneLickChorus
        }
    >>
    \hornsEndChorusThree


    % Verse 5
    << 
        \trumpetVerseFive \\
        \tromboneVerseFive
    >>
    \hornsEndChorusThree
}

trumpetSong = {

    <>\xmp
    R1*5 
    \hornIntro 
    \trumpetIntro

    <>\xmp
    R1*5 | r2 r4 \transpose c c, \trumpetVerseOne

    <>\xmp
    R1*8

    \trumpetLickChorus
    \trumpetLickChorus
    \trumpetLickChorus
    \transpose c c, \trumpetEndChorus

    \trumpetBridge
    \trumpetBridge
    \trumpetBridgeEnd
    \transpose c c, \hornsBridgeFanfare

    % Verse 3
    <>\xmp
    R1*6
    \transpose c c, \hornsBridgeFanfare

    \trumpetVerseFour
    \trumpetVerseFour
    \trumpetVerseFourEnd
    \transpose c c, \hornsBridgeFanfare

    % Chorus 2
    \trumpetLickChorus
    \trumpetLickChorus
    \trumpetLickChorus
    \transpose c c, \trumpetEndChorus

    % Chorus 3
    \trumpetLickChorus
    \trumpetLickChorus
    \trumpetLickChorus
    \hornsEndChorusThree


    % Verse 5
    \trumpetVerseFive    
    \hornsEndChorusThree
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 14 { \skip 1 }


}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 29 { \skip 1 }
    \repeat unfold 34 { \skip 1 }
    \repeat unfold 34 { \skip 1 }

}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }
    \repeat unfold 38 { \skip 1 }

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    %arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "Horns-in-A-for-C"
    \header {
        subtitle = "(original key)"
        poet = "Concert Horns"
        instrumentName = \poet
    }
    \score {
        \transpose c c  <<
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
                    \hornsSong
                >>
            }
        >>
    }
}


\book {
  \bookOutputSuffix "Horns-in-A-for-Bb"
    \header {
        subtitle = "(original key)"
        poet = "Bb Horns"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c  <<
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
                    \rehearsalMarkTweaksForBb
                    \hornsSong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Lead-Horn-in-A-for-Eb"
    \header {
        subtitle = "(original key)"
        poet = "Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c  <<
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
                    \rehearsalMarkTweaksForEb
                    \trumpetSong
                >>
            }
        >>
    }
}

