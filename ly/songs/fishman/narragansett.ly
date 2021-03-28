\version "2.19.81"

titleLeft = "Narragansett"
titleRight = "Avenue"
title = "Narragansett Avenue"
composerName = "G. Fishman"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm narragansett*pdf
lilypond ly/songs/fishman/narragansett.ly

mv narragansett*.pdf pdf/songs/fishman

for file in pdf/songs/fishman/narragansett*pdf ; do open -a Preview $file ; done

echo git add pdf/songs/fishman/narragansett* ly/songs/fishman/narragansett.ly

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #12

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
    %\override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key a \minor
    \time 4/4
    \mark \markup \box "A"
    \repeat volta 2 {
        s1*4 \break s1*4 \break
        \bar "||"
        \mark \markup \box "B"
        s1*4 \break s1*4 \break
        \bar "||"
        \mark \markup \box "C" 
        s1*4 \break s1*4 \pageBreak
        \bar "||"
        \mark \markup \box "D" 
        s1*4 \break s1*2
    }
    \alternative {
        { 
            s1*2  
            \bar ":|]" \break
        }
        {
            s1*2
            \bar "||"
        }
    }
    s1*2 \break s1*6
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    d1:m7 g:7 c:maj7 f:maj7  
    b1:m7.5- e:7.9- a:m a:7.9- || 

    d1:m7 g:7 c:maj7 f:maj7  
    b1:m7.5- e:7.9- a:m s || 

    b1:m7.5- e:7.9- a:m s 
    d1:m7 g:7 c:maj7 f:maj7 ||

    b1:m7.5- e:7.9- | a2:m7 d:7.9- | g:m7 c:7 | 
    f1:7 | b2:m7.5- e:aug7.9- | a1:m | a:7.9- || 
                              | a1:m | fs:m7.5- || 

    b1:m7.5- e:7.9- a:m fs:m7.5- 
    b1:m7.5- e:7.9- a:m d:9.11+ 
}

melodyPhraseOne = \relative c'' { 
    f2 c4. b8-> ~ | 2. r4 | 
    e2 b4. a8-> ~ | 2. r4 | 
    d2 a4. gs8-> ~ | 4 r gs8 a b c-> ~ | 1 |
}
melodyPhraseTwo = \relative c'' { 
    r2 cs8 d e f-> ~ ||
    f2 c4. b8-> ~ | 4 r g'-. f8 e-> ~ | 
    e2 b4. a8-> ~ | 2 r8 b8 c [ d-> ] ~ | 
    d2 a4. gs8-> ~ | 4 a-. b-. c8 a ~ | 1 | R1 || 
}
melodyPhraseThree = \relative c'' { 
    r2 a4-. d8 gs,-> ~ | 1 |
    r4 r8 e8-- a4-. b8 c-> ~ | 1 | 
    r2 c4-. f8 b,-> ~ | 1 |
    r4 r8 g8-- c4-. d8 e-> ~ | 2. r4 | 
}
melodyPhraseFour = \relative c'' { 
    r2 f4-. e8 f ~ | 4 gs,-. g'-> f8 e-> ~ |
    e2 f4. d8-> ~ | 2 r8 e c [ d-> ] ~ | 
    d2 r8 ef c [ d-> ] ~ | 2 c4. a8-> ~ | 1 | R1 |
                                        | a1 \repeatTie |
}
melodyPhraseFive = \relative c'' { 
    r2 r8 e c [ d-> ] ~ ||
    d2 r8 e c [ d-> ] ~ | 2 c4. a8-> ~ | 
    a1 | r2 r8 e' c [ d-> ] ~ ||
    d2 r8 e c [ d-> ] ~ | 4 r e4. b'8-> ~ | 
    b2. ~ 8 gs-> ~ | \fermata gs1
    
}
melody = \relative c' { 
    \melodyPhraseOne
    \melodyPhraseTwo
    \melodyPhraseThree
    \melodyPhraseFour
    \melodyPhraseFive
}
melodyForTranposing = \relative c' { 
    \melodyPhraseOne
    \melodyPhraseTwo
    \melodyPhraseThree
    \melodyPhraseFour
    \transpose c, c, \melodyPhraseFive
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
            \new ChordNames \transpose c c  { \chordsSong }
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
        subtitle = "(Transposed to Key from Real Book version of Autumn Leaves)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose a e  { \chordsSong }
            \new Staff \transpose a e { 
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
        subtitle = "(Key from Real Book version of Autumn Leaves)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose a, cs  { \chordsSong }
            \new Staff \transpose a, cs { 
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
%}
