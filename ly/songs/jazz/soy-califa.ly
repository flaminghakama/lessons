\version "2.24.0"

titleLeft = "Soy"
titleRight = "Califa"
titleFull = "Soy Califa"
composerName = "D. Gordon"
arranger = ""
copyright = ""

%{

killPreview ; rm soy-califa*pdf ;  lilypond ly/songs/jazz/soy-califa.ly  ; for file in soy-califa*.pdf ; do op $file ; done  

killPreview
rm soy-califa*pdf
lilypond ly/songs/jazz/soy-califa.ly
mv soy-califa*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/soy-califa*.pdf ; do op $file ; done  

git add . ; git commit -m"3rd solo chorus" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

dsFineWithRepeatsMarkup = \markup { \bold \huge \center-column { "D.S. al Fine" "with repeats" } }
dsFine = <>_\dsFineWithRepeatsMarkup


scoop = #(define-music-function (graceNote note) (ly:music? ly:music?)
  #{
    \once \override Slur.extra-offset = #'(-1.6 . 0.6)
    %\once \override Slur.rotation = #'(-15 0 0)
    \hideNotes \appoggiatura { $graceNote } \unHideNotes $note
  #}
)

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #20

  % Spacing in between systems
  system-system-spacing.padding = #4.2

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

structureHead = \relative c' { 

    \key ef \major
    \tempo 2=110

    \startSection "Intro"
    s1*8

    \bar "S-double"
    s1*4

    \startSection "Head"
    \repeat volta 2 { 
        \startRepeat
        s1*4
        s1*4
    }

    \startSection "B"
    \endRepeat
    s1*4
    s1*4

    \startSection "A"
    s1*4
    s1*4

    \startSection "Interlude"
    s1*6
    s1*3
    \fine 
    s1

    \bar "|."

}


structure = \relative c' { 

    \structureHead

    \startSection "Solo"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4
    \startSection "B"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4
    \startSection "Solo Two"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4
    \startSection "B"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4

    \startSection "Solo Three"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4
    \startSection "B"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4

    \startSection "Solo Four"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4
    \startSection "B"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4

    \startSectionWithLabel "Piano" "Open"
    \repeat volta 2 { 
        \startRepeat
        s1*8
    }

    \startSectionWithLabel "Outro" "On Cue"
    s1*4
    s1*4
    s1*3
    s2
    \dsFine
    s2
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 3 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 4 . -1 )
    % "Intro"
    s1*8 
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . 1 )
    % "Head"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 0 )
    % "A"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "Interlude"
    s1*6 %\break
    s1*4 
}

rehearsalMarkTweaksForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 3 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 4 . -1 )
    % "Intro"
    s1*8 
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . 1 )
    % "Head"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 0 )
    % "A"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "Interlude"
    s1*6 %\break
    s1*4 

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 1 )
    % "Solo"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s1*4 \break
    s1*3 \pageBreak s1 


    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "Solo Two"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s1*4 \break
    s1*3 \pageBreak s1 


    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "Solo Three"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s1*4 \break
    s1*3 \pageBreak s1 


    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "Solo Four"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s1*4 \break  
    s1*4 

    \pageBreak 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "Piano"
    s1*8 
    \break 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "Outro"
    s1*4 \break 
    s1*4 \break 
    s1*4 
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsIntro = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

}

chordsHead = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s1*8 
    s1*4 ||

    ef1:1.4.5 | s | s | s | 
    ef1:1.4.5 | s | s | s || 

    d1:m7 | g:7.8+.9+ | c:7.11+ | s | 
    c1:m7 | f:7.8+.9+ | bf:7.11+ | s || 

    ef1:1.4.5 | s | s | s | 
    ef1:1.4.5 | s | s | s ||

    bf1:7 | s | ef | s | 
    bf1:7 | s | ef | s | 
    bf1:7 | s ||


}
chordsSolos = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    ef1:1.4.5 | s | s | s | 
    ef1:1.4.5 | s | s | s || 
    ef1:1.4.5 | s | s | s | 
    ef1:1.4.5 | s | s | s || 

    d1:m7 | g:7 | c:7 | s | 
    c1:m7 | f:7 | bf:maj7 | bf:7 || 

    ef1:1.4.5 | s | s | s | 
    ef1:1.4.5 | s | s | s ||
}
chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    \chordsHead

    \chordsSolos
    \chordsSolos
    \chordsSolos
    \chordsSolos

    ef1:1.4.5 | s | s | s | 
    ef1:1.4.5 | s | s | s | 
    ef1:1.4.5 | s | s | s || 
}

introTenorInBb = \relative c'' {
    c4-. r8 bf  r4 c-. | r8 bf r4  c-. r | bf8 8 8 8  c4-. r8 bf | r4 c4-. r2 ||
}

