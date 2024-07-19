\version "2.24.0"

titleLeft = "Sun"
titleRight = "beams"
titleFull = "Sunbeams"
composerName = "L. L. Smith"
arranger = ""
copyright = ""

%{

killPreview ; rm sunbeams*pdf ;  lilypond ly/songs/jazz/sunbeams.ly  ; for file in sunbeams*.pdf ; do op $file ; done  

killPreview
rm sunbeams*pdf
lilypond ly/songs/jazz/sunbeams.ly
mv sunbeams*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/sunbeams*.pdf ; do op $file ; done  

git add . ; git commit -m"transposed" ; git push 
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
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #2

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

    \key bf \major
    \tempo 2=168
    \time 3/4

    \partial 4. 
    s4. 
    \startSection "Intro"
    \startRepeat
    s2.*4 \break

    \startSection "A"
    \bar ":|][|:"
    s2.*4 \break
    s2.*4 \break

    \startSection "B"
    \endRepeat

    s2.*4 \break
    s2.*4 \break

    \startSection "A"
    s2.*4 \break
    s2.*4 \break
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

     4. 
    s4. 
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Intro"
    s2.*4

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s2.*4
    s2.*4

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
    s2.*4
    s2.*4

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s2.*4
    s2.*4
}

rehearsalMarkTweaksForBb = \relative c' { 
}

rehearsalMarkTweaksForEb = \relative c' { 
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s4. || bf2.:maj7 | s | s | s ||

    bf2.:maj7 | s | s | s | 
    bf2.:maj7 | s | s | s | 

    bf2.:min7 | s | s | s | 
    bf2.:min7 | s | s | s | 

    bf2.:maj7 | s | s | s | 
    bf2.:maj7 | s | s | s | 
}

bassIntro = \relative c {
    f8 r f || d4. f8 r f | f,4. f'8 r f | d4. f8 r f | f,4. f'8 r f ||
}

melody = \relative c'' {
    \customScripts #flaming-articulations
    \accidentalStyle modern-cautionary
    a4. f | d bf' | a f | d c |
    d2. ~ | 2. ~ | 2. ~ | 2 r4 ||
    f4. df | bf gf' | f df | bf af |
    bf2. ~ | 2. ~ | 2. ~ | 2 r4 ||
    a'4. f | d bf' | a f | d c |
    d2. ~ | 2. ~ | 2. ~ | 2 r4 ||
}

melodyForFlats = {
    \customScripts #flaming-articulations
    \accidentalStyle modern-cautionary
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
        \transpose bf bf <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \clef bass 
                        \bassIntro 
                        \clef treble
                        \melody
                    }
                >>
            }
        >>
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
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    {
                        \transpose c, c \bassIntro 
                        \melodyForFlats
                    }                
                >>
            }
        >>
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
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForEb
                    {
                        \transpose c, c \bassIntro 
                        \melodyForFlats
                    }                
                >>
            }
        >>
    }
}

