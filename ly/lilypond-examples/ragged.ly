\version "2.19.83"

\include "english.ly"

chordsSong = \chordmode { 
    % \set chordChanges = ##t 
    % \set chordNameExceptions = #flamingChordExceptions
    % \set noChordSymbol = ##f
    bf1 | bf:7 | ef:6 | ef:m6 |
    bf2. e4:dim7 | f2:9 f:aug7 | bf/d df:dim7 | c:m7 f:7 ||

    bf1 | bf:7 | ef:6 | ef:m6 |
    bf2. e4:dim7 | f2:9 f:aug7 | bf1 | e:m7.5- a:7.9- ||

    d1:m | e2:m7.5- a:7.9- | d1:m | e2:m7.5- a:7.9- |
    d1:m | e2:m7.5- a:7.9- | d1:m | c2:m7 ef4/f f:7 |

    bf1 | bf:7 | ef:6 | ef:m6 |
    bf2. e4:dim7 | f1:9 | bf | s ||
}

melodySong = \relative c' { 
    c1 d e f g a \break 
    b1 a g d8 ef e f d'8 4 df8 | c2 d8 4 df8 | c2 d8 4 df8 | c1 | 
    d,8 ef e f a8 4 af8 | g2 a8 4 af8 | g1 ~ | 2 r ||

    d8 ef e f d'8 4 df8 | c2 d8 4 df8 | c2 d8 4 df8 | c1 | 
    d,8 ef e f a8 4 af8 | g2 8 f g4 | bf1 ~ | 2 r ||

    d8 e d e d4 a | bf4 2. | a8 bf a bf a4 f | e1 | 
    d'8 e d e d4 a | bf4 2. | a8 bf a bf a4 f | ef1 | 

    d8 ef e f d'8 4 df8 | c2 d8 4 df8 | c2 d8 4 df8 | c1 | 
    d,8 ef e f a8 4 af8 | g2 8 f g4 | bf1 ~ | 2 r ||
}

\book {
    \score {
        <<
            \new ChordNames \chordsSong
            \new Staff \melodySong
        >>
    }
}

