\version "2.24.0"

titleLeft = "Signed, Sealed"
titleRight = "and Delivered"
titleFull = "Signed, Sealed and Delivered"
composerName = "S. Wonder"
arranger = ""
copyright = ""

%{

killPreview ; rm signed-sealed-delivered*pdf ;  lilypond ly/songs/pop/signed-sealed-delivered.ly  ; for file in signed-sealed-delivered*.pdf ; do op $file ; done  

killPreview
rm signed-sealed-delivered*pdf
lilypond ly/songs/pop/signed-sealed-delivered.ly
mv signed-sealed-delivered*.pdf pdf/songs/pop
for file in pdf/songs/pop/signed-sealed-delivered*.pdf ; do op $file ; done  

git add . ; git commit -m"tighten" ; git push 
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

    \tempo 4=104
    \key f \major
    \time 4/4

    s1*4

    \startSection "Verse 1"
    s1*8

    \startSection "Verse 2"
    s1*8

    \startSection "Chorus 1" 
    s1*12

    \startSection "Verse 3"
    s1*8

    \startSection "Verse 4"
    s1*8

    \startSectionWithLabel "Chorus 2" "Repeat & fade"
    \startRepeat
    s1*12
    \endRepeat
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    %  "Verse 1"
    s1*8

    \override Score.RehearsalMark.extra-offset = #'( -3 . 1 )
    %  "Verse 2"
    s1*8

    %  "Chorus 1" 
    s1*12

    %  "Verse 3"
    s1*8

    %  "Verse 4"
    s1*8

    \override Score.RehearsalMark.extra-offset = #'( -6 . 1 )
    % "Chorus 2" "Repeat & fade"
}

rehearsalMarkTweaksForBb = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -4 . 1.4 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    %  "Verse 1"
    s1*8 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . 1 )
    %  "Verse 2"
    s1*8 \break

    %  "Chorus 1" 
    s1*12 \break 

    %  "Verse 3"
    s1*8 \break

    %  "Verse 4"
    s1*8 \break

    \override Score.RehearsalMark.extra-offset = #'( -6 . 1 )
    % "Chorus 2" "Repeat & fade"
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

trumpetIntro = \relative c'' { 
    f1 |
}
tromboneIntro = \relative c' { 
    a1 |
}
bariIntro = \relative c {
    c2..      
}

bariVerseOne = \relative c, {
    e8 || 
    f4 r r2 | r2 r4 r8 e | 
    f4 r r2 | R1 |
    R1*3 | r2 r4 r8 
}

hornsLickVerseTwo = \relative c'' {
    r8 a r bf  r c r4 | 
    f2 d4. c8 ~ | 1 | 
    f2 r8 f4. | \tuplet 3/2 2 { r4 f f  f f f } 
}
bariVerseTwo = \relative c, {
    e8 || 
    f4 r r2 | r2 r4 r8 e | 
    f4 r r2 | 
}

hornsLickChorus = \relative c'' {
    r4 c8 ef ~ 8 c ef f ~ | 1 |
}
trumpetChorusOut = \relative c'' { 
    f1 ~ | 2. r4
}
tromboneChorusOut = \relative c' { 
    a1 ~ | 2. r4
}
bariChorusOut = \relative c {
    c1 ~ | 2. r4    
}

hornsVerseThreeLick = \relative c'' {
    R1 | r2 af8 g ef f ~ | 1 ~ | 1 | 
    R1*2 | f'4 ef d c8 bf | a bf af4 
}
trumpetVerseThree = \relative c' { 
    f2 ||
}
bariVerseThree = \relative c { 
    f4. e,8 || f4 r r2 |
}

hornsVerseFour = \relative c'' { 
    r8 a r bf  r c r f ~ | 
    f2 d4 r8 c ~ | 2. r4 | 
    f2 r8 f4. | \tuplet 3/2 2 { r4 f4 4  4 2 } 
}

hornsBb = {

    R1*3 
    <<
        \trumpetIntro
        \transpose c, c \tromboneIntro
    >>
    R1*8 
    R1*3
    \hornsLickVerseTwo

    \hornsLickChorus
    \hornsLickChorus
    \hornsLickChorus
    \hornsLickChorus
    R1*2
    <<
        \trumpetChorusOut
        \transpose c, c \tromboneChorusOut
    >>
    
    \hornsVerseThreeLick
    \trumpetVerseThree 

    R1*3
    \hornsVerseFour

    \hornsLickChorus
    \hornsLickChorus
    \hornsLickChorus
    \hornsLickChorus
    R1*4
}


bariSong = {

    R1*3 
    \bariIntro
    \bariVerseOne
    \bariVerseTwo
    \transpose c c, {
        \hornsLickVerseTwo
    }
    \transpose c c,, {
        \hornsLickChorus
        \hornsLickChorus
        \hornsLickChorus
        \hornsLickChorus
    }
    R1*2
    \bariChorusOut
    
    \transpose c c, \hornsVerseThreeLick
    \bariVerseThree
    
        R1*2
    \transpose c c, {
        \hornsVerseFour
    }
    \transpose c c,, {
        \hornsLickChorus
        \hornsLickChorus
        \hornsLickChorus
        \hornsLickChorus
    }
    R1*4
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
  \bookOutputSuffix "Horns-in-F-for-C"
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
                    \hornsBb
                >>
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \clef bass
                    \bariSong
                >>
            }
        >>
    }
}


\book {
  \bookOutputSuffix "Horns-in-F-for-Bb"
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
                    \hornsBb
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Bari-in-F-for-Eb"
    \header {
        subtitle = "(original key)"
        poet = "Eb Baritone Sax"
        instrumentName = \poet
    }
    \score {
        \transpose ef,, c  <<
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
                    \bariSong
                >>
            }
        >>
    }
}

