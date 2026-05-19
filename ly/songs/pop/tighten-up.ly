\version "2.24.0"

titleLeft = "Tighten"
titleRight = "Up"
titleFull = "Tighten Up"
composerName = "A. Bell"
arranger = ""
copyright = ""

%{

killPreview ; rm tighten-up*pdf ;  lilypond ly/songs/pop/tighten-up.ly  ; for file in tighten-up*.pdf ; do op $file ; done  

killPreview
rm tighten-up*pdf
lilypond ly/songs/pop/tighten-up.ly
mv tighten-up*.pdf pdf/songs/pop
for file in pdf/songs/pop/tighten-up*.pdf ; do op $file ; done  

git add . ; git commit -m"groove" ; git push 
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

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \tempo 4=176
    \key fs \major
    \time 4/4

    \startSection "Bass"
    s1*4

    \startSectionWithLabel "Intro" "Repeat until cue"
    \startRepeat
    s1*4

    \startSection "Drums"
    \endRepeat
    s1*4

    \startSection "Bass"
    s1*4

    \startSection "Guitar"
    s1*4

    \startSection "Organ"
    s1*4

    \startSection "Horn Break"
    s1*4

    \startSectionWithLabel "Horn Hits" "Repeat until cue"
    \startRepeat
    s1*4

    \startSectionWithLabel "Horn Hits 2" "Repeat until cue"
    \doubleRepeat
    s1*4
    \endRepeat
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )


    % "Bass"
    s1*4

    % "Intro" "Repeat until cue"
    s1*4 \break 

    % "Drums"
    s1*4 

    % "Bass"
    s1*4

    % "Guitar"
    s1*4

    % "Organ"
    s1*4 \break 

    % "Horn Break"
    s1*4 \break

    % "Horn Hits" "Repeat until cue"
    s1*4 \break

    % "Horn Hits 2" "Repeat until cue"


}

rehearsalMarkTweaksForBb = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )


    % "Bass"
    s1*4

    % "Intro" "Repeat until cue"
    s1*4 \break 

    % "Drums"
    s1*4 

    % "Bass"
    s1*4

    % "Guitar"
    s1*4

    % "Organ"
    s1*4 \break 

    % "Horn Break"
    s1*4 \break

    % "Horn Hits" "Repeat until cue"
    s1*4 \break

    % "Horn Hits 2" "Repeat until cue"
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
    fs1:maj9 | ds:7/cs |
}


basslineRoot = \relative c { 
}

hornLeadBreak = \relative c'' { 
    r4 cs as fs | a4. gs8 ~ 8 fs ds4 | 
}
hornHarmonyBreak = \relative c' { 
    r4 es cs as | e'4. ds8 ~ 8 cs gs4 | 
}
hornLeadHits = \relative c'' { 
    cs16 [ 16 r cs ]  r cs r8  r2 | as16 [ 16 r as ]  r as r8  r2 |
}
hornMiddleHits = \relative c'' { 
    as16 [ 16 r as ]  r as r8  r2 | fs16 [ 16 r fs ]  r fs r8  r2 |
}
hornHarmonyHits = \relative c' { 
    es16 [ 16 r es ]  r es r8  r2 | ds16 [ 16 r ds ]  r ds r8  r2 |
}
hornLeadHitsTwo = \relative c'' { 
    cs16 [ 16 r cs ]  r cs r8  r2 | ds16 [ 16 r ds ]  r ds r8  r2 |
}
hornMiddleHitsTwo = \relative c'' { 
    as16 [ 16 r as ]  r as r8  r2 | as16 [ 16 r as ]  r as r8  r2 |
}
hornHarmonyHitsTwo = \relative c' { 
    es16 [ 16 r es ]  r es r8  r2 | fs16 [ 16 r fs ]  r fs r8  r2 |
}


bassSong = { 
    
}


hornsSong = {

    % "Bass"
    <>\xmp
    R1*4

    % "Intro" "Repeat until cue"
    <>\xmp
    R1*4

    % "Drums"
    <>\xmp
    R1*4

    % "Bass"
    <>\xmp
    R1*4

    % "Guitar"
    <>\xmp
    R1*4

    % "Organ"
    <>\xmp
    R1*4

    % "Horn Break"
    <>\xmp
    R1*2
    <<
        \hornLeadBreak
        \hornHarmonyBreak
    >>

    % "Horn Hits" "Repeat until cue"
    <<
        \hornLeadHits
        \hornMiddleHits
        \hornHarmonyHits
    >>
    <<
        \hornLeadHits
        \hornMiddleHits
        \hornHarmonyHits
    >>
    % "Horn Hits 2" "Repeat until cue"
    <<
        \hornLeadHitsTwo
        \hornMiddleHitsTwo
        \hornHarmonyHitsTwo
    >>
    <<
        \hornLeadHitsTwo
        \hornMiddleHitsTwo
        \hornHarmonyHitsTwo
    >>
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
  \bookOutputSuffix "Horns-in-Gb-for-C"
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
  \bookOutputSuffix "Horns-in-Gb-for-Bb"
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
  \bookOutputSuffix "Horns-in-Gb-for-Eb"
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

