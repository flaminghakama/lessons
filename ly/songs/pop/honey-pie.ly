\version "2.19.81"

titleLeft = "Honey"
titleRight = "Pie"
title = "Honey Pie"
composerName = "J. Lennon & P. McCartney"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"

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

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structure = \relative c' { 

    \key f \major
    \tempo "Ad lib."
    \time 4/4 
    s1*4
    s1*4
    s1*4

    \tempo "Steady tempo"
    \time 2/2 
    R1 
    \bar "[|:"
    \repeat volta 2 \relative c'' { 
        s1*5
    }
    \alternative {
        \relative c' {
            s1*3
            \bar ":|]"
        }
        \relative c''{
            s1 
        }
    } 
    s1*2
    \bar "S" \break

    s1*8
    s1*6
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \mark \markup \huge \bold \musicglyph #"scripts.coda"
    \pageBreak

    s1*14
    \once \override Score.RehearsalMark.extra-offset = #'(0 . -8.5) 
    \mark \dsAlCoda
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key f \major 
    \once \override Score.RehearsalMark #'extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s1*3 \break 
    s1*4 \break 
    s1*3
    \bar "|."
}

chordsHead = \chordmode {
    \set chordChanges = ##t
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    d2:m g | c1:9 | bf:m | f | 
    d2:m g | c1:9 | bf:m | f | 
    g1:7 | s |     
    c1:7 | s | s |

    f1 | s | df:7 | d:7 | 
    g1:7 | 

        c1:7 | f | df2 bf4 c:7 |
        c1:7 | f | e2 ef |

    d1:m | d:m6 | f:7 | s2 c4:m7 f:7 | 
    bf1 | d:7 | g:m | c:7 | 

    f1 | s | df:7 | d:7 | 
    g1:7 | c:7 | f | 

    df2:7 c:7 | f1 | s | s | 
    df2:7 c:7 | f1 | s | df:7 | 
    d1:7 | g:7 | c:7 | f | s |  
}

chordsCoda = \chordmode {
    \set chordChanges = ##t
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1 | df2:7 c:7 | f1 | s | 
    df1:7 | d:7 | g:7 | c2:7 g4:7 g:m | 
    f1 | s | 
}

melodyHead = \relative c' { 

    r4 d4 e f | g8 a4 g8 ~ 2 | a8 bf4 g8 ~ 4 a | \fermata c,1 |
    f'4 4 4 8 8 ~ | 4 g,2. | a4 bf g8 a4 f8 ~ | \fermata 1 | 
    a4 g f e8 d ~ | 4 e f a4*3/4 s4*1/4^\markup { \musicglyph #"scripts.caesura.straight" } | 
    <g e>4 <f d> <e c> <d bf> | c1 |

    R1 
    \relative c'' { 
        a8 c4 f,8 ~ 2 | r8 c' d [ f~ ] 8 d c4 | af8 ( f4 ) af8 ~ 2 | 
        r8 gs a [ d~ ] 8 a g4 | f8 ( d4 ) f8 ~ 2 |
    }
        \relative c' {
            r8 c a' [ bf ] <c e,> af ( <g e>4 ) | f1 | af4 g f <e c'> |
        }
        \relative c''{
            r8 g a [ <c e,> ~ ] 8 af g4 | 
        }
    \relative c' { f2 <a f'> | <gs e'> <g ef'> | }

    << 
        \relative c'' { d8 f4 d8 ~ 4 c } 
        \relative c' { f1 }
    >>
    \relative c'' {
        <a f>8 <g e>4. <f d>4 <g e> | <a f>8 f4 <c' a>8 ~ 2 | 
        r4 f, <bf g> <c a f> 
    }
    <<
        \relative c'' {
            d4 cs8 d ~ 8 ef d4 | d cs8 d ~ 8 ef d4 | g,1 | 
        }
        \relative c'' { 
            <bf f>1 | <a fs> | bf,4 \rest d2 f4 | 
        }
    >>
    \relative c'' { 
        <c e,>8-> 4-> 8-> ~ 4 gs | 
    }

    \relative c'' { 
        a8 c4 f,8 ~ 2 | r8 c' d [ f ~ ] 8 d c4 | af8 ( f4 ) af8 ~ 2 | 
        r8 gs a [ d ~ ] 8 a g4 | f8 ( d4 ) f8 ~ 2 |
        r8 c a' [ bf ] <c e,> af ( <g e>4 ) \bar "||"
        f2. f'8. 16 | f4 df c gs8. ( a16 ) | f4 r4 r f' ( ~ | 
        c8 a4. ) r2 | 
        \override NoteHead.style = #'cross
        r4 r8 bf8 8 8 4 | 4 r bf4 4 | 
        \revert NoteHead.style
        r2 | r8 a a [ f ] | a8 4 f8 a c4 a8 | f'4. df8 ~ 4 r | 
        a'8 4 8 ~ 8 fs d4 | a'8 g4 f8 d4 r | 
        a'8 af g f d df c4 | af8 ( g f2.) | R1 \bar "||"
    }
}

