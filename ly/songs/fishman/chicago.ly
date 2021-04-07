\version "2.19.81"

titleLeft = "Chicago"
titleRight = "Avenue"
title = "Chicago Avenue"
composerName = "G. Fishman"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm chicago*pdf
lilypond ly/songs/fishman/chicago.ly

mv chicago*.pdf pdf/songs/fishman

for file in pdf/songs/fishman/chicago*pdf ; do open -a Preview $file ; done

echo git add pdf/songs/fishman/chicago* ly/songs/fishman/chicago.ly

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

    \key d \major
    \time 4/4
    \mark \markup \box "A"
    \repeat volta 2 {
        s1*4 \break s1*4 \break
        \bar "||"
        \mark \markup \box "B"
        s1*4 \break s1*3 \break s1
        \bar "||"
        \mark \markup \box "C" 
        s1*2 \break s1*4 \pageBreak
        s1*2
        \bar "||"
        \mark \markup \box "D" 
        s1*2 \break s1*4 \break
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
    s1 \break s1*2 \break s1*3
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    e1:m7 a:7 fs:m7 b:7 
    e1:7 ef:7 d:maj7 b:7.9-

    e1:m7 a:7 fs:m7 b:7 
    e1:7 ef:7 d:maj7 s

    a1:m7 d:aug7 g:maj7 g:6.9
    b1:m7 e:aug7 e:m7 a:7

    e1:m7 a:7 fs:m7 b:7 
    e1:7 ef:7 | d2:maj7 df:7 | c:7 b:7 |
                d2:maj7 df:7 | c:7 b:7 |

    e1:7 ef:7 | d2:maj7 df:7 | c:7 b:7 |
    e1:7 | a2:1.4.5.7 a4.:7 d8:6.9 ||
}


notesCommon = \relative c'' { 

    % A
    r2 fs4-.\f e8 a-> ~ | 2. r4 | 
    r2 gs4-. fs8 b-> ~ | 2. r4 | 

    r2 cs4-. b8 f-> ~ | 1 | 
    r2 b4-. a8 c,-> ~ | 2. r4 ||

    % B
    r4 r8 b8-- fs'4-. e8 a-> ~ | 2. r4 | 
    r4 r8 cs,8-- gs'4-. fs8 b-> ~ | 2. r4 | 

    r2 cs4-. b8 f-> ~ | 2 c'4. a8-> ~ | 
    a1 | r4 b4-. a8 fs f e-> ~ ||

    % C
    e2 b'4. bf8-> ~ | 2. r4 | 
    r4 d,4-. a'4. g8-> ~ | 1 |

    r4 fs4-. cs'4. c8-> ~ | 2 e,4. b'8-> ~ |
    b4. g8-- e4-. d8 cs ~ | 2 r ||

    % D
    r2 fs4-. e8 a-> ~ | 2. r4 | 
    r2 gs4-. fs8 b-> ~ | 2. r4 | 

    r2 cs4-. b8 f-> ~ | 2 c'4. a8-> ~ | 
}

notesFirst = \relative c''' { 
    a4 fs8 f-> ~ 2 | e4-. a8 ds,-> ~ 2 ||
}

notesSecond = \relative c''' { 
    a4 \repeatTie fs8 f-> ~ 2 | e4-. a8 ds,-> ~ 2 ||
    r2 cs'4-. b8 f-> ~ | 2 c'2 |
    a8 b-> ~ 4 af8 bf-> ~ 4 | g8 gs a fs-> ~ 2 |
    r2 cs'4-. b-. | d-. b-. fs---> b,8-- d-> ||
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

%{
\book {
  \bookOutputSuffix "real-book-key"
    \header {
        poet = "    Concert"
        subtitle = "(Transposed to Key from Real Book version of Satin Doll)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose d c  { \chordsSong }
            \new Staff \transpose d c { 
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
        subtitle = "(Key from Real Book version of Satin Doll)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose d' a  { \chordsSong }
            \new Staff \transpose d' a { 
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
