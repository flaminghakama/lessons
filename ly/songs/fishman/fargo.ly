\version "2.19.81"

titleLeft = "Fargo"
titleRight = "Avenue"
title = "Fargo Avenue"
composerName = "G. Fishman"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm fargo*pdf
lilypond ly/songs/fishman/fargo.ly

mv fargo*.pdf pdf/songs/fishman

for file in pdf/songs/fishman/fargo*pdf ; do open -a Preview $file ; done

echo git add pdf/songs/fishman/fargo* ly/songs/fishman/fargo.ly

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

    \key g \minor
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
        \startSection "B"
        s1 
        %\break 
        s1*3 
        %\break 
        s1*3 
        %\break 
        s1
        \bar "||"
        \startSection "C" 
        s1*2 
        %\break 
        s1*3 
        %\pageBreak
        s1*3 
        %\break

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
        }
        {
            s1*2
            \bar "[|:" 
            
            %\break

        }
    }
    \repeat volta 2 {
        s1*4 
        %\break
        s1*2
    }
    \alternative {
        { 
            s1*2  
            \bar ":|]" 
            %\break
        }
        {
            s1*2
        }
    }
    s1*2 
    %\break
    s1*3
    \bar "|."
}

chordsACommon = \chordmode { 
    c2:maj7 a:m7 | d:m7 g:7.9- | c:maj7 a:m7 | d:9 cs:9 |
    g2:m7 c:7.9- | f:maj7 a:aug7.9- |  
}
chordsAFirst = \chordmode { 
    d1:9 | d2:m7 g:aug7.9- ||
}
chordsASecond = \chordmode { 
    d2:9 cs:9 | c:maj7 fs4:m7.5- b:7.9- || 
}
chordsAThird = \chordmode { 
    d2:9 cs:9 | c:maj7 g:7.9- || c1 || 
}
chordsBridge = \chordmode { 
    e2:m7 cs:m7.5- | fs:m7.5- b:aug7.9- | e1:m7 | a2:7 gs:7.9+ |
    g2:maj7 e:m7 | a:m7 d4:1.4.5.7 ef:m7 | d2:m7 a:aug7.9- | af:9.11+ g:aug7.9- ||
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsACommon
    \chordsAFirst
    \chordsACommon
    \chordsASecond
    \chordsBridge
    \chordsACommon
    \chordsAThird
}


notesCommon = \relative c'' { 

    % A
    bf4.\mf a'8-. r g-. r ef-> ~ | 1 | 
    d4. d'8-. r c-. r a-> ~ | 1 | 

    a,4-- bf8-- a'-. r g-. r d ~ | 8 ef4 d'8-. r c-. r a ~ | 
    a2 ~ 8 f-. r af ~ | 1 ||

    % B
    r8 g-. r f-- ef-- d-. r b-> ~ | 4. c8 ~ 2 | 
    r8 f-. r ef-- d-- c-. r a-> ~ | 4. bf8 ~ 2 | 
    r8 ef-. r d-- c-- bf-. r af-> ~ | 4. a8 ~ 4 d,8 d' ~ |
    d1 ~ | 2. r4 || 


    % C
    bf4. a'8-. r g-. r ef-> ~ | 1 | 
    d4. d'8-. r c-. r a-> ~ | 1 | 

    af,4. g'8-. r f-. r cs-> ~ | 2 d | 
    g,4. f'8-. r ef-. r b-> ~ | 2 c | 

    % D
    r8 d-. r c-- b-- c-. r f-> ~ | 4. ef8-- d-- ef-. r a-> ~ | 
    a4. g8-- fs-- g-. r c-> ~ | 4. bf8-- a-- bf-. r d-> | 
    r8 c ~ 2. | r8 bf-. r a-- g-- fs-. r a-> ~ | 
}

notesFirst = \relative c''' { 
    a4. g8 ~ 4 d-^ | f4. ef8 ~ 2 ||
}

notesSecond = \relative c''' { 
    a4.\repeatTie g8 ~ 2 | r8 d ~ \tuplet 3/2 { d8 e fs } g8 a bf c ||
}

notesCoda = \relative c''' { 
    d4. c8-. r bf-. r c-> ~ | 2. r4 | 
    bf4. a8-. r g-. r a-> ~ | 2. r4 | 

    g4. f8-. r ef-. r f-> ~ | 2 d4. c8 ~ |
    c1 | r8 d f [ d ] ef f g bf ||
    c,1\repeatTie ~ | 4 r df4.-> c8-> ~ | 
    c1 ~ | 4 r bf4. c8 ~ | 
    c1 ~ | 4 r df4.-> c8-> ~ \fermata | c1 ||
}

melody = \relative c' { 
    \notesCommon
    \notesFirst
    \notesSecond
    \notesCoda
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
        subtitle = "(Transposed to Key from Real Book version of Black Orpheus)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose g a,  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff \transpose g a, { 
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
        subtitle = "(Key from Real Book version of Black Orpheus)"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose g a  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff \transpose g a { 
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
