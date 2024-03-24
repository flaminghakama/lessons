\version "2.24.0"

titleLeft = "So"
titleRight = "What"
titleFull = "So What"
composerName = "M. David"
arranger = ""
copyright = ""

%{

killPreview ; rm so-what*pdf ;  lilypond ly/songs/jazz/so-what.ly  ; for file in so-what*.pdf ; do op $file ; done  

killPreview
rm so-what*pdf
lilypond ly/songs/jazz/so-what.ly
mv so-what*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/so-what*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #12

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #17

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
    \context { 
        \Score 
        \override StaffGrouper.staff-staff-spacing.padding = #3
    }
}



structureInto = \relative c' { 

    \key d \minor
    \tempo "Rubato" 4=54
    \time 4/4
    \partial 4
    s4 

    \startSection "Intro"
    s1*3 \break
    s1*3 \break
    s1*4


}


structure = \relative c' { 

    \key d \minor
    \tempo 4=136
    \time 4/4

    s1
    \startSection "A"
    \repeat volta 2 { 
        \startRepeat
        s1*4 
        s1*3 
    }
    \alternative {
        { s1 \endRepeat \break }
        { s1 }
    }
    \startSection "B"
    s1*4 
    s1*3 \break
    s1 

    \startSection "A"
    s1*4 \break
    s1*4 

    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 2 )

    s1
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s1*4 
    s1*3 
    s1
    s1

    \override Score.RehearsalMark.extra-offset = #'( 0 . -2 )
    % "B"
    s1*4 
    s1*4 

    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "A"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

introRehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.MetronomeMark.extra-offset = #'( -3 . 2 )
    s4

    \override Score.RehearsalMark.extra-offset = #'( 1 . 2 )
    % "Intro"
}
introRehearsalMarkTweaksForBb = \relative c' { 
    \introRehearsalMarkTweaksForC
}

introRehearsalMarkTweaksForEb = \relative c' { 
    \introRehearsalMarkTweaksForC
}


chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    R1 ||
    
    d1:m | s | s | s | 
    d1:m | s | s | R1 || R1 ||

    ef1:m | s | s | s | 
    ef1:m | s | s | s ||

    d1:m | s | s | s | 
    d1:m | s | s | s ||
}

melodyTop = \relative c'' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations

    R1 ||
    r2  <>^\markup { "Horns 2nd X only" } <b g d>4. <a f c>8 | R1 | 
    r2  <b g d>4. <a f c>8 | R1 | 
    r2  <b g d>4. <a f c>8 | R1 |
    r2  <>^\markup { "Horns TACET (piano only)" } <b g d>4. <a f c>8 | R1 || R1 ||

    r2  <>^\markup { "Tutti" } <c af ef>4. <bf gf df>8 | R1 | 
    r2  <c af ef>4. <bf gf df>8 | R1 | 
    r2  <c af ef>4. <bf gf df>8 | R1 | 
    r2  <>^\markup { "Horns TACET (piano only)" } <c af ef>4. <bf gf df>8 | R1 | 

    r2  <>^\markup { "Tutti" } <b g d>4. <a f c>8 | R1 | 
    r2  <b g d>4. <a f c>8 | R1 | 
    r2  <b g d>4. <a f c>8 | R1 |
    r2  <>^\markup { "Horns TACET (piano only)" } <b g d>4. <a f c>8 | R1 ||
}

melodyBottom = \relative c' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations

    s1 ||
    s2  <a e>4. <g d>8 | s1 | 
    s2  <a e>4. <g d>8 | s1 | 
    s2  <a e>4. <g d>8 | s1 |
    s2  <a e>4. <g d>8 | s1 || s1 ||

    s2  <bf f>4. <af ef>8 | s1 | 
    s2  <bf f>4. <af ef>8 | s1 | 
    s2  <bf f>4. <af ef>8 | s1 | 
    s2  <bf f>4. <af ef>8 | s1 | 

    s2  <a e>4. <g d>8 | s1 | 
    s2  <a e>4. <g d>8 | s1 | 
    s2  <a e>4. <g d>8 | s1 |
    s2  <a e>4. <g d>8 | s1 ||
}


