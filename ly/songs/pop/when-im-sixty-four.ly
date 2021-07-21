\version "2.19.81"

titleLeft = "When I'm"
titleRight = "Sixty Four"
title = "When I'm Sixty Four"
composerName = "P. McCartney"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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

toCoda = <>^\markup { \translate #'( -2 . 1.75) \huge \bold \musicglyph #"scripts.coda" }
atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structure = \relative c' { 
    \key c \major
    s1*8 
    s1*8 

    s1*8 
    s1*9 \bar "S" 
    \pageBreak

    s1*8 
    s1*7
    \toCoda
    s1

    s1*8
    s1*9 
    \once \override Score.RehearsalMark.extra-offset = #'(0 . -8.5)
    \mark \dsAlCoda
    \bar "||"
}
structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key c \major 
    \once \override Score.RehearsalMark #'extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s1*5 \bar "|."
}

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    c1 | s | s | g:7 | 
    g1:7 | s | s | c | 
    c1 | s | c:7 | f1 | 
    f2 af2:7.5-/gf | c/g a:7 | d2:9 g:13 | c1 | 

    a1:m | s | g | a:m | 
    a1:m | s | e | s | 
    a1:m | s | d:m | s | 
    f1 | g | c | g | 
    s1 |

    c1 | s | s | g:7 | 
    g1:7 | s | s | c | 
    c1 | s | c:7 | f1 | 
    f2 af2:7.5-/gf | c/g a:7 | d2:9 g:13 | c1 | 

    a1:m | s | g | a:m | 
    a1:m | s | e | s | 
    a1:m | s | d:m | s | 
    f1 | g | c | g | 
    s1 |
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1 | s | s | f2: g:7 | c1 | 
}

melodyHead = \relative c' { 
    e8. ds16 e8 g ~ 4 e | g8. a16 g8 c ~ 2 | 
    c8 e4. c4 a8 d ~ | 4 r r2 | 
    b8. c16 cs8. d16  b8. c16 cs8. d16 | b8 bf4 a8 ~ 4 r | 
    b4 c cs d | e8 ef d c ~ 4 r | 

    e,8. ds16 e8 g ~ 4 e | g8. a16 g8 c ~ 2 | 
    e8 e4. d4 a8 c ~ | 2 r | 
    c8. a16 c8 ef ~ 8 d4. | c8. a16 c8 b ~ 8 a4. | 
    e'8 4. 8 4. | c1 | \break

    R1 | e2 d4 c | b g a b | c1 | 
    a2 b | c g' | e1 ~ | 1 | 
    a2 g | e d4 c | d2 4 a ~ | 1 | 
    c2 a | g4 r a r | c4
        << 
            \new Voice = "lead" { 
                s4 s2 | s1 | s | 
            } \\ 
            \new CueVoice {
                \stemDown
                f,8. g16 f8. e16 d8. c16 | g'1 | g'4 g,8. b16 d8 f4. |
            } 
        >>
    \break

    e,8. ds16 e8 g ~ 4 e | g8. a16 g8 c ~ 2 | 
    c8 e4. c4 a8 d ~ | 4 r r2 | 
    b8. c16 cs8. d16  b8. c16 cs8. d16 | b8 bf4 a8 ~ 4 r | 
    b4 c cs d | e8 ef d c ~ 4 r | 

    e,8. ds16 e8 g ~ 4 e | g8. a16 g8 c ~ 2 | 
    e8 e4. d4 a8 c ~ | 2 r | 
    c8. a16 c8 ef ~ 8 d4. | c8. a16 c8 b ~ 8 a4. | 
    e'8 4. 8 4. | c1 | \break

    c8. a16 c8. a16 c8. a16 c8. a16 | c8. a16 c8. a16 c4 f,8 g ~ | 
    4 8. 16 4 a8 e ~ | 1 | 
    a2 b | c g' | e1 ~ | 1 | 
    R1 | e2 d4 c | d2 4 a ~ | 1 | 
    c2 a | g4 r a r | c4
        << 
            \new Voice = "lead" { 
                \stemUp
                s4 s2 | s1 | s | 
            } \\
            \new CueVoice {
                \stemDown
                f,8. g16 f8. e16 d8. c16 | g'4 g'2. | g4 g,8. b16 d8 f4. |
            } 
        >>
}

melodyCoda = \relative c'' { 
	\atCoda
    c2. c4-> | 
    << 
        \new Voice = "lead" {
            s1 | s | s | s |
        } \\
        \new CueVoice {
            \stemDown
            e,8. ds16 e8 g ~ 4 e | g8. a16 g8 c ~ 8. b16 c8. d16 | 
            e8. d16 c8. a16 c8 d4 c8 ~ | 2. r4 
        }
    >>
}

lyricsHead = \lyricmode {

    When I get old -- er 
    los -- ing my hair
    man -- y years from now

    Will you still be send -- ing me a 
    val -- en -- tine, 
    birth -- day greet -- ings
    bot -- tle of wine?

    If I'd been out till 
    quar -- ter to three
    would you lock the door?

    Will you still need me,
    will you still feed me
    When I'm six -- ty four?

    Oo " " --  " " --  " " --  " " --  " " --  " " --  " "  
    You'll be old -- er too.
    Ah, -- " " and if you say the word
    I could stay with you

    <<
        { 
            I could be han -- dy 
            men -- ding a fuse
            when your lights have gone
            
            You can knit a sweat -- er by the fi -- re -- side, 
            Sun -- day mor -- ning go for a ride.

            Do -- ing the gar -- den, 
            dig -- ging the weeds, 
            Who could ask for more?
        }
        \new Lyrics = "secondVerse"
        \with { alignBelowContext = #"firstVerse" } {
            \set associatedVoice = "melody"
            Send me a post -- card, 
            drop me a line
            stat -- ing point of view

            In -- di -- cate pre -- cise -- ly what you mean to say
            Yours sin -- cere -- ly wast -- ing a -- way.

            Give me your an -- swer 
            fill in a form, 
            Mine for ev -- er more
        }
    >>
    Will you still need me,
    will you still feed me
    When I'm six -- ty four?

    Ev' -- ry sum -- mer we can rent a 
    cot -- tage in the Isle of Wright
    if it's not too dear.

    We shall scrimp and save;
    Grand chil -- dren on you knee;
    Ve -- ra, Chuck and Dave.
}

lyricsCoda = \lyricmode {
    Four? Ho!
}

\book {
	\bookOutputSuffix "in-C"

    \header {
    	title = \title
    	composer = \composerName
    }

    \score {
        <<
            \new ChordNames \transpose c c { \chordsHead }
        	\new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \autoPageBreaksOff
                    \transpose c c <<
                        \structure
                        \melodyHead
                    >>
                    \noPageBreak
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c { \chordsCoda }
        	\new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \autoPageBreaksOff
                    \transpose c c <<
                        \structureCoda
                        \melodyCoda
                    >>
                    \noPageBreak
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}
