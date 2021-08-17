\version "2.19.81"

titleLeft = "Castlewood"
titleRight = "Terrace"
title = "Castlewood Terrace"
composerName = "G. Fishman"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm castlewood*pdf
lilypond ly/songs/fishman/castlewood.ly
mv castlewood*.pdf pdf/songs/fishman
for file in pdf/songs/fishman/castlewood*pdf ; do open -a Preview $file ; done

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
    %\override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key d \major
    \time 4/4
    %\once \override Score.RehearsalMark #'extra-offset = #'( -3 . 3 )
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 {
        s1*8
        \startSection "B"
        s1*8
        \startSection "C" 
        s1*8
        \startSection "D" 
        s1*5
    }
    \alternative {
        { 
            s1*3  
            \bar ":|]"
            \break
        }
        {
            s1 
            \bar "||"
        }
    }
    s1*8
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    
    d2:maj7 b4:m7 bf:m7 | a2:m7 d:7.9- | g1:maj7 | g2:m7 c:7 |
    fs2:m7 b:7.9- | e:m7 a4:7 a:7/g | fs2:m7 b:7.9- | e:m7 a:7 ||

    d2:maj7 b4:m7 bf:m7 | a2:m7 d:7.9- | g1:maj7 | g2:m7 c:7 |
    fs2:m7 b:7.9- | e:m7 a4:7 a:7/g | fs2:m7 b:7.9- | gs:m7.5- cs:7.9- ||

    fs2:m7 ds:m7.9- | gs:m7.5- cs:7.9- | fs2:m7 ds:m7.9- | gs:m7.5- cs:7.9- | 
    fs2:m7 ds:m7.9- | gs:m7.5- cs:7.9- | fs2:m7 b:7.9- | e:m7 a:7.9- ||

    d2:maj7 b4:m7 bf:m7 | a2:m7 d:7.9- | g1:maj7 | g2:m7 c:7 |
    fs2:m7 f:m7 

        e2:m7 a:7.9- | d1:6.9 | ef:9.11+ ||
        e2:m7 a4:7.9- a:7.9-/g || fs2:m7 b:7 | f:m7 bf:7 |

    e1:m7 | a:7.9- | fs:m7 | b:7.9- | 
    e1:m7 | a2..:7.9- d8:6.9 ||
}


notesCommon = \relative c''' { 

    % A
    b4-^ a-^ fs8 d df c-> | R1 | a'4-^ g-^ d8 g, a bf-> | R1 |
    r8 a cs [ e ] ds4-. c8 b-> ~ | 4 d8 cs-> ~ 4 e8 a-> ~ | 1 ~ | 2 r |

    % B
    b4-^ a-^ fs8 d df c-> | R1 | a'4-^ g-^ d8 g, a bf-> | R1 |
    r8 a cs [ e ] ds4-. c8 b-> ~ | 8 d fs a-> ~ 4 fs8 e-> ~ | 2. d8 cs-> ~ | 1 ||

    % C
    r4 cs4-^ fs---> a8-- b-> | R1 | r4 cs4-^ a---> fs8-- b-> | R1 | 
    r4 cs,4-^ fs---> a8-- b-> | r2 r4 gs8-- a-> | r2 r4 fs8-- g-> | R1 ||


    % D
    b4-^ a-^ fs8 d df c-> | R1 | a'4-^ g-^ d8 g, a bf-> | R1 |
    r8 a cs [ e ] ds4-. c8 b-> ~ | 
}
notesCommonForFlats = \relative c''' { 

    % A
    b4-^ a-^ fs8 d cs c-> | R1 | a'4-^ g-^ d8 g, a bf-> | R1 |
    r8 a cs [ e ] ds4-. c8 b-> ~ | 4 d8 cs-> ~ 4 e8 a-> ~ | 1 ~ | 2 r |

    % B
    b4-^ a-^ fs8 d cs c-> | R1 | a'4-^ g-^ d8 g, a bf-> | R1 |
    r8 a cs [ e ] ds4-. c8 b-> ~ | 8 d fs a-> ~ 4 fs8 e-> ~ | 2. d8 cs-> ~ | 1 ||

    % C
    r4 cs4-^ fs---> a8-- b-> | R1 | r4 cs4-^ a---> fs8-- b-> | R1 | 
    r4 cs,4-^ fs---> a8-- b-> | r2 r4 gs8-- a-> | r2 r4 fs8-- g-> | R1 ||


    % D
    b4-^ a-^ fs8 d cs c-> | R1 | a'4-^ g-^ d8 g, a bf-> | R1 |
    r8 a cs [ e ] ds4-. c8 b-> ~ | 
}

notesFirst = \relative c'' { 
    b8 d fs a-> ~ 4 fs8 e->  | r d-^ r4 r8 gs, a [ a'->\sfz ~ ] | a1*7/8\< s8\xff
}

notesSecond = \relative c'' { 
    b8\repeatTie d fs a-> c a g a-> ~ | 2 ~ 8 gs a bf-> ~ | 1 |
    r8 b4.-> g4-^ e-^ | c'4.-> bf8-> ~ 2 | 
    r8 cs4.-> a4-^ fs-^ | d'4---> cs8 c-> ~ 2 | 
    r8 b4.-> g4-^ e-^ | c'4-^ a-^ cs---> a8-- d-> ||
}

melody = \relative c' { 
    \notesCommon
    \notesFirst
    \notesSecond
}
melodyForFlats = \relative c' { 
    \notesCommonForFlats
    \notesFirst
    \notesSecond
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
        poet = "Concert"
        subtitle = "(Transposed to Key from Real Book version of If I Had You)"
        instrumentName = \poet
    }
    \score {
        \transpose d bf, <<
            \new ChordNames  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "real-book-key-for-Eb"
    \header {
        poet = "Eb Alto Sax"
        subtitle = "(Transposed to Key from Real Book version of If I Had You)"
        instrumentName = \poet
    }
    \score {
        \transpose ef c \transpose d bf, <<
            \new ChordNames  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
    }
}

