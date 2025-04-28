\version "2.24.0"

titleLeft = "Air"
titleRight = "Conditioning"
titleFull = "Air Conditioning"
composerName = "C. Parker"
arranger = ""
copyright = ""

%{

killPreview ; rm air-conditioning*pdf ;  lilypond ly/songs/jazz/air-conditioning.ly  ; for file in air-conditioning*.pdf ; do op $file ; done  

killPreview
rm air-conditioning*pdf
lilypond ly/songs/jazz/air-conditioning.ly
mv air-conditioning*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/air-conditioning*.pdf ; do op $file ; done  

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

    \key bf \major
    \tempo 2=110


    \startSection "Head"
    \repeat volta 2 {
        \startRepeat
        s1*4 \break
        s1*4 \break
        s1*3
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 \break }
    }


    \startSection "Solos"
    \repeat volta 2 {
        \startRepeat
        s1*4 \break
        s1*4 \break
        s1*4
        \endRepeat
    }

}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 1 . -2 )
    % "Head"
        s1*4 \break
        s1*4 \break
        s1*5

    \once \override Score.RehearsalMark.extra-offset = #'( -5 . 1 )
    % "Solos"
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

    bf1 | s | s | s | 
    ef1:7 | s | bf1 | d2:m7 g:aug7 | 
    c1:m7 | f:7 | bf | s || s ||

    bf1:7 | ef:7 | bf:7 | f2:m7 bf:7 |
    ef1:7 | e:dim7 | bf:7 | d2:m7 g:7 | 
    c1:m7 | f:7 | bf2 g:7 | c:m7 f:7 ||
}


melodyA = \relative c'' { 
    bf4 f2 g4 ~ | 8 a r c  bf g ef' d | 
    r bf r ef  d4 r8 bf | f' bf, ef d r4 r8 bf ~ | 

    bf4 g8 f  bf ef d bf | ef4 2 r8 d | 
    r8 bf r c  \tuplet 3/2 { a8 bf a } f8 g | af fs g ef' ~ 4. c8 | 

    d4 r8 bf ~ 8 g bf4 | r8 f'4 8  e e ef ef | 
    d4 r8 a  bf c a bf | r4 r8 d r bf r g || r4 r8 d'  r bf r4 ||

    <>\xmp \comp #16
    <>\xmp \comp #16
    <>\xmp \comp #16
}

melody = {
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



