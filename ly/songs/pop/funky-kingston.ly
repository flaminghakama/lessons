\version "2.24.0"

titleLeft = "Funky"
titleRight = "Kingston"
titleFull = "Funky Kingston"
composerName = "F. Hibbert"
arranger = ""
copyright = ""

%{

killPreview ; rm funky-kingston*pdf ;  lilypond ly/songs/pop/funky-kingston.ly  ; for file in funky-kingston*.pdf ; do op $file ; done  

killPreview
rm funky-kingston*pdf
lilypond ly/songs/pop/funky-kingston.ly
mv funky-kingston*.pdf pdf/songs/pop
for file in pdf/songs/pop/funky-kingston*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
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
  system-system-spacing.padding = #0

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

    \startSection ""
    s1*8 

    \startSection "Horns I"
    s1*8 

    \startSection ""
    s1*8 

    \startSection "Horns II"
    s1*8 

    \bar "||"
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0.4 )

    s1*8 %\break

    % "Horns I"
    s1*2 \break s1*3 \break s1*3 \break  

    % ""
    s1*8 %\break

    % "Horns II"
    s1*8 

}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

}

hornLickOne = \relative c'' { 
    r2 r4 r8. cs16 | e fs8 e16 ~ 8 cs16 b  cs b cs b  a fs a fs | 
    cs'8 b a16 fs8 e16  a fs8 16 ~ 16 8 a16 ~ | 16 fs8 r16 r4 r2 |

    cs'4 e8 fs ~ 8 e ~ 8 16 cs | e fs8 16 ~ 16 e8 cs16  e fs r8  r16 e [ r e ] | 
    r16 e [ r e ]  r e [ r cs ]  e fs8 e16 ~ 8 r | R1 ||   
}

hornLickTwo = \relative c'' { 
    cs8 e8  16 fs8 e16 ~ 16 16 r8  r16 b cs e | 
    fs8 8  8 e16 cs  e fs8 e16 ~ 16 8 r16 |
    R1*2 |

    r8. cs16  e fs8 16 ~ 16 e r8  r e16 cs | 
    e16 fs16 8  8 e16 cs  e fs8 16 ~ 16 e8. | 
    R1*2  
}

hornLickThree = \relative c'' { 
    cs4 e8 fs ~ 2 ~ | 2 
}

hornsSong = \relative c'' { 
    <>\xmp 
    R1*8 
    \hornLickOne

    <>\xmp 
    R1*8 
    \hornLickTwo
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
  \bookOutputSuffix "Horns-in-Gb-minor-for-C"
    \header {
        subtitle = "(original key)"
        poet = "Concert Horns"
        instrumentName = \poet
    }
    \score {
        \transpose c c  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
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
  \bookOutputSuffix "Horns-in-D-minor-for-C"
    \header {
        subtitle = "(Zoo key)"
        poet = "Concert Horns"
        instrumentName = \poet
    }
    \score {
        \transpose fs d  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
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
  \bookOutputSuffix "Horns-in-D-minor-for-Bb"
    \header {
        subtitle = "(Zoo key)"
        poet = "Bb Tenor Saxophone"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose fs d  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
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
  \bookOutputSuffix "Horns-in-D-minor-for-Eb"
    \header {
        subtitle = "(Zoo key)"
        poet = "Eb Baritone Saxophone"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose fs d  <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
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
