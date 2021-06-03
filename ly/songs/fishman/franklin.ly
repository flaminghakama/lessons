\version "2.19.81"

titleLeft = "Franklin"
titleRight = "Street"
title = "Franklin Street"
composerName = "G. Fishman"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm franklin*pdf
lilypond ly/songs/fishman/franklin.ly

mv franklin*.pdf pdf/songs/fishman

for file in pdf/songs/fishman/franklin*pdf ; do open -a Preview $file ; done

echo git add pdf/songs/fishman/franklin* ly/songs/fishman/franklin.ly

%}

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

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3 . 3 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key b \minor
    \time 4/4
    \mark \markup \box "A"
    \repeat volta 2 {
        s1*4 \break 
        s1*4 \break
        \bar "||"
        \mark \markup \box "B"
        s1*3 \break 
        s1*3 \break
        s1*2
        \bar "||"
        \override Score.RehearsalMark #'extra-offset = #'( -3 . 0 )
        \mark \markup \box "C" 
        s1 \break 
        s1*3 \pageBreak
        s1*3 \break 
        s1
        \bar "||"
        \mark \markup \box "D" 
        s1*2 \break 
        s1*3 \break
        s1
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
    s1 \break 
    s1*3 \break 
    s1*2
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    b1:m | cs2:m7.5- fs:7 | b1:m | b:7.9- |
    e1:m | s | cs:m7.5- | fs:7.9- ||

    b1:m | fs:7 | b:m | e2:m7 a:7 | 
    d1:maj7 | fs:7 | b:m | fs:7.9- ||

    b1:m | cs2:m7.5- fs:7 | b1:m | b:7.9- |
    e1:m | d:m7 | cs:m7.5- | fs:7.9- ||

    b1:m | cs2:m7.5- fs:7 | b1:m | e2:m7 a:7 | 
    d2:maj7 g:maj7 | cs:m7.5- fs:7 | b1:m | fs:7.9- ||

    b1:m | gs:aug7.9- ||

    cs1:m7.5- | fs:7.9- | b:m | gs:aug7.9- | 
    cs1:m7.5- | fs2..:7.9- b8:m || 

}

notesCommon = \relative c''' { 

    r4 as8\f b-> ~ 4 f8 fs ~ | 4 cs8 d-> ~ 4 as8 b-> ~ | 4. fs8-> r2 | R1 | 
    r4 as'8 b-> ~ 4 fs8 g-> ~ | 4 ds8 e-> ~ 4 d8 cs-> ~ | 2 ~ 8 8 b as-> | R1 ||

    r4 as'4-^ b-- f8-- fs-> | r4 r8 cs e ef d b-> ~ | 4. fs8-> r2 | 
    r4 r8 fs a af g fs-> | r2 e'8 ef d cs-> | r4 as-^ fs'---> d8-- b-> | 
    r2 r4 r8 fs8->\< ~ | 1 || 

    r4\! as'8 b-> ~ 8 f fs g-> ~ | 
    g4 e8 f fs cs as fs | e'4-- d8-- b-> r2 | r8 ds4.-> e4-^ fs8 g-> ~ | 
    g8 a fs g ~ 4 r8 e | f g e f ~ 4 r | e8 fs ds e ~ 4 fs8 a-> ~ | 
    a4 \tuplet 3/2 { g8 d bf } a8-- g-> r4 || 

    r4 as'4-^ b---> fs8 g-> ~ | 4 f-^ fs---> d8-- b-> |
    r2 r8 f fs [ a ] | g a b cs-> ~ 8 d e fs-> ~ | 2 b8 fs f-- e-> | 
    r4 r8 f fs fs, as-- b-> | r2 r8 a as [ a'-> ~ ] | 4. g8 ~ 2 ||

    r2 r8 b, d [ e-> ~ ] | 2. r4 || r4 r8 fs b fs f-- e-> |
    r4 r8 f fs fs, as-- b-> | r2 r8 b d [ e-> ~ ] | 4 d8 b d-- e-. r4 | 
    r4 d'8-> cs b fs f-- e-> | r4 r8 f fs fs, as-- b-> ||
}

melody = \relative c' { 
    \notesCommon
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
        subtitle = "(Transposed to Key from Real Book version of Summertime)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose b a  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff \transpose b a { 
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
  \bookOutputSuffix "real-book-key-for-Eb"
    \header {
        poet = "    Eb Alto Sax"
        subtitle = "(Key from Real Book version of Summertime)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose b fs  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff \transpose b fs { 
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
