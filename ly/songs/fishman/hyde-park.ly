\version "2.19.81"

titleLeft = "Hyde Park"
titleRight = "Boulevard"
title = "Hyde Park Boulevard"
composerName = "G. Fishman"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm hyde-park*pdf
lilypond ly/songs/fishman/hyde-park.ly

mv hyde-park*.pdf pdf/songs/fishman

for file in pdf/songs/fishman/hyde-park*pdf ; do open -a Preview $file ; done

echo git add pdf/songs/fishman/hyde-park* ly/songs/fishman/hyde-park.ly

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #19

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #15

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
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key g \major
    \time 4/4
    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . 3 )
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 {
        s1*3 
        %\break 
        s1*3 
        %\break 
        s1*2
        \bar "||"
        \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
        \startSection "B"
        s1 
        %\break 
        s1*3 
        %\break 
        s1*3 
        %\break 
        s1
        \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
        \bar "||" 
        \break
        \startSection "C" 
        s1*2 
        %\break 
        s1*3 
        %\pageBreak
        s1*3 
        \break

        \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
        \startSection "D" 
        s1*3 
        %\break 
        s1*3 
        %\break

    }
    \alternative {
        { 
            s1*2  
            \bar ":|]" 
            \break
        }
        {
            s1*3
        }
    }
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    g1:maj | fs2:m7.5- b:7.9- | e:m7 a:7.9- | d:m7 g:7.9- |
    c1:9 | b2:m7.5- e:7.9- | a1:7 | a2:m7.5- d:7.9- ||

    g1:maj | fs2:m7.5- b:7.9- | e:m7 a:7.9- | d:m7 g:7.9- |
    c1:9 | b2:m7.5- e:7.9- | a2:m7 d:7.9- | g1:1.3.5.6.9||

    d1:m7 | g2:1.4.5.7 g:aug7.9- | c1:maj7 | s | 
    f1:m7 | bf2:1.4.5.7 bf:aug7.9- | ef1:maj7 | a2:m7 d:7 ||

    g1:maj | fs2:m7.5- b:7.9- | e:m7 a:7.9- | d:m7 g:7.9- |
    c1:9 | b2:m7.5- e:7.9- | a2:m7 d:7.9- | g1:1.3.5.6.9||

        a2:m7 d:7.9- | b2:m7 e:7 | a2:m7 d4.:7.9-  g8:1.3.5.6.9||
}


notesCommon = \relative c''' { 

    % A
    b2 g4. a8-> ~ | 2. r4 | g2 e4. f8-> ~ | 2. r4 | 
    e2 c4. d8-> ~ | 8 e f e ~ 4 d8 cs-> ~ | 2 a4. c8-> ~ | 2. r4 ||

    % B
    r2 b'4-. g8 a ~ | 4 e8 ds-> ~ 2 | r2 g4-. e8 f ~ | 8 a, c b-> ~ 2 | 
    r2 e4-. c8 d ~ | 8 e f e ~ 4. d8 | c d e fs-> ~ 4 d8-- g-> | R1 ||

    % C
    r8 g4.-> f4-. g-. | e-. g-. ef-. b8 d-> ~ | 2 ~ 8 b c g'-> ~ | 1 |
    r8 bf4.-> af4-. bf-. | g-. bf-. gf-. d8 f-> ~ | 4. d8 ef g bf b-> ~ | 4. d8-> ~ 2 |

    % D
    r8 d4.-> b4-. g8 a-> ~ | 8 b c-- b-. r a4. | g4-. r8 bf-- a4-. g8 f-> ~ | 8 g af g ~ 2 |
    r8 g4.-> e4-. c8 d-> ~ | 8 e f e-> ~ 4. d8
}

notesFirst = \relative c'' { 
    c8 d e fs-> ~ 4 d8-- g-> | R1 ||
}

notesSecond = \relative c'' { 
    c8 d e fs-> ~ 4. e8 | d e fs gs-> ~ 4 r | 
    c,8 d e fs-> ~ 4 d8-- g-> ||
}

melody = \relative c' { 
    \notesCommon
    \notesFirst
    \notesSecond
}
melodyForTranposing = \relative c' { 
    \melody
}

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "original"
    \header {
        poet = "    Published Key"
        instrumentName = \poet
    }
    \score {
        <<
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
  \bookOutputSuffix "real-book-key"
    \header {
        poet = "    Concert"
        subtitle = "(Transposed to Confirmation Key)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose g f  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff \transpose g f { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForTranposing
                    \noPageBreak
                >>
            }
        >>
    }

}

\book {
  \bookOutputSuffix "real-book-key-for-Eb"
    \header {
        poet = "    Eb Alto Sax"
        subtitle = "(Transposed to Confirmation key)"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose g f  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff \transpose g f { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForTranposing
                    \noPageBreak
                >>
            }
        >>
    }

}
