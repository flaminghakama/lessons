\version "2.24.0"

titleLeft = "Groove"
titleRight = "Me"
titleFull = "Groove Me"
composerName = "F. Hibbert"
arranger = ""
copyright = ""

%{

killPreview ; rm groove-me*pdf ;  lilypond ly/songs/pop/groove-me.ly  ; for file in groove-me*.pdf ; do op $file ; done  

killPreview
rm groove-me*pdf
lilypond ly/songs/pop/groove-me.ly
mv groove-me*.pdf pdf/songs/pop
for file in pdf/songs/pop/groove-me*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing key" ; git push 
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
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.padding = #3

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

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \tempo 4=176
    \key b \major
    \time 4/4

    \startSection "Intro"
    s1*4

    \startSection "Verse"
    s1*8 

    \startSection "Pre-chorus"
    s1*8 

    \startSection "Chorus"
    s1*10

    \startSection "Verse 2"
    s1*8 

    \startSection "Pre-chorus 2"
    s1*8 

    \startSectionWithLabel "Chorus 2" "Repeat and fade"
    \startRepeat
    s1*6
    \endRepeat
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 \break 

    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Verse"
    s1*8 

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Pre-chorus"
    s1*8 \break

    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Chorus"
    s1*10

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Verse 2"
    s1*8 

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Pre-chorus 2"
    s1*8 

    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( -8 . 0.4 )
    % "Chorus 2" "Repeat and fade"

}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 \break 

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Verse"
    s1*8 

    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Pre-chorus"
    s1*4 
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Chorus"
    s1*10

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Verse 2"
    s1*8 

    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Pre-chorus 2"
    s1*4 
    s1*4 \break 

    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( -8 . 0.4 )
    % "Chorus 2" "Repeat and fade"

}

rehearsalMarkTweaksForBb = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Verse"
    s1*8 

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Pre-chorus"
    s1*8 \break

    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Chorus"
    s1*10

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Verse 2"
    s1*8 

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )
    % "Pre-chorus 2"
    s1*8 \break

    \override Score.RehearsalMark.extra-offset = #'( -8 . 0.4 )
    % "Chorus 2" "Repeat and fade"

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
    % Intro 
    b1:6 | s1*3 ||

    % Verse 
    b1:6 | s1*3 ||
    b1:6 | s1*3 ||

    % Pre-chorus
    fs1:7 | s1 | b:6 | s |
    fs1:7 | s1*3 ||

    % Chorus
    b1:6 | s1*3 |
    d1 | e | b:6 | s | 
    b:6 | gs:7 ||

    % Verse 2
    b1:6 | s1*3 ||
    b1:6 | s1*3 ||

    % Pre-chorus
    fs1:7 | s1 | b:6 | s |
    fs1:7 | s1*3 ||

    % Chorus
    b1:6 | s1*3 |
    d1 | e || 
}


basslineRoot = \relative c { 
    b8 8 r4  r8 ds4 r8 | r8 fs4 r8 r8 gs4 b8 | 
}
basslineFive = \relative c, { 
    fs8 8 r4  r8 as4. | r8 cs4. r8 e4 fs8 | 
}
basslineChorus = \relative c { 
    d8. b16 d4 fs,16 8 g16 r a16 [ r d ] | 
    e8. b16 e4  gs,16 8 g16 ~ 16 as8 16 |
}
basslineBreak = \relative c { 
    b8 8 r4  r8 ds4. | r8 gs8 8 [ 8 ~ ] 8 8 4 | 
}

hornLick = \relative c'' { 
    r4 b r gs | r4 r8 <cs e,> r <b ds,> r4 | 
}
hornLickChorus = \relative c'' { 
    <d fs,>1 | <e gs,> | 
}

hornLickVerseTwo = \relative c'' { 
    R1*3 | <ds fs,>4  4  16 [ 16 r <ds fs,> ]  r <cs e,> <b ds,>8-. | 
}


bassSong = { 
    
    \basslineRoot
    \basslineRoot ||
    
    \basslineRoot 
    \basslineRoot 
    \basslineRoot 
    \basslineRoot ||
    
    \basslineFive
    \basslineRoot 
    \basslineFive
    \basslineFive ||

    \basslineRoot 
    \basslineRoot 
    \basslineChorus 
    \basslineRoot 
    \basslineBreak ||


    \basslineRoot 
    \basslineRoot 
    \basslineRoot 
    \basslineRoot ||
    
    \basslineFive
    \basslineRoot 
    \basslineFive
    \basslineFive ||
    
    \basslineRoot 
    \basslineRoot 
    \basslineChorus 
}


hornsSong = {

    R1*2 \hornLick

    <>\xmp 
    R1*8 

    <>\xmp 
    R1*8 

    \hornLick
    \hornLick
    \hornLickChorus  
    \hornLick 
    \hornLick 


    <>\xmp 
    \hornLickVerseTwo
    \hornLickVerseTwo

    <>\xmp 
    R1*8 


    \hornLick
    \hornLick
    \hornLickChorus 
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
  \bookOutputSuffix "Horns-in-B-for-C"
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
  \bookOutputSuffix "Horns-in-B-for-Bb"
    \header {
        subtitle = "(original key)"
        poet = "Bb Horns"
        instrumentName = \poet
    }
    \score {
        \transpose as, c  <<
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
  \bookOutputSuffix "Horns-in-B-for-Eb"
    \header {
        subtitle = "(original key)"
        poet = "Eb Horns"
        instrumentName = \poet
    }
    \score {
        \transpose ds, c  <<
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
                    \hornsSong
                >>
            }
        >>
    }
}

\paper {
   % Spacing in between systems
   system-system-spacing.padding = #1
}

\book {
  \bookOutputSuffix "Bass-in-B"
    \header {
        subtitle = "(original key)"
        poet = "Bass"
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
                    \rehearsalMarkTweaksForBass
                    \clef bass
                    \bassSong
                >>
            }
        >>
    }
}


