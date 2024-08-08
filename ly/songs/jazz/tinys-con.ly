\version "2.24.0"

titleLeft = "Tiny's"
titleRight = "Con"
titleFull = "Tiny's Con"
composerName = "T. Kahn"
arranger = ""
copyright = ""

%{

killPreview ; rm tinys-con*pdf ;  lilypond ly/songs/jazz/tinys-con.ly  ; for file in tinys-con*.pdf ; do op $file ; done  

killPreview
rm tinys-con*pdf
lilypond ly/songs/jazz/tinys-con.ly
mv tinys-con*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/tinys-con*.pdf ; do op $file ; done  

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
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #17

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

    \key f \major
    \tempo 4=280
    \time 4/4

    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
        
    \override Score.RehearsalMark.extra-offset = #'( 2 . 6 )
    % "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( -4 . -2 )
    % "B"
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

    af1 | f:7 | bf:7 | s | 
    bf1:m7 | ef:7 | af | ef2:m7 d:7 | 

    df1 | df:m7 | af | f:7 | 
    bf1:7 | s | bf:m7 | ef:7 ||

    af1 | f:7 | bf:7 | s | 
    c1:7 | s | f:m | c:7 |

    f1:m | c:7 | f:m | af:dim7 | 
    af2 f:7 | bf:m7 ef:7 | af1 | bf2:m7 ef:7 ||
}

melody = \relative c'' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations

    % A
    % 1 
    \tuplet 3/2 { a8 as b } c8 a  \tuplet 3/2 { bf8 c bf } a8 g | 
    f4 d8 f \tuplet 3/2 { gf8 af gf } f8 ef | 
    d8 f bf e, r2 | 
    r2 r8 e4 ef8 | 

    % 4
    d8 a \tuplet 3/2 { bf8 d f  } a8 af g gf | 
    f8 ds e ef' r df r c | 
    r8 a bf [ c ] r4 r8 ds | 
    e8 bf b d r df r  c ~ ||

    % 9
    c8 a bf f' r4 r8 ef | 
    r8 df r ef df ef df c |
    r4 \tuplet 3/2 { a8 bf b } c8 bf a g |
    fs4 r8 df \tuplet 3/2 { ef8 f ef } d8 df |  
  
    % 13
    c4 a'8 e r2 | 
    r2 r8 e r d | 
    c8 a \tuplet 3/2 { bf8 d f } a8 af g gf | 
    f8 d ef ef' r df r4 ||


    % B
    % 17
    r4 


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
        \transpose af af <<
            \new ChordNames { 
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
        \transpose bf, c \transpose af af <<
            \new ChordNames { 
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
                        \clef treble 
                        \melody
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
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c \transpose af af <<
            \new ChordNames { 
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
                        \clef treble 
                        \melody
                    }
                >>
            }
        >>
    }
}

