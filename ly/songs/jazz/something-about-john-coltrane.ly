\version "2.24.0"

titleLeft = "Something About"
titleRight = "John Coltrane"
titleFull = "Something About John Coltrane"
composerName = "A. Coltrane"
arranger = ""
copyright = ""

%{

killPreview ; rm something-about-john-coltrane*pdf ;  lilypond ly/songs/jazz/something-about-john-coltrane.ly  ; for file in something-about-john-coltrane*.pdf ; do op $file ; done  

killPreview
rm something-about-john-coltrane*pdf
lilypond ly/songs/jazz/something-about-john-coltrane.ly
mv something-about-john-coltrane*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/something-about-john-coltrane*.pdf ; do op $file ; done  

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

    \key cs \minor
    \tempo 4.=108
    \time 9/8

    \startSection "Bass"
    \repeat volta 2 {
        \startRepeat
        s1*9/8*15
    }
    \alternative { 
        { s1*9/8 \endRepeat}
        { s1*9/8 }
    }

    \startSection "Melody"
    \endRepeat
    s1*9/8*4
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 1 . -2 )
    % "Bass"
        s1*9/8*4 \break
        s1*9/8*4 \break
        s1*9/8*4 \break
        s1*9/8*5 \break
        
    \once \override Score.RehearsalMark.extra-offset = #'( -5 . 1 )
    % "Melody"
        s1*9/8*4 \break
        s1*9/8*4 \break
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

    cs1*9/8:m | s | s | s | 
    cs1*9/8:m | s | s | s | 
    cs1*9/8:m | s | s | s | 
    cs1*9/8:m | s | s | s || s ||

    cs1*9/8:m | s | s | s | 
}


bassline = \relative c, { 
    cs4. gs' cs | cs4 b8  gs4 fs8  cs ( e ) b | 
    cs4.  gs'8 cs r  r cs4 ~ | 4 b8  gs4 fs8  cs ( e ) b | 

    cs4. gs' cs | cs4 b8  gs4 fs8  e4 b8  | 
    cs4.  gs'8 cs r  r cs4 ~ | 4 b8  gs4 fs8  cs ( e ) b | 

    cs4. gs' cs | cs4 b8  gs4 fs8  cs ( e ) b | 
    cs4.  gs'8 cs r  r cs4 ~ | 4 b8  gs4 fs8  e4 b8  |

    cs4.  gs'8 cs r  r cs4 ~ | 4 b8  gs4 fs8  cs ( e ) b |
    cs4. gs' cs | cs4 b8  gs4 fs8  cs ( e ) b | 
}

melodyA = \relative c'' { 
    r4.  r4 gs8 ~ 4 fs8 ||
    e2. ~ 8 ds cs | ds2. ~ 8 cs ds |
    cs4 e8 ~ 4. ~ 8 ds cs | ds cs gs ~ 4. as4 r8 | 
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



