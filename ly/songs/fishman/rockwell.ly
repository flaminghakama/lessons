\version "2.19.81"

titleLeft = "Rockwell"
titleRight = "Street"
title = "Rockwell Street"
composerName = "G. Fishman"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm rockwell*pdf
lilypond ly/songs/fishman/rockwell.ly

mv rockwell*.pdf pdf/songs/fishman

for file in pdf/songs/fishman/rockwell*pdf ; do open -a Preview $file ; done

echo git add pdf/songs/fishman/rockwell* ly/songs/fishman/rockwell.ly

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
    \override Score.RehearsalMark #'extra-offset = #'( -3 . 3 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key e \minor
    \time 4/4
    \mark \markup \box "A"
    \repeat volta 2 {
        s1*4 \break s1*4 \break
        \bar "||"
        \mark \markup \box "B"
        s1*3 \break s1*5 \break
        \bar "||"
        \override Score.RehearsalMark #'extra-offset = #'( -3 . 0 )
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
    s1*2 \break s1*4 \break s1*2
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    e1:m7 s s s 
    s1 s s s 

    s1 s s s 
    s1 s s s 

    f1:m7 s s s 
    s1 s s s 

    e1:m7 s s s 
    s1 s s s 
}

notesCommon = \relative c''' { 

    r2 b | a2. g4-. | fs4-. d8 e-> ~ 2 ~ | 2 r |
    r2 d4. cs8 | d4-- cs-. b-. a8 b-> ~ | 1 | R1 ||

    r4 b'8 a-> ~ 4 d8 b-> ~ | 1 | r4 fs8 e-> ~ 4 a8 fs-> ~ | 
    fs2 d | e4-. fs8 e ~ 2 | d a'4-. cs,8 b ~ | 1 ~ | 4 r r2 ||

    c4. g'8 ~ 2 | r r4 c,4-. | g'-- bf8 g-> ~ 2 | R1 |
    r2 af4-- c-. | bf-- g-- ef-. c8 f-> ~ | 1 | r2 r4 b,8 fs'-> ~ ||

    fs1 | r2 r4 b,4-. | fs'-- a8 fs-> ~ 2 ~ | 2 r |
    r2 b | a2. g4-. | fs-. d8 b-> ~ 2 ~ | 2  r ||

    fs'4-. d8 e-> ~ 2 ~ | 2 r || r b' | a g | 
    fs4-. d8 e-> ~ 2 ~ | 2 r | r b' | a g | 
    fs4-. d8 e-> ~ 2 ~ | \fermata e1 ||

}

melody = \relative c' { 
    \notesCommon
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
        subtitle = "(Transposed to Key from Real Book version of Impressions)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose d c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
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
        subtitle = "(Key from Real Book version of Impressions)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose d' a  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
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
