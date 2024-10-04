\version "2.24.0"

titleLeft = "Wein A"
titleRight = "Ramallah"
titleFull = "Wein A  Ramallah"
composerName = "trad. Palestine"
arranger = ""
copyright = ""

%{

killPreview ; rm wein-a-ramallah*pdf ; lilypond ly/songs/pop/wein-a-ramallah.ly ; for file in wein-a-ramallah*.pdf ; do op $file ; done  

killPreview
rm wein-a-ramallah*pdf
lilypond ly/songs/pop/wein-a-ramallah.ly
mv wein-a-ramallah*.pdf pdf/songs/pop
for file in pdf/songs/pop/wein-a-ramallah*.pdf ; do op $file ; done  

git add . ; git commit -m"changing accidental style" ; git push 
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
  system-system-spacing.basic-distance = #19

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

    \key c \minor
    \tempo 4=120
    \fourFour
    \startRepeat
    s1*3
    \twoFour
    s2  
    \fourFour
    s1*3
    \twoFour
    s2  
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 3 . 0 )
}

rehearsalMarkTweaksForBb = \relative c' { 
}

rehearsalMarkTweaksForEb = \relative c' { 

}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    c1:m | s | f2:m af4 bf || c2:m ||
    f:m af | bf c:m | f:m af4 bf | c2:m ||
}

melody = \relative c' {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    ef4 d8 bf c4 4 | r8 ef d [ bf ]  c d ef f | f ef f d  ef4 d8 bf || c4 4 ||
    r8 f f [ f ]  ef4 d8 c | r8 f f [ f ]  ef4 d8 c | f ef f d  ef4 d8 bf || c4 4 || 
}

bassline = \relative c {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    c8 c' r c  c,4 c' | c,8 c' r c  c,4 c' |
    f,8 f' r f  af,4 bf || c,8 c' r c ||
    f,8 f' r f  af,,4 af' | bf,8 bf' r bf  c,4 c' | 
    f,8 f' r f  af,4 bf | c,8 c' r c ||
}

\book {
  \bookOutputSuffix "Melody-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose d d <<
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
                    \transpose c, c \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Melody-for-C-bass-clef"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose d d <<
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
                    \clef bass
                    \transpose c c, \melody
                >>
            }
        >>
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
        \transpose d d <<
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
                    \clef bass
                    \bassline
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Melody-for-Bb"
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
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Melody-for-Eb"
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
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }
}

