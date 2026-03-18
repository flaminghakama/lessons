\version "2.24.0"

titleLeft = "Journey In"
titleRight = "Satchidananda"
titleFull = "Journey In Satchidananda"
composerName = "A. Coltrane"
arranger = ""
copyright = ""

%{

killPreview ; rm journey-in-satchidananda*pdf ;  lilypond ly/songs/jazz/journey-in-satchidananda.ly  ; for file in journey-in-satchidananda*.pdf ; do op $file ; done  

killPreview
rm journey-in-satchidananda*pdf
lilypond ly/songs/jazz/journey-in-satchidananda.ly
mv journey-in-satchidananda*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/journey-in-satchidananda*.pdf ; do op $file ; done  

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

    \key e \minor
    \tempo 4=68
    \time 3/4

    \startSection "Bass"
    \repeat volta 2 {
        \startRepeat
        s2.*4 \break
    }

    \startSection "Melody"
    \endRepeat
    s2.*16
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 1 . -2 )
    % "Bass"
        s2.*4 \break
        
    \once \override Score.RehearsalMark.extra-offset = #'( -5 . 1 )
    % "Melody"
        s2.*8 \break
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

    e2.:m | s | a:1.4.5.7 | s |

    e2.:m | s | a:1.4.5.7 | s |
    e2.:m | s | a:1.4.5.7 | s |

    e2.:m | s | a:1.4.5.7 | s |
    e2.:m | s | a:1.4.5.7 | s |
}


bassline = \relative c { 
    e2 r8 e | 4 g b8 g | a2 r8 a' | g4 e r8 d16 e | 

    % e2 r8 e | 4 g gs | a2 r8 a' | g4 e r8 d16 e | 
    % e2 r8 e | 4 g gs | a2 r8 a' | g4 e r8 d16 e | 
}


melodyA = \relative c' { 
    r8 e4. ~ 8 8 | b'4. a8 g [ e ]| g16 a8. ~ 2 ~ | 8 g4 e4 16 d | 
    r8 e32 fs e d e2 ~ | 4. b'4 a8 | g a8 ~ 2 ~ | 8 d4. r4 |

    R2. | r4 \tuplet 3/2 4 { e,8 g e  g e d } | c2. ~ | 2. |
    e32 df c8. ~  4 ~ 16 e32 df c8 | e32 df c8. ~  4 r  | R2.*2 ||  
}

melodyForC = {
    \clef bass
    \transpose c c, \bassline 
    \clef treble
    \melodyA 
}

melody = {
    \bassline 
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