melodyAInBb = \relative c' {
    r4 r8 c  f g r bf | r a r g  a4 f-. | 
    r4 r8 c  f g r bf | r a r g  a4 r | 
}
melodyLastAInBb = \relative c' {
    r4 r8 c  f g r bf | r a r g  a4 f | 
    r4 r8 c  f g r bf | r a r g  a4*1/2-\tweak style #'zigzag \glissando 
        \single \hideNotes 
        \tweak X-offset #2 \tweak X-extent #'( 0 . 0 )
        a,4*1/2 r4 |
}
melodyATwoInBb = \relative c' {
    r4 r8 c  f g r bf | r a r g  a4 f | 
    r4 r8 c  f g r bf | r a r g  f4 r | 
}
harmonyAInBb = \relative c' {
    r4 r8 f  a bf r d | r c r bf  c4 a | 
    r4 r8 f  a bf r d | r c r bf  c4 r | 
}
harmonyATwoInBb = \relative c' {
    r4 r8 f  a bf r d | r c r bf  c4 a | 
    r4 r8 f  a bf r d | r c r bf  a4 r | 
}


melodyBInBb = \relative c'' { 
    a4 \tuplet 3/2 { a8 8 8 }  8 8 r8 a ~ | 4 8 c ~ 4 bf | 
    gs4. a8  r2 | R1 |

    g4 \tuplet 3/2 { g8 8 8 }  8 8 r8 g ~ | 4 8 bf ~ 4 af | 
    fs4. g8 ~ 2 | f8 8 8 e r2 |
}

melodyInterludeInBb = \relative c'' { 
    r4 r8 c  bf c r bf | r c r bf  r c r4 |
    r4 r8 c  a c r a | r c r a  r c r4 |
    r4 r8 c  bf c r bf | r c r bf  r c r4 |
    a8 8 8 8  c4-. r8 bf | r4 c-.  r8 bf r bf |
    c4-. r c4-. 4-. | R1 |
}