bassIntro = \relative c { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    a8 e' ||
    af2. a,8 e' | a2. a,8 e' | g2. 

    a,8 e' |
    g8 a, f' a, e' a, f' g ~ | \fermata g2 

    r8 g, e' [ a, ] |
    ef'8 af, ef'2 d4 ~ | 1 | 1 | 

    e,4. 8 a bf? ef bf | << { a1 } \\ { c,4\rest e4 ~ \fermataBelow e2 } >>
}

pianoIntroRightHand = \relative c' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    s4 ||
    r4 <ef af ef'> \fermata <df f df'>2 | 
    r4 <d g b> \fermata <c f a>2 | 
    r4  << { \fermata <f a>4 \fermata <g b>2 } \\
           { d2. }
        >> |

    R1 | R1 | R1 |

    \fermata <b e gs>8 <cs fs as> <d g b> <cs fs as>  
        \fermata <d g b>4  \fermata <e a c>8 <d g b> |

    <c f a>8 <b e gs>  \fermata <c f a>4  
        \tuplet 3/2 { \fermata <cs fs as>4  \fermata <b e gs>  \fermata <af df f> } |

    R1 | R1 ||
}

pianoIntroRightHandForFlats = \relative c' { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    s4 ||
    r4 <ef af ef'> \fermata <df f df'>2 | 
    r4 <d g b> \fermata <c f a>2 | 
    r4  << { \fermata <f a>4 \fermata <g b>2 } \\
           { d2. }
        >> |

    R1 | R1 | R1 |

    \fermata <cf ff af>8 <df gf bf> <d g b> <df gf bf>  
        \fermata <d g b>4  \fermata <e? a c>8 <d g b> |

    <c f a>8 <cf ff af>  \fermata <c f a>4  
        \tuplet 3/2 { \fermata <df gf bf>4  \fermata <cf ff af>  \fermata <af df f> } |
    R1 | R1 ||
}


bassline = \relative c, { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations

    \stemUp \slurUp
    d'8\rest d, a' [ b ] \stemDown  c d ( e ) c ||
    d1 | \stemUp d8\rest d, a' [ b ]  \stemDown c d ( e ) c | 
    d8  a2.. | \stemUp d8\rest d, a' [ b ]  \stemDown c d ( e ) c |
    d1 | d8\rest e4. 4 4 | d4. a8 ~ 2 | 
    \stemUp d8\rest d, a' [ b ]  \stemDown c d ( e ) c || 

    d8\rest \stemUp ef, bf' [ c ]  \stemDown df ef ( f ) df ||
    ef1 | \stemUp d8\rest ef, bf' [ c ]  \stemDown df ef ( f ) df | 
    ef8 \stemUp bf2.. | \stemUp d8\rest ef, bf' [ c ]  \stemDown df ef ( f ) df |
    ef1 | \stemUp d8\rest ef, bf' [ c ]  \stemDown df ef ( f ) df | 
    ef8 bf2.. | 

    d8\rest \stemUp d, a' [ b ]  \stemDown c d ( e ) c ||
    d1 | \stemUp d8\rest d, a' [ b ]  \stemDown c d ( e ) c | d8 a2.. | 
    \stemUp d8\rest d, a' [ b ]  \stemDown c d ( e ) c |
    d1 | d8\rest e4. 4 4 | 
    d4. a8 ~ 2 | 

        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        d4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        d4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        d4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        d4 

}

