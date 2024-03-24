\version "2.24.0"

titleLeft = "D Minor"
titleRight = "Nine"
titleFull = "D Minor Nine"
composerName = "D. Boyce"
arranger = ""
copyright = ""

%{

killPreview ; rm d-minor-nine*pdf ;  lilypond ly/songs/pop/d-minor-nine.ly  ; for file in d-minor-nine*.pdf ; do op $file ; done  

killPreview
rm d-minor-nine*pdf
lilypond ly/songs/pop/d-minor-nine.ly
mv d-minor-nine*.pdf pdf/songs/pop
for file in pdf/songs/pop/d-minor-nine*.pdf ; do op $file ; done  

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

    \key d \minor
    \tempo 4=132
    \time 4/4

    \partial 4
    \startSection "Bass" 
    s4 
    \startRepeat
    s1*4
    \break
    
    \startSection "Groove" 
    \endRepeat
    s1*4
    \break
    s1*4
    \break

    \startSection "Head" 
    \startRepeat
    s1*8 
    \break 

    \startSection ""
    s1*8

    \startSection ""
    \grace { s8 }
    s1*4 \break
    s1*4
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 3 . 0 )
    s4 
    % "Bass" 
    s1*4
    
    \override Score.RehearsalMark.extra-offset = #'( -2 . 3 )
    % "Groove" 
    s1*8

    \override Score.RehearsalMark.extra-offset = #'( -6 . -2 )
    % "Head" 
    s1*8
    s1*8
    \grace { s8 }
    s1*8

}

rehearsalMarkTweaksForBb = \relative c' { 
}

rehearsalMarkTweaksForEb = \relative c' { 

}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s4 ||
    s1*4
    s1*4
    s1*4
    d1:m9 | a:m/c | d:m9 | a:m/c | 
    d1:m9 | a:m/c | d:m9 | a:m/c | 

    d1:m9 | a:m/c | d:m9 | a:m/c | 
    d1:m9 | a:m/c | d:m9 | a:m/c | 

    \grace { s8 }
    d1:m9 | a:m/c | d:m9 | a:m/c | 
    d1:m9 | a:m/c | d:m9 | a:m/c | 
}

bassIntro = \relative c {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    g4 ||
    d4. a'8 \grace { c8 \glissando } e4 a,8 c ~ | 2.  g8 [ ( a ] ) |
    d,4. a'8 \grace { c8 \glissando } e4 a,8 c ~ | 2.  g8 [ ( a ] ) |
}

groove = \relative c'' {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    \comp #12
    r2   r8 <e c> (  <d b> [ ) 8 ( ] || 


    <c a> ) 8 (  <d b> ) 8 (  <e c>4 ) r4 | e1\startTrillSpan ~ | 
    e1 ~  | 1\stopTrillSpan ||
}


melody = \relative c'' {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    R1 | r4 \acciaccatura { d8 } e2. ~ | 4. d16 c  r16 \grace { d8 ( } e8. ~ 8 ) d16 c |

    r8 a16 g  e4 ~  16 [ \grace { g8 ( } a8. ] ~ 4 ~ | 

    a1 ~ | a2 ) r | 

    R1*2 || 

    
    R1 | r8 \grace { d8 ( } e4. ~ 4. ) d8 |
    
    c8 e4 d16 c  \tuplet 3/2 { a8 g e }  g8 \grace { g8 ( } a ) | 
        \grace { g8 ( } a4. ) \tuplet 3/2 { g16 e d }  c8 \grace { d8 ( } e4 ) \grace { d8 ( } e8 ~ |
    
    e1 ) | R1*2 | r2 r8 a8-. c-. [ d-. ] ||


    \grace { d8 ( } e8 ) g  a-. a16 ( b )  g2 |
    \grace { g8 ( } a8 ) g e d   \grace { d8 ( } e8 ) d-. c a-. |

    \grace { a8 ( } b1 ~ | 2 ~ \tuplet 3/2 { 4 ) a8 }  b16 a b8 ~ | 

    b8 a16 b  \grace { b8 ( } \tuplet 3/2 { c8 ) b a }  g16 f g8  \grace { g8 ( } a16 ) g e8\startTrillSpan ~ | 
    e1*7/8 s8 \stopTrillSpan | 

    R1*2 ||  
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
                    {
                        \clef bass
                        \bassIntro
                        \clef treble
                        \groove
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
                    \rehearsalMarkTweaksForC
                    {
                        \transpose c,, c \bassIntro
                        \groove
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
                    {
                        \transpose c, c \bassIntro
                        \groove
                        \melody
                    }
                >>
            }
        >>
    }
}

