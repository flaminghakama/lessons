\version "2.24.0"

titleLeft = "Shiva-"
titleRight = "Loka"
titleFull = "Shiva-Loka"
composerName = "A. Coltrane"
arranger = ""
copyright = ""

%{

killPreview ; rm shiva-loka*pdf ;  lilypond ly/songs/jazz/shiva-loka.ly  ; for file in shiva-loka*.pdf ; do op $file ; done  

killPreview
rm shiva-loka*pdf
lilypond ly/songs/jazz/shiva-loka.ly
mv shiva-loka*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/shiva-loka*.pdf ; do op $file ; done  

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

    \key g \minor
    \tempo 4.=108
    \time 12/8

    \startSection "Bass"
    \repeat volta 2 {
        \startRepeat
        s1.*7
    }
    \alternative { 
        { s1. \endRepeat }
        { s1. }
    }

    \startSection "Melody"
    \endRepeat
    s1.*8
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 1 . -2 )
    % "Bass"
        s1.*4 \break
        s1.*5 \break
        
    \once \override Score.RehearsalMark.extra-offset = #'( -5 . 1 )
    % "Melody"
        s1.*4 \break
        s1.*4 \break
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsIntro = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    g1.:m | s | s | s | 
    g1.:m | s | s | s || s ||

    g1.:m | s | s | s | 
    g1.:m | s | s | s | 

}


bassline = \relative c { 
    g4. ~ 4 8 r4. g ~ | 4 d8  f4 g8  bf4.  8 ( \glissando c4 ) |
    g4. ~ 4 8 r4. g ~ | 4 d8  f4 g8  bf8 g bf  bf8 ( \glissando c4 ) |

    g4. ~ 4 8 r4. g ~ | 4 d8  f4 g8  bf4.  8 ( \glissando c4 ) |
    g4. ~ 4 8 r4. g ~ | 4 d8  f4 g8  bf8 g bf  bf8 ( \glissando c4 ) |
}


melodyA = \relative c'' { 
    r8 a4 ~ 4. ~ 2. ||
    g4 bf8 ~ 4. ~ 4. a4 c8 ~ | 2. ~ 8 d4  bf8 g4 ~ | 
    g2. ~ 4. ~ 8 f16 d f g ~ | 4. ~ 4 f8  d4. c16 d4 c16 | 
    d2. ~ 8 f8 8  g4. ~ | 4. f4 r8  r4.  d |
    d4. ~ 4 f8 ~ 4 d8 f4 d8 | g4 bf8 g4. f2. |            
}

melodyForC = {
    \clef bass
    \transpose c, c \bassline 
    \clef treble
    \melodyA 
}

melody = {
    \transpose c,, c \bassline 
    \melodyA 
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
                    \melodyForC
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
        \transpose bf, c <<
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
                    \melody
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
        \transpose ef, c <<
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
                    \melody
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



