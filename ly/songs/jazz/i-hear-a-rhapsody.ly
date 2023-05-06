\version "2.22.0"

titleLeft = "I Hear A"
titleRight = "Rhapsody"
title = "I Hear A Rhapsody"
composerName = "G. Fragos, J. Baker & D. Gasparre"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview

rm i-hear-a-rhapsody*pdf ; lilypond ly/songs/jazz/i-hear-a-rhapsody.ly ; for file in i-hear-a-rhapsody*pdf ; do open -a Preview $file ; done

rm i-hear-a-rhapsody*pdf
lilypond ly/songs/jazz/i-hear-a-rhapsody.ly
mv i-hear-a-rhapsody*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/i-hear-a-rhapsody*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"reverting phrase numbers" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.minimum-distance = #0
  system-system-spacing.padding = #0

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-right = ##f
  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\layout { 
    indent = 1.00\cm
    short-indent = 0.25\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
        \override Glissando.minimum-length = #3
        \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
        \override Glissando.thickness = #1.8
        \override Glissando.style = #'zigzag
        %\override StringNumber.stencil = ##f
    }
    \context { 
        \Staff 
        \RemoveAllEmptyStaves 
   }
    \context { 
        \DrumStaff 
        \RemoveAllEmptyStaves 
   }
}
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -4 . -2.6 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key c \minor
    \time 4/4

    \set Score.currentBarNumber = #30
    \override Score.BarNumber.break-visibility = ##(#f #f #t)

    \bar ""

    s1*3 

    \startSection "A"
    \bar "||"
    s1*4 \break 
    s1*4 \break 
    \startSection "A"
    \bar "||"
    s1*4 \break 
    s1*4 \break 
    \startSection "B"
    \bar "||"
    s1*4 \break 
    s1*4 \break 
    \startSection "A"
    \bar "||"
    s1*4 \break 
    s1*4 
    \bar "||"

    s1

}

chordsSongRealBook = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    b2:m7 bf:7 | ef1 | d2:m7.5- g:7 ||

    c2:m7 fs:7 | f:m7 bf:7 | ef:maj7 af:7 | g:m7.5- c:aug7 |
    f2:m7.5- af:m7 | b:m7 bf:7 | ef1:maj7 | d2:m7.5- g:7 ||

    c2:m7 fs:7 | f:m7 bf:7 | ef:maj7 af:7 | g:m7.5- c:aug7 |
    f2:m7.5- af:m7 | b:m7 bf:7 | ef2:maj7 bf:m7 | af:m7.5- d:aug7 ||

    g1:m7 | a2:m7.5- d:aug7 | g1:m7 | c2:m7 f:7 |
    bf1:maj7 | f:m7 | d:m7.5- | g:7 ||

    c2:m7 fs:7 | f:m7 bf:7 | ef1:maj7 | df2:7 c:aug7 |
    f2:m7.5- af:m7 | b:m7 bf:7 | ef1:maj7 | d2:m7.5- g:7 ||

    c1:m7
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    b2:m7 bf:7 | ef1 | d2:m7.5- g:7 ||

    c1:m7 | f2:m7 bf:7 | ef:maj7 af:7 | g:m7.5- c:7.9- |
    f2:m7 af:m7 | cf:m7 bf:7 | ef1:maj7 | d2:m7.5- g:aug9 ||

    c1:m7 | f2:m7 bf:7 | ef:maj7 af:7 | g2:m7.5- c:7.9- |
    f2:m7 af:m7 | cf:m7 bf:7 | ef1:maj7 | a2:m7.5- d:7.9- ||

    g1:m7 | a2:m7.5- d:7.9- | g1:m7 | c2:m7 f:7 |
    bf1:maj7 | f:m7 | d2:m7.5- g:7.9- | g1:aug9 ||

    c1:m7 | f2:m7 bf:7 | ef:maj7 af:7 | g:m7.5- c:7.9- |
    f2:m7 af:m7 | cf:m7 bf:7 | ef1:maj7 | d2:m7.5- g:aug9 ||

    c1:m7
}

solo = \relative c' { 
    r8 bf ( \tuplet 3/2 { ef8 g b } bf8 ) g ( ef bf ) | 
    g'8 ( ef ) r g af bf cf df | 
    d8 ( ef d8. )  c16  ( b8 ) af g f ||


    ef8 ( c4.-> ) r4 r8 g' ( | af f4. ) r2 | 
    R1 | bf32 ( cf df8. ~ 8 c16 cf  bf8 ) g ( e c ) |

    f8 ( c ) r ef  f8 g af bf | cf df ( cf ) bf  r fs d [ ( bf ] ) |
    g'4 ( ef ) f2 | r2 r4 r8 af ( ||


    g8 ) d ( f [ \grace { gf16 f } ef8 ] c4 ) b8 d | c d ef f g af ( g4 ) | 
    R1 | df4 ( ~ 8 [ \grace { ef16 g } af8 ]  g ) f e c ( | 

    f8 c ) d e  f  g af bf | cf ( df cf ) bf r fs ( d4 ) | 
    \grace { fs8 ( } g4 ) bf,8 ( ef ~ 2 ) | r4 r8. af32 ( bf  f8 ) ef ( d ) c ||  


    bf8 g ( bf ) d  r c bf4 | c8 ( b c ) d  ef f fs  a |
    bf8 cs16 d c8 bf r g ef ( [ d ] ) | cs8 f a g  f ef d c |

    bf8 f g bf ~ 4 r | r8. c'16 ( d8. df32 c  b8 ) af ( g4 ) |
    r2 g8 ( af16 g f8 ) ef | d4 r8 d  g f ef d ||


    c4 g8 a b d ef g | f g af bf c ef ( d ) c | 
    bf4 ( g8 ) f ef f g bf | \tuplet 3/2 { df,8 ( g af }  g8 ) f  e ef'4 df8 ( |

    c8 ) f,4. r2 | r8 cf ( df [ ) \grace { f8 ( } cf'8 ] )  df8 ( d16 df cf?8 ) bf | 
    r8 g f [ ef ] d ef g bf |  d8 ( ef d8. )  c16  ( b4 ) a8 b  ||

    c4. d8 c4.  
}
soloPhrases = \relative c' { 
    s8 <>^"1" s2.. |
    s4. <>^"2" s8 s2 | s1 ||


    s2.. <>^"3" s8 | s1 | 
    s1 | <>^"4" s1 |

    s4. <>^"5" s8 s2 | s1 |
    s1 | s2.. <>^"6" s8 ||


    s1 | s |
    s1 | <>^"7" s1 | 

    s1 | s | 
    s1 | s4 s8. <>^"8" s16 s2 ||  


    s1 | <>^"9" s1 |
    s2 s8 <>^"10" s4. | s1 |

    s1 | s8. <>^"11" s16 s2. |
    s1 | s ||

    <>^"12" s1 | s |
    s1 | <>^"13" s1 | 

    s1 | s8 <>^"14" s2.. |
    s8 <>^"15" s2.. | s1 ||

    s2..
}
melody = <<
    \solo
    %\soloPhrases
>>


\header {
    title = \title
    composer = \composerName
    subtitle = "Improvisation by J. Coltrane"
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "Concert"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "Bb Tenor Saxophone"
        instrumentName = \poet
    }
    \score {
        \transpose bf,, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}