soloInBb = \relative c'' { 
    r4 r8 c  r c4. ~ | 1 | 
    r8 bf r c  r d ( c4-. ) | bf-. c4 2 |
    
    r4 \tuplet 3/2 { g8 ( a bf }  a8 ) 8  r g | r a4 8 g2 ~ | 
    g8 f r e  d8 4. ~  | 8 e r f  g4  f8 ( e ~ ||


    e8 f4. ) r2 | r4 r8 e  r f d [ bf ] | 
    a8 g4. ~ 4 \tuplet 3/2 { bf8 ( d f ) } | a2.. g8 | 

    f8 d ( bf g )  a g r c ~ | 4 r8 c ~ 4. a8 | 
    bf8 c ( d ) e  f d ( bf ) g | a c r4 r4 r8 e ||


    r8 e r4  e4. e8 ~  | 8 8 r d  cs4 a'8 g ( | 
    fs8 ) d ( a ) g (  fs ) d'4. | r2 r4 d8 e |

    f8 g e f  d4. a8 | c as ( b ) g' ~ 4 f8 ef |
    e c r4  c2 | f8 d ( bf ) f  a4-. r ||   


    r8 f' r a  r f r a | f4. a8 r2 | 
    r8 f r a  r a r a ~ | 8 f d4-.  f-. d8 f | 

    a8 f r f ~  2 ~ | 8 d r f  a c r a |
    f8 d r d ~ 2 | r4 r8 a' ~ 2 ~ ||
       
}
soloTwoInBb = \relative c'' { 
    a2  c4. a8 | bf c cs d  bf a g f |
    e8 g ( bf ) d (  c ) a r bf | r4 r8 g  \tuplet 3/2 { bf8 a ( g }  fs8 ) a | 

    g8 d f a  e4. d8 | c a \tuplet 3/2 4 { bf8 ( d f ) a ( bf b } c ) a |
    bf8 d, f a  g c,4. ~ | 4 r r r8 c ( ||


    df8 ) ef f g (  c,4. ) 8 ( | df ) ef f g  r a g4 |
    r2  bf8 ( a ) r c | bf2 ~ \tuplet 3/2 { bf4 g \grace { e8 ( } f4 ) } | 

    df4 ( c2. ~ | 8 ) 8 ( ~ \tuplet 3/2 { 8 df c ) } bf4-. a' | 
    g4. f8  e c4 r8 | R1 ||


    e8 ( g ) b d (  cs4 ) a-. | b4-. 8 g  r4 a ~ | 
    a4 g8 ( fs16  g  fs8 ) e d cs | e cs ( d ) e (  fs ) a r a |

    c8 a a b  g gs a f | e8 d c as (  b ) a' g f ( | 
    \tuplet 3/2 { e8 f d' } c8 ) af (  g ) f ( e ) d ( | c8 cs ) d bf (  a ) g r4 ||


    r4 c,8 g'  c g' c4-. | 4 g8 ( d )  g ( d ) c4-. |  
    r4 c'8 g  c g d4-. | g4 8 ( d ~  8 ) 8 ( c4 ~ | 

    c4 ) d-.   g4. c,8 | r d ( g4 ~ 8 ) c,  r d | 
    g ( [ a ] ) r g ~ 2 | r2 r4 r8
}
soloThreeInBb = \relative c'' { 
    g8 | c4 8 a  c8 8 r c ~ | 4. bf8  \tuplet 3/2 { c4 d e8 ( f ~ } |
    f4 )  e    d8 c4. ~ | 4. a8  bf4-. d ~ | 

    d8 a g4 ~  2 ~ | \tuplet 3/2 { g4 f a } e4 d8 c ~ |  
    c2 r | r8 c2.. ~ ||


    c4  d8 e  f g r4 | a8 ( bf ) fs a  g d r f | 
    e8 d2.. | bf8 c ( df ) ef (  f ) g ( af ) bf | 

    c8 df ef ( c )  r2 | r8 df4 ( \grace { ef16 df } bf8 )   c d, ( f ) a ( | 
    g8 ) f ( e ) d (  c ) bf d ( bf ) | a8 g r4  c-. r || 


    r4 cs8 d  e8 8 8 8 | 4-. \scoop g16 cs4 a4. g8 | 
    fs4. -\tweak style #'zigzag \glissando e'8 ( d ) a4. | r2 r4 r8 a |

    d4-. a8 d (  cs ) a r a | c a ( as ) b  r4 g8 a | 
    b8 c a b  g e c4-. | e8 ( f ) d bf (  a ) g r4 ||


    r4 r8 bf,  r d r f | r a r c  r a bf [ c ] |
    d8 e ( f ) g  \tuplet 3/2 { a4 g-. r } | bf8 ( a ) r c  bf4-. g-. | 

    bf4-. g-. a2 ~ | 4. g8  f g e ( f ) | 
    d2. r4 | 
}
soloFourInBb = \relative c'' { 
    r4 r8 a ~ 4. f8 || 
    a8 f a4  f8 a f4-. | a4 8 f  r f a4-. | 
    c4. a8  c a r c | a4-. 8 c  r c a4-. |

    r8 e' r c  e c r e ~ | 4. 8 \glissando g4. e8 | 
    e4. c8  4-. r | R1 ||


    r8 g'4. ~ 4 r | r4 r8 c  r g4. ~ | 
    g4. f8  e c4. ~ | 4 r  f2 ~ |

    2 d4-. r | r4 a8 c  a ( bf ) fs a | 
    g8 f e d  c ( bf ) d bf ( | a ) g ( f4-. ) c'2 ||


    r4 e8 ( ds )  e ( fs ) g4-. | b8 ( as ) b ( cs )  d4-. r | 
    d,8 ( cs ) d4-.  g4. f8 ( | fs ) a, ( b ) d  e c  ( d4 \glissando | 

    e'4. ef16 d  c8 ) a f e | d c b4-.  f'8 ( af g ) f |
    e8 f, ( a ) c  bf ( a g4 ) | c2 r || 


    c4 \tuplet 3/2 { c8 8 8 }  c8 8 r c ~ | 4 4-. 4 r | 
    r4 r8 c  r c r c | 4 r8 c' ~ 2 ~ |

    c4. a8  c a4. ~ | 2  r8 f r a | 
    f8 d r f   d bf r d | bf g r bf  g d r f || 

    e4-. c2. ~ | 2. r4 | R1*6 

}

melodyOutroInBb = \relative c' { 
    c4-. r8 g  bf8 ( c ) r g ~ | 4 bf-. c-. g-. | 
    c4-. r8 g  bf8 ( c ) r g ~ | 4 bf-. c-. r | 

    e4-. r8 c  d8 ( e ) r c ~ | 4 d-. e-. c-. | 
    e4-. r8 c  d8 ( e ) r c ~ | 4 d-. e-. r | 

    g4-. r8 e f8 ( g ) r e ~ | 4 f-. g-. e-. | 
    g4-. r8 e f8 ( g ) r e ~ | 4 f-. g-. r ||
}

melodyHead = \transpose c bf, {
    <>\xmp R1*8
    \introTenorInBb
    \melodyAInBb
    \melodyATwoInBb
    \melodyBInBb
    <<
        {
            \harmonyAInBb
            \harmonyATwoInBb
        } \\ {
            \melodyLastAInBb
            \melodyATwoInBb            
        }
    >>
    \melodyInterludeInBb
}

melody = \transpose c bf, {
    <>\xmp R1*8
    \introTenorInBb
    \melodyAInBb
    \melodyATwoInBb
    \melodyBInBb
    <<
        {
            \harmonyAInBb
            \harmonyATwoInBb
        } \\ {
            \melodyLastAInBb
            \melodyATwoInBb            
        }
    >>
    \melodyInterludeInBb
    \soloInBb
    \soloTwoInBb
    \soloThreeInBb
    \soloFourInBb

    \melodyOutroInBb    
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
                \chordsHead
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structureHead
                    \rehearsalMarkTweaksForC
                    \melodyHead
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
        \transpose bf,, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
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
                    \rehearsalMarkTweaksForBb
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
                    \rehearsalMarkTweaksForBb
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
