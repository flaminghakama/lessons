\version "2.24.0"

titleLeft = "Megalo"
titleRight = "vania"
titleFull = "Megalovania"
composerName = "T. Fox"
arranger = ""
copyright = ""

%{

killPreview ; rm megalovania*pdf ;  lilypond ly/songs/pop/megalovania.ly  ; for file in megalovania*.pdf ; do op $file ; done  

killPreview
rm megalovania*pdf
lilypond ly/songs/pop/megalovania.ly
mv megalovania*.pdf pdf/songs/pop
for file in pdf/songs/pop/megalovania*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #19

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #24

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
    \tempo 4=242
    \time 4/4

    \startSection "Intro"
    % intro lick
    s1*4
    % add intro harmony 
    s1*4
    % add long tones
    s1*4
    s1*4

    \startSection "Verse"
    s1*8


    

}



rehearsalMarkTweaksForC = \relative c' { 
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

    R1 \grace { s16 }

    % A1 
    bf1:1.4.5 | bf:7 | ef:6 | af:maj7 | 
    g:1.4.5.7| g:7 | c:m | R1 ||

    % A2 
    bf1:1.4.5 | bf:7 | ef:maj7 | af:maj7 | 
    g:1.4.5.7| g:7 | c:6 | R1

    % A3
    f1:m | bf:7 | ef:maj7 | af:maj7 | 
    g:1.4.5.7| g:7 | c:m | R1

    % B1
    ef1:/bf | bf | ef2. ef4/a | af1 |
    g1:1.4.5 | g:7 | c1:m | R1 || 

    % B1
    ef1:/bf | bf | ef2. ef4/a | af1 |
    g1:1.4.5 | g:7 | c1:6 | R1 || 


}

introLick = \relative c' { 
    d8 8 d'4  a r8 af | r g r f ~ 8 d f g |  
    c,8 8 d'4  a r8 af | r g r f ~ 8 d f g |  
    b,8 8 d'4  a r8 af | r g r f ~ 8 d f g |  
    bf,8 8 d'4  a r8 af | r g r f ~ 8 d f g |  
}
harmonyIntroLick = \relative c' { 
    d4 4  8 8 r 8 | r 8 r 8 ~  4 4 | 
    c4 4  8 8 r 8 | r 8 r 8 ~  4 4 | 
    b4 4  8 8 r 8 | r 8 r 8 ~  4 4 | 
    bf4 4  8 8 r c8 | r 8 r 8 ~  4 4 | 
}
longTonesIntroLick = \relative c' { 
    d1 ~ | 1 | 
    c1 ~ | 1 | 
    b1 ~ | 1 | 
    bf1 | c | 
}

melodyVerse = \relative c'' { 
    f8 ~ ||
    f4 8 8  r 8 r 8 ~ | 8 d r d ~ 2 | 
    f4 8 8  r g r af ~ | 8 af g d f g r | 
    f4 8 8  r g r af | r a r c  r a4. |
    d4 4  d8 a d c ~ | 2. r4 | 
}


melodyATwo = \relative c' { 
    g' c [ d ]  \grace { d16 ( } ef8 ) d  r c16 bf \grace { bf16 ( } || 
    af1 ) | r4 \tuplet 3/2 { g8 af bf } \grace { bf16 ( } d16 ) c8 bf16  r16 f8. ( | 
    g1 ) | r8 g af [ bf ] \grace { bf16 ( } c8 ) bf  af16 g ef f ~ | 
    f2 \grace { ef16 ( } f2 ) | r8 f g [ af ] \grace { af16 ( } bf8 [ ) af ] g8 ( [ \grace { af16 g } f8 ] | 
    g1 ) |    
}
melodyAThree = \relative c'' { 
    r4 g c g' ||
    g1 ~ | 4 f16 ef f8 ~ 8 g r g,16 bf | 
    d f f d  f16 ( g8. ~ 4 ) f16 ef f ef ~ | 8 r  r g  g g g16 ( f ) ef c  |
    \tuplet 3/2 { f16 [ ef d ~ } 8 ~ ]  \tuplet 3/2 8 { d16 [ ef d ~  8 g,16 ~ } ]  g8 f32 ef d16 ~ 4 |
        r4 f'  ef16 c bf af  \grace { af16 ( } bf16 ) g f ef  |
    g'16 ef c8 ~ 4  ~ 8.  g16 f ef c c | 
    c8 r8       
}
melodyBOne = \relative c'' { 
    c4 d ef ||
    ef16 ( f ) g8  r8. bf,16  ef16 ( f ) g8  r8. bf,16 | 
        ef16 ( f ) g8  r8. bf,16  f'4 \tuplet 3/2 { ef8 f ef } |
    
    \grace { f16 ( } g8 ) bf  r8. bf,16  \grace { f'16 ( } g8 ) bf  r8. bf,16 | 
        g'16 bf bf g  bf c bf8 ( ~ 8 \glissando c16 ) bf  g ( f ) ef c |

    ef16 ( f ) g8  r8. bf,16  ef8 g8  r8. bf,16 | f'16 ( g ) g8  c16 bf g \grace { f16 ( } g16 ~  8 ) f16 ef  f g ef8 ~ |
    
    ef4.  f16 ef  c bf g f  ef16 c8.  | c8 r8  
}
melodyBTwo = \relative c'' { 
    \grace { bf16 ( } c4 ) d ef ||
    ef16 ( f ) g8  r8. bf,16  ef16 ( f ) g8  r8. bf,16 | 
        ef16 ( f ) g8  r8. bf,16  f'4 \tuplet 3/2 { ef8 f ef } |
    
    \grace { f16 ( } g8 ) bf  r8. bf,16  \grace { f'16 ( } g8 ) bf  r8. bf,16 | 
        g'16 bf bf g  bf c bf8 ( ~ 4 \glissando c16 ) [ bf  g \grace { ef16 ( } f16 ] ~ |

    f16. ) g32 c16 bf  g [ \grace { ef16 ( } f8 ) ef16 ]  c16 f ef ( f   g ) f8. ~ |
        f4   f16 ( g ) g c  bf [ g \grace { f16 ( } g16 f ] )  f ef f fs |

    g4  r16 g, ( a ) c  \grace { d16 ( } e16 [ ) g r g32 ( a ]  g16 ) g32 ( a g16 ) g32 ( a |
        g8 ) r \comp #3
    
}

melody = \relative c' { 
    \melodyAOne
    \melodyATwo
    \melodyAThree
    \melodyBOne
    \melodyBTwo
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
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structure
                    % \rehearsalMarkTweaksForC
                    \melody
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
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structure
                    % \rehearsalMarkTweaksForC
                    \melody
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
        \transpose ef c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structure
                    % \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }
}

