\version "2.24.0"

titleLeft = "OW"
titleRight = "!"
titleFull = "OW!"
composerName = "J. B. 'D.' Gillespie"
arranger = ""
copyright = ""

%{

killPreview ; rm ow*pdf ;  lilypond ly/songs/jazz/ow.ly  ; for file in ow*.pdf ; do op $file ; done  

killPreview
rm ow*pdf
lilypond ly/songs/jazz/ow.ly
mv ow*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/ow*.pdf ; do op $file ; done  

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
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.padding = #4

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

    \key bf \major
    \tempo 4=208
    \time 4/4


    \partial 2
    s2

    \startSection "A"
    \repeat volta 2 {
        \bar "[|:"
        s1*6
    }
    \alternative {
        { s1*2 \endRepeat }
        { s1*2 }
    }

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    s2

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    s1*2 \break 
    s1*4 \break

    s1*2

    s1*2 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break
    
    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
    s1*4 \break
    s1*4 
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s2

    bf1:maj7 | c2:m7 f:13 | bf1:maj7  | c2:m7 f:13 |
    bf1:maj7 | c2:m7 f:7 | gf:7 f:7 | bf1:maj7 ||
                       | gf2:7 f:7 | bf1:maj7 ||

    d1:7 | s | g:7 | s |
    c1:7 | s | f:7 | s ||    

    bf1:maj7 | c2:m7 f:13 | bf1:maj7  | c2:m7 f:13 |
    bf1:maj7 | c2:m7 f:7 | gf:7 f:7 | bf1:maj7 ||
}

melodyLick = \relative c'' { 
    r8 d4. || f,4 r8 bf  \tuplet 3/2 { c16 [ df c } bf8 ] c df |
}
melodyEndingLick = \relative c'' {
    r8 c ~  \tuplet 3/2 { c16 [ df c } bf8 ] c4 r8 bf ~ | 
    \tuplet 3/2 { bf16 [ c bf } g8 ] bf4 
}

melodyB = \relative c'' { 
    r4 r8 d ||
    r8 c r fs,  b a r e | g4 a8 fs ~ 4 r8 f' | 
    r8 b, d [ f ] \tuplet 3/2 { e8 f e } d8 a | c4 d8 b ~ 4 r8 c | 

    r8 bf r e,  a g r d | f4 g8 e ~ 4 r8 ef' | 
    r8 a, c [ ef ] \tuplet 3/2 { d8 ef d } c8 g | bf4 c8 a  
}

melody = {
    \melodyLick r2 
    \melodyLick r2 
    \melodyLick R1 
    \melodyEndingLick \relative c'' { r8 d4. }
    \melodyEndingLick 
    \melodyB  
    \melodyLick r2 
    \melodyLick r2 
    \melodyLick R1 
    \melodyEndingLick r2 
}
melodyForFlats = {
    \melody
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
                    \melody
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 2.25\cm
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
        \transpose bf, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
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
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 2.25\cm
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
        \transpose ef, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
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
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 2.25\cm
        }
    }
}