melodyCoda = \relative c' { 
    f4 c' r8 c f [ c ] | f4 af,8 a f4 c' ~ | 8 a4 f8 ~ 4 r | 
    r8 c' ( d [ f ~ ] 8 d c4 | af8 g4 ) af8 ~ 4 r |
    r8 gs ( a [ d ~ ] 8 ) a ( g a ) | f8 ( e4 f8 ~ 4 ) r |
    r4 c'8 8 d4 <f d> | <f a,>1 ~ | 2. r4 
    \bar "|."
}
lyricsHead = \lyricmode {
    She was a work -- ing girl, 
    North of Eng -- land way,
    Now she's in the big time
    in the U. S. A.

    And if she could on -- ly hear me, 
    this is what I'd say
    << 
        {
            Hon -- ey Pie, 
            you are mak -- ing me cra -- zy
            I'm in love but I'm la -- zy
        }
        \new Lyrics = "secondVerse"
        \with { alignBelowContext = #"firstVerse" } {
            Hon -- ey Pie, 
            my po -- sit -- ion is tra -- gic,
            Come and show me tha ma -- gic,
        }
    >>
    So won't you please come home. " "  " "  " "  Oh
    of your Hol -- ly -- wood song. " "  " "  " "

    <<
        {
            You be -- came a le -- gend of the sil -- ver screen    
        }
        \new Lyrics = "secondVerse"
        \with { alignBelowContext = #"firstVerse" } {
            Will the wind that blew her boat a -- cross the sea
        }
    >>
    And now the 
    <<
        {
            though of meet -- ing you 
            makes me weak in the knees. " "  " " 
            T -- T -- tee Oh
            Hon -- ey Pie, 
            you are driv -- ing me fran -- tic,
            Sail a -- cross the At -- lan -- tic
            To be where you be -- long,
        }
        \new Lyrics = "secondVerse"
        \with { alignBelowContext = #"firstVerse" } {
            Kind -- ly send " " her sail -- ing " " back to me, " "  " "
            T -- T -- tee Now
            Hon -- ey Pie, 
            you are mak -- ing me cra -- zy,
            I'm in love but I'm la -- zy, 
            So won't you please come
        }
    >>

    Hon -- ey Pie come back to me.
    oo
    I like it like that, 
    ooh ah.

    I like a this kind of hot kind of Mu -- sic,
    Hot kind of mu -- sic, 
    play it to me,
    Play it to me, 
    I got the blues.
}

lyricsCoda = \lyricmode {
    home, come, 
    Come back to me, 
    Hon -- ey Pie, 
    ha ha ha, 
    oo -- ah, 
    oo oo ah 
    Hon -- ey Pie come back.
}

\book {
	%\bookOutputSuffix "-for-C"

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
