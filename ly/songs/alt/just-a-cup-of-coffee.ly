\version "2.19.81"

titleLeft = "Just a Cup"
titleRight = "of Coffee"
title = "Just a Cup of Coffee"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm just-a-cup-of-coffee*pdf
lilypond ly/songs/alt/just-a-cup-of-coffee.ly
mv just-a-cup-of-coffee*.pdf  pdf/songs/alt
for file in pdf/songs/alt/just-a-cup-of-coffee*pdf ; do open -a Preview $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

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

\include "ly/ily/layout.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -6 . 0.6 )

    \key d \major
    \time 4/4
    \partial 4 s4 
    s1*4 
    \startSection "1"
    \bar "||"
    s1*8
    \bar "||"
    s1*4
    \bar "||"
    \startSection "2"
    \bar "||"
    s1*8
    \bar "||"
    s1*4
    \bar "||"
    \startSection "3"
    \bar "||"
    s1*8
    \bar "||"
    s1*4
    \bar "||"
}

introChords = \chordmode {
    s4 ||
    e2:m af:maj7 | d1 | 
    e2:m af:maj7 | d1 | 
}
formChords = \chordmode {
    g2:m7.7+ c:7.11+ | f:7.9- ef:7.9- |
    e2:7 e:m | a1:7 |

    g2:m7.7+ c:7.11+ | f:7.9- ef:7.9- |
    e2:m a:7 | d:1.4.5 a:7/cs ||

    af2:m7 df:7 | bf:m7 ef:7.9- | 
    af2:m7 df:7 | gf1:maj7 | 

    f2:m7 bf:7 | ef1:maj7 | 
    b2:maj7 e:7 | d1:aug7 ||

    g2:m7.7+ c:7.11+ | f:7.9- ef:7.9- |
    e2:m af:maj7 | d1 | 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \introChords
    \formChords
    \formChords
    \formChords
}

intro = \relative c'' { 
    \tuplet 3/2 { r8 d e } || \tuplet 3/2 { fs4 e d } ef8 d c bf | a2.
    \tuplet 3/2 { r8 d e } || \tuplet 3/2 { fs4 e d } ef8 d c bf | a2.    
}

head = \relative c'' { 
    \tuplet 3/2 { r8 fs g } || 
    a8 fs8 4 ~ \tuplet 3/2 { 4 8 } \tuplet 3/2 { a8 g a } | fs2. \tuplet 3/2 { r8 d e } |
    fs8 b,8 4 ~ 4. a8 | e'2. \tuplet 3/2 { r8 fs e } |

    a8 fs4. ~ \tuplet 3/2 { 4 8 } \tuplet 3/2 { a8 g a } | fs2. \tuplet 3/2 { r8 d e } |
    fs8 b,8 4 ~ 4 \tuplet 3/2 { r8 d b } | e1 ||

    bf'8 4 af16 bf \tuplet 3/2 { f8 gf af } \tuplet 3/2 { bf8 ef df ~ } | 2. \tuplet 3/2 { r8 a bf } |
    \tuplet 3/2 { bf4 d, ef } f8 gf4 af16 bf | f1 |

    g4. f16 g d8 ef4 f16 g | bf8 4. ~ 4 \tuplet 3/2 { c,8 8 8 } | 
    cs16 16 8 ~ 8 ds16 es fs8 4 gs16 a | as8 4. ~ 4 \tuplet 3/2 { r8 fs g } | 

    a8 fs8 4 ~ \tuplet 3/2 { 4 8 } \tuplet 3/2 { a8 g a } | fs2. \tuplet 3/2 { r8 d e } |
    \tuplet 3/2 { fs4 e d } ef8 d c bf | a1 ||    
}

bassIntro = \relative c { 
    r4 || e2 af, | d,4 d'2 4 | 
    e4 b af ef' | d4 b a2 ||
}
bassHead = \relative c' { 
    g4 d c2 | f4 c ef2 | e4 e' b g | a cs e2 | 
    g4 d c2 | f4 c ef2 | e4 g a cs | d4 a cs2 | 

    af4 cf df f | bf, df ef g | af gf f df | gf bf, c df | 
    f4 c bf d | ef c bf ef | b fs' e b | d c bf af | 

    g4 g c c | f f ef bf | e b af ef' | d4 d,2 d'4 |     
}
bassLine = \relative c { 
    \bassIntro
    \bassHead
    \bassHead
    \bassHead    
}

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \chordsSong 
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    { 
                        \intro 
                        \head 

                    }
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "sound"
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \chordsSong 
            }
            % \new Staff \transpose c c { 
            %     <<
            %         \structure
            %         { 
            %             \intro 
            %             \head 
            %         }
            %     >>
            % }
            \new Staff \transpose c c { 
                <<
                    \structure
                    \bassLine
                >>
            }
        >>
        \midi { }
    }
}