basslineForBb = \relative c, { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations

    \stemUp \slurDown
    a''8\rest d,, a' [ b ]  c d ( e ) c ||
    d1 | a'8\rest d,, a' [ b ]  c d ( e ) c | 
    d8  a2.. | a'8\rest d,, a' [ b ]  c d ( e ) c |
    d1 | a'8\rest e4. 4 4 | d4. a8 ~ 2 | 
    a'8\rest d,, a' [ b ]  c d ( e ) c || 

    a'8\rest ef, bf' [ c ]  df ef ( f ) df ||
    ef1 | a'8\rest ef,, bf' [ c ]  df ef ( f ) df | 
    ef8 bf2.. | a'8\rest ef, bf' [ c ]  df ef ( f ) df |
    ef1 | a'8\rest ef,, bf' [ c ]  df ef ( f ) df | 
    ef8 bf2.. | 

    a'8\rest d,, a' [ b ]  c d ( e ) c ||
    d1 | a'8\rest d,, a' [ b ]  c d ( e ) c | d8 a2.. | 
    a'8\rest d,, a' [ b ]  c d ( e ) c |
    d1 | a'8\rest e4. 4 4 | 
    d4. a8 ~ 2 | 

        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        a'4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        a4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        a4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        a4 

}

basslineForEb = \relative c, { 
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations

    d'8\rest d, a' [ b ]  c d ( e ) c ||
    d1 | d8\rest d, a' [ b ]  c d ( e ) c | 
    d8  a2.. | d8\rest d, a' [ b ]  c d ( e ) c |
    d1 | d8\rest e4. 4 4 | d4. a8 ~ 2 | 
    d8\rest d, a' [ b ]  c d ( e ) c || 

    d8\rest ef, bf' [ c ]  df ef ( f ) df ||
    ef1 | d8\rest ef, bf' [ c ]  df ef ( f ) df | 
    ef8 bf2.. | d8\rest ef, bf' [ c ]  df ef ( f ) df |
    ef1 | d8\rest ef, bf' [ c ]  df ef ( f ) df | 
    ef8 bf2.. | 

    d8\rest d, a' [ b ]  c d ( e ) c ||
    d1 | d8\rest d, a' [ b ]  c d ( e ) c | d8 a2.. | 
    d8\rest d, a' [ b ]  c d ( e ) c |
    d1 | d8\rest e4. 4 4 | 
    d4. a8 ~ 2 | 

        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        d4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        d4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        d4 
        \once \override Staff.NoteHead.style = #'slash
        \once \hide Stem
        d4 

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
        \new StaffGroup \transpose d d <<
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureInto
                    \introRehearsalMarkTweaksForC
                    \pianoIntroRightHand
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \clef bass
                    \structureInto
                    \introRehearsalMarkTweaksForC
                    \bassIntro
                >>
            }
        >>
    }

    \score {
        \new StaffGroup \transpose d d <<
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyTop
                >>
            }
            \new ChordNames {
                \chordsForm 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \clef bass
                    \structure
                    \rehearsalMarkTweaksForC
                    <<
                        \melodyBottom \\
                        \bassline
                    >>
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
        \new StaffGroup \transpose bf, c <<
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureInto
                    \introRehearsalMarkTweaksForC
                    \pianoIntroRightHandForFlats
                >>
            }
            \new Staff \transpose c, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureInto
                    \introRehearsalMarkTweaksForC
                    \bassIntro
                >>
            }
        >>
    }

    \score {
        \new StaffGroup \transpose bf, c <<
            \new Staff \transpose c, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    << 
                        \melodyTop 
                        \melodyBottom
                    >>
                >>
            }
            \new ChordNames {
                \chordsForm 
            }
            \new Staff \transpose c, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \basslineForBb
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
        \new StaffGroup \transpose ef, c <<
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureInto
                    \introRehearsalMarkTweaksForC
                    \pianoIntroRightHandForFlats
                >>
            }
            \new Staff \transpose c, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureInto
                    \introRehearsalMarkTweaksForC
                    \bassIntro
                >>
            }
        >>
    }

    \score {
        \new StaffGroup \transpose ef, c <<
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    << 
                        \melodyTop \\
                        \melodyBottom
                    >>
                >>
            }
            \new ChordNames {
                \chordsForm 
            }
            \new Staff \transpose c, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \basslineForEb
                >>
            }
        >>
    }
}

