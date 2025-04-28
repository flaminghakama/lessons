\version "2.24.0"

titleLeft = "Eb-"
titleRight = "Pob"
titleFull = "Eb-Pob"
composerName = "T. Navarro & L. Parker"
arranger = ""
copyright = ""

%{

killPreview ; rm eb-pob*pdf ;  lilypond ly/songs/jazz/eb-pob.ly  ; for file in eb-pob*.pdf ; do op $file ; done  

killPreview
rm eb-pob*pdf
lilypond ly/songs/jazz/eb-pob.ly
mv eb-pob*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/eb-pob*.pdf ; do op $file ; done  

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
  system-system-spacing.padding = #2

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
    \tempo 4=205


    
    \partial 2 
    \grace { s8 } s2 

    \startSection "A"
    \repeat volta 2 {
        \bar "S[|:"
        s1*4
        s1*3
    }
    \alternative {
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "B"
    s1*4 \break 
    s1*4 \break 

    \startSection "A"
    s1*4 \break 
    s1*4 
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 3 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \grace { s8 }
    s2
    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -3 )
    % "A"
        s1*4
        s1*5

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*4 \break 
    s1*4 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
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
    \grace { s8 }
    s2 
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    bf1 | c2:m7 f:7 | bf1 | c2:m7 f:7 |
    bf2 g:7 | c:m7 f:7 | bf1 | s || s ||
    d1:7 | s | df:7 | s | 
    c1:7.5- | s | f:7.5- | s ||
    bf1 | c2:m7 f:7 | bf1 | c2:m7 f:7 |
    bf2 g:7 | c:m7 f:7 | bf1 | c2:m7 f:7 ||
}


melodyA = \relative c'' { 
    \grace { bf16 ( g } f8 ) g bf df ~ | 8 bf c4 ~ 4. bf8 ~ |
    bf8 8 af8 8 g8 8 gf f ~ | 4 2. |
    r2 \grace { g16 ( f } d8 ) f g af ~ | 8 f g4 ~ 4. f8 ~ | 
    f8 8 ef8 8 df8 8 c bf ~ | 4 2. | 
}
melodyAFirstEndings = \relative c'' { 
    r2 \grace { bf16 ( g } f8 ) g bf df \laissezVibrer ||
    R1 ||
}
melodyB = \relative c'' { 
    d4 d, d'4. 8 | r d, r d  d'8 8 d,4 | 
    df'4 df, df'4. 8 | r df, r df  df'8 8 df,4 | 
    r4 c'8 8 gf'8 8 c,4 | gf'4 2. | 
    r4 f,8 8 b8 8 f4 | b2  
}

melody = {
    \melodyA 
    \melodyAFirstEndings
    \melodyB
    \melodyA R1 
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
            indent = 0.25\cm
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
            indent = 0.25\cm
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
            indent = 0.25\cm
        }
    }
}



