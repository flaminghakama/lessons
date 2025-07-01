\version "2.24.0"

titleLeft = "Happy"
titleRight = "People"
titleFull = "Happy People"
composerName = "K. Garrett"
arranger = ""
copyright = ""

%{

killPreview ; rm happy-people*pdf ;  lilypond ly/songs/jazz/happy-people.ly  ; for file in happy-people*.pdf ; do op $file ; done  

killPreview
rm happy-people*pdf
lilypond ly/songs/jazz/happy-people.ly
mv happy-people*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/happy-people*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #5

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.padding = #3

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0

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

    \key a \minor
    \tempo 4=80

    \startSection "Intro"
    \startRepeat
    s1*2

    \startSection "A"
    \repeat volta 2 {
        \sDoubleRepeat
        s1*4 
        s1*3
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "B"
    s1*8

    \startSection "C"
    s1*4
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . -1 )
    % "Intro"
    s1*2 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    % "A"
        s1*4 
        s1*5 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    % "B"
    s1*8 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    % "C"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForBass = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . -1 )
    % "Intro"
    s1*2 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    % "A"
        s1*4 
        s1*5 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    % "B"
    s1*8 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    % "C"
}

chordsIntro = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    a1:m | s |
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    a1:m | s | s | s | 
    f1:maj7 | d:m7 | a:m | s || s || 

    a1:7 | d:7 | a2:m7 d:7 | a1:m | 
    a1:7 | d:7 | a2:m7 d:7 | a1:m | 
    
    a1:m | s | s | s ||
}

bassIntro = \relative c { 
    \repeat percent 2 { a8 e'  d16 e8 a,16 ~ 16 e'8 g16 ~ 8 e | }
}

bassline = \relative c { 
    \repeat percent 4 {
        a8 e'  f16 e8 a,16 ~ 16 e'8 g16 ~ 8 e |
    }
    f8 c'  d16 c8 f,16 ~ 16 c'8 e,16 ~ 8 b' | 
    d,8 a'  b16 a8 d,16 ~ 16 a'8 b,16 ~ 8 bf | 
    \repeat percent 3 {
        a8 e'  f16 e8 a,16 ~ 16 e'8 g16 ~ 8 e |
    }

    cs'8 a  e16 a8 cs16 ~ 16 a8 e16 ~ 8 a | 
    d8 b  fs16 b8 d16 ~ 16 a8 fs16 ~ 8 a | 
    \repeat percent 2 {
        a,8 e'  f16 e8 a,16 ~ 16 e'8 g16 ~ 8 e |
    }

    cs'8 a  e16 a8 cs16 ~ 16 a8 e16 ~ 8 a | 
    d8 b  fs16 b8 d16 ~ 16 a8 fs16 ~ 8 a | 
    \repeat percent 2 {
        a,8 e'  f16 e8 a,16 ~ 16 e'8 g16 ~ 8 e |
    }

    \repeat percent 4 {
        a,8 e'  f16 e8 a,16 ~ 16 e'8 g16 ~ 8 e |
    }
}


melody = \relative c'' { 
    e8 16 16  d16 8 b16  r b [ r d ~ ] 4 ~ | 2. r4 | 
    d8 16 16  c16 8 a16  r a [ r c ~ ] 4 ~ | 2. r4 |

    c8 16 16  b16 8 f16 ~ 4 r8 c'8 ~| 4 b16 8 f16 ~ 4. r8 | 
    b8 16 16  a16 8 16 ~ 2 ~ | 2. r4 || a2.\repeatTie r8 a ||  

    cs4 e8. a16 r4 r8 a, | d4 fs8. a16 r4 d,16 a c8 ~ | 
    c4 ~  16 d e d ~  8. c16  a g a8 ~ | 2. r8 a | 
    cs4 e8. a16 r4 r8 a, | d4 fs8. a16 r4 d,16 a c8 ~ | 
    c4 ~  16 d e d ~  8. c16  a g a8 ~ | 4  r16 e' g a  c d ef d  c a g a ||

    a8 b  r4  r8 e,16 g  a8 8 | a f  r4  r16 f, a c  d e f a | 
    c8 d c a  c a  e16 c d8 | c8 4 a8 r2 ||  
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsIntro
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \clef bass 
                        \bassIntro
                        \clef treble
                        \melody
                    }
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
        }
    }
}

\book {
  \bookOutputSuffix "Bass"
    \header {
        title = \title
        composer = \composerName
        poet = "Bass"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsIntro
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \clef bass 
                        \bassIntro
                        \bassline
                    }
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
        }
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsIntro
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \clef treble 
                        \transpose c,,, c \bassIntro
                        \melody
                    }
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
        }
    }
}


\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsIntro
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \clef treble 
                        \transpose c,, c \bassIntro
                        \melody
                    }
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
        }
    }
}

