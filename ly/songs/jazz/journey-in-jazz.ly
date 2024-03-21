\version "2.24.0"

titleLeft = "Journey In"
titleRight = "Jazz: Transitions"
titleFull = "Journey In Jazz: Transitions"
composerName = "M. Berry"
arranger = ""
copyright = ""

%{

killPreview ; rm journey-in-jazz*pdf ;  lilypond ly/songs/jazz/journey-in-jazz.ly  ; for file in journey-in-jazz*.pdf ; do op $file ; done  

killPreview
rm journey-in-jazz*pdf
lilypond ly/songs/jazz/journey-in-jazz.ly
mv journey-in-jazz*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/journey-in-jazz*.pdf ; do op $file ; done  

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
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #15

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #4

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

\defineBarLine "||:" #'("|" "[|:" ".|")


structureStompinToTea = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )

    \key df \major
    \time 4/4
    \partial 4
    s4
    \startSection "Last A of Stompin'"
    s1*4 \break

    \startSection "Transition Lick"
    \bar "||:"
    s1*4 \break

    \startSection "Continue Lick"
    \repeat volta 4 {
        \doubleRepeat
        s1*3
    }
    \alternative {
        { s1 \endRepeat }
        { s1 \break }
    }
    \key af \major
    \startSection "First A of Tea"
    s1*4 
    \bar ""
    \noPageBreak
}


structureTeaToPerdido = \relative c' { 

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    \override Staff.TimeSignature.stencil = ##f

    \key af \major
    \startSection "Last B of Tea"
    s1*4 \break 
    s1*4 \break 
    
    \startSection ""
    \startRepeat 
    s1*4 \break

    \startSection ""
    \endRepeat
    s1*4 \break

    \startSection ""
    s1*4 \break

    \key bf \major
    \startSection "First A of Perdido"
    s1*4 \break 
    \bar ""
}

rehearsalMarkTweaksStompinIntoTea = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 1 )

    s4
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Last A of Stompin'"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -9 . 0 )
    % "Transition to Tea"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -9 . 0 )
    % "Continue Lick"
        s1*3
        s1
        s1

    \once \override Score.RehearsalMark.extra-offset = #'( -7 . 0 )
    % "First A of Tea"
    s1*4 
}

rehearsalMarkTweaksTeaIntoPerdido = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 1 )

    \once \override Score.RehearsalMark.extra-offset = #'( -7 . 0 )
    % "Last B of Tea"
    s1*4 
    s1*4 
    
    s1*4
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -6 . 0 )
    % "A of Perdido"
    s1*4 

}

chordsStompinToTea = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    af4:7
    df1:maj7 | s2 af:7 | df1:maj7 | s2 d:dim7 | 

    ef1:m7 | af:7 | f:m7 | bf:7 ||

    b2:maj7 bf:m7 | af:m7 gf:maj7 | f1:m7 | bf:7 || f:7 ||

    bf2:m7 ef:7 | bf:m7 ef:7 | af:maj7 df:7 | c:m7 b:dim7 | 
}
chordsTeaToPerdido = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    bf2:m7 ef:7 | bf:m7 ef:7 | af:maj7 df:7 | c:m7 b:dim7 | 
    bf2:m7 ef:7 | bf:m7 ef:7 | c1:m7.5- | f:7.9- ||

    bf2:m7 af/c | df:7 d:dim7 | af/ef g:m/d | df c:7.9+ ||
    b2:m7 a/cs | d:7 ds:dim7 | a/e af:m/ef | d cs:7.9+ ||
    c2:m7 bf/d | ef:7 e:dim7 | bf/f a:m/e | ef d:7.9+ ||

    c1:m7 | f:7 | bf:6 | d2:m7 g:7 |
}

melodyStompinToTeaLick = \relative c'' { 
        r8 f4.  df8 bf \tuplet 3/2 { gf8 bf df } | f8 df f df r2 |
        r8 g4.  ef8 c \tuplet 3/2 { af8 c ef } | g8 ef g ef r2 |
}

melodyStompinToTea = \relative c'' { 
    \accidentalStyle default
    << 
        \relative c' { 
            f8 af ~ || 
            af1 ~ | 4 r f4. af8 ~ | 1 ~ | 4 bf4\rest  
        } \\
        \relative c' { 
            s4 ||
            r8 af bf [ f' ] c4 af8 bf ~ | 2 r | 
            r8 af bf [ f' ] c4 af8 bf ~ | 2  
        } 
    >> \comp #2
    \melodyStompinToTeaLick

    <>\xmf
    \comp #20 || 
    \relative c'' { 
        af4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4 r |
    }
}

melodyTeaIntoPerdido = \relative c'' { 
    \accidentalStyle default

    af4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4. ef8 |
    af4. f8 g4. f8 | af4. f8 g4. ef8 | ef'1 ~ | 2 r | 

    <>\xmf
    \comp #16 || 

    <>\xmf
    \comp #16 || 

    <>\xmf
    \comp #15 r8 c, ||
    ef8 f4. ~ 4 r8 c8 | ef8 f4 c8 ef f4 bf,8 | d8 f4. ~ 4 r8 bf, | d8 f4 bf,8 d f4 c8 |
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
                \chordsStompinToTea
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureStompinToTea
                    \rehearsalMarkTweaksStompinIntoTea
                    \melodyStompinToTea
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            indent = 0.4\cm
            short-indent = 0.4\cm
        }
    }
    \score {
        \transpose af af <<
            \new ChordNames { 
                \chordsTeaToPerdido
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureTeaToPerdido
                    \rehearsalMarkTweaksTeaIntoPerdido
                    \melodyTeaIntoPerdido
                >>
            }
        >>
        \layout { 
            indent = 0.4\cm
            short-indent = 0.4\cm
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
                \chordsStompinToTea
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureStompinToTea
                    \rehearsalMarkTweaksStompinIntoTea
                    \melodyStompinToTea
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            indent = 0.4\cm
            short-indent = 0.4\cm
        }
    }
    \score {
        \transpose bf, c <<
            \new ChordNames { 
                \chordsTeaToPerdido
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureTeaToPerdido
                    \rehearsalMarkTweaksTeaIntoPerdido
                    \melodyTeaIntoPerdido
                >>
            }
        >>
        \layout { 
            indent = 0.4\cm
            short-indent = 0.4\cm
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
                \chordsStompinToTea
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureStompinToTea
                    \rehearsalMarkTweaksStompinIntoTea
                    \melodyStompinToTea
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            indent = 0.4\cm
            short-indent = 0.4\cm
        }
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \chordsTeaToPerdido
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureTeaToPerdido
                    \rehearsalMarkTweaksTeaIntoPerdido
                    \melodyTeaIntoPerdido
                >>
            }
        >>
        \layout { 
            indent = 0.4\cm
            short-indent = 0.4\cm
        }
    }
}

