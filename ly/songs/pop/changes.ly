\version "2.24.0"

titleLeft = "Changes"
titleRight = ""
titleFull = "Changes"
composerName = "D. Bowie"
arranger = ""
copyright = ""

%{

killPreview ; rm changes*pdf ;  lilypond ly/songs/pop/changes.ly  ; for file in changes*.pdf ; do op $file ; done  

killPreview
rm changes*pdf
lilypond ly/songs/pop/changes.ly
mv changes*.pdf pdf/songs/pop
for file in pdf/songs/pop/changes*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #20

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

% \include "ly/ily/layout-songs.ily"

\layout { 
    indent = 2\cm
}

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

    \tempo 4=100
    \key c \major
    \time 4/4
    s1*7
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -4 . 3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 2 )
    % "Verse 1"
    s1*7
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


saxophoneOut = \relative c' { 
    r2 \tuplet 3/2 { c4 d e } | e4  d8 \mordent c d4 r | 
    \tuplet 3/2 2 { r4 a' g  e d c } |  ef4 ~ \tuplet 3/2 { ef8 d \mordent c ~ } 8 d r4  | 
    \tuplet 3/2 { r4 e d } c4 d | r f ~ 8 e f4 | 
    f8 e f e ~ 2 | 
}

melodySong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    \saxophoneOut
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}
backupsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2


}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

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
  \bookOutputSuffix "sax-solo-for-Eb-and-Bb"
    \header {
        subtitle = ""
        poet =  ""
        instrumentName = ""
    }
    \score {
        \transpose ef, c <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff \with {
                instrumentName = "Eb Sax"
            } \transpose c c { 
                % \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \saxophoneOut
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }

    \header {
        subtitle = ""
        poet = ""
        instrumentName = "Bb Sax"
    }
    \score {
        \transpose bf, c <<
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff \with {
                instrumentName = "Bb Sax"
            } \transpose c c { 
                % \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \saxophoneOut
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }
}
