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
    \key fs \minor
    \time 4/4

    \startSection "Intro"
    s1*4

    \startSection "Drums"
    s1*4

    \startSection "Bass"
    s1*4

    \startSection "Guitar"
    s1*4

    \startSection "Organ"
    s1*4

    \startSection "Horn Break"
    s1*4



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
}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 \break 

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
}

rehearsalMarkTweaksForBb = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4
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


basslineRoot = \relative c { 
    b8 8 r4  r8 ds4 r8 | r8 fs4 r8 r8 gs4 b8 | 
}

hornBreak = \relative c'' { 
    r4 cs as fs | a4. gs8 ~ 8 fs ds4 | 
}
hornHarmonyBreak = \relative c'' { 
    r4 cs as fs | e4. gs8 ~ 8 fs ds4 | 
}


bassSong = { 
    
}


hornsSong = {

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
  \bookOutputSuffix "Horns-in-B-for-Eb"
    \header {
        subtitle = "(original key)"
        poet = "Eb Horns"
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


