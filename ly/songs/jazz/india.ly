\version "2.24.0"

titleLeft = "India"
titleRight = ""
titleFull = "India"
composerName = "J. Coltrane"
arranger = ""
copyright = ""

%{

killPreview ; rm india*pdf ;  lilypond ly/songs/jazz/india.ly  ; for file in india*.pdf ; do op $file ; done  

killPreview
rm india*pdf
lilypond ly/songs/jazz/india.ly
mv india*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/india*.pdf ; do op $file ; done  

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
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #7

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

structure = \relative c' { 

    \key c \major
    \tempo 4=184
    \time 4/4

    \startRepeat
    s1*4 \break
    s1*4 \break
    s1*4 
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . -1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
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
    c1/g | s | s | s | 
    c1/g | s | s | s | 
    d1:1.4.5.7/g | s | c/g | s | 
}

melody = \relative c' { 
    c4 ( d2.-> ~ | 2. ) r4 | c4 ( d2.-> ~ | 2. ) r4 |
    c4 ( d2.-> ~ | 2. ) r4 | c4 ( d2.-> ~ | 2. ) r4 |
    r4 g2.-> | e2 c | c4 ( d2.-> ~ | 2. ) r4 |
}
harmony = \relative c' { 
    g4 2.-> ~ | 2. r4 | g4 2.-> ~ | 2. r4 |
    g4 2.-> ~ | 2. r4 | g4 2.-> ~ | 2. r4 |
    r4 d'2.-> | c2 a | g4 2.-> ~ | 2. r4 |
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
            \new PianoStaff \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 2))
            } <<
                \new Staff = "lead" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \melody
                        \noPageBreak
                    >>
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    \clef bass
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \harmony
                        \noPageBreak
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
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
            \new PianoStaff \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 2))
            } <<
                \new Staff = "lead" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \melody
                        \noPageBreak
                    >>
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \transpose c c \harmony
                        \noPageBreak
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
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
            \new PianoStaff \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 2))
            } <<
                \new Staff = "lead" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \melody
                        \noPageBreak
                    >>
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \transpose c c \harmony
                        \noPageBreak
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
        }
    }
}

