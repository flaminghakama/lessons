\version "2.19.83"

titleLeft = "I Waited"
titleRight = "For You"
title = "I Waited For You"
composerName = "J. B. 'D.' Gillespie & G. Fuller"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{


killPreview
rm i-waited-for-you*.pdf
lilypond ly/songs/standards/i-waited-for-you.ly 
mv i-waited-for-you*.pdf pdf/songs/standards
for file in pdf/songs/standards/i-waited-for-you*.pdf ; do op $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #16

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 

    \key g \major

    \override Score.RehearsalMark.self-alignment-X = #LEFT    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    a1:m7.5-/d | d:13.9- | g:maj9 | bf2:m7 ef:7 |
    a1:m7.5-/d | d:13 | g:maj9 | af2:m7 df:7 |

    c1 | c2:m7 f:7 | bf1 | bf2:m7 ef:7 | 
    e1:m7.5- | a:7.8+.9+ | fs2:m7 b:7 | f:m7 bf:7 | 

    a1:m7.5-/d | d:13.9- | g:maj9 | bf2:m7 ef:7 |
    a1:m7.5-/d | d:13 | g:maj9 | af2:m7 df:7 |

    c2 b4:m7.5- a:m | g2 fs4:m7 b:7 | e2:m7.5- e2:m7.5-/d | cs:m7.5-.9 fs:7.9- |  
    a2:m7.5- d:7 | f:7 e:7 | a:m7 d:7 | g1 | 
}

melodyA = \relative c'' { 
    d2. \tuplet 3/2 { c8 g ef } | b'2. fs4 | 
    a4. g8 a4 g | f2. r4 | 

    d'2. \tuplet 3/2 { c8 g ef } | b'2. fs4 | 
    a4. g8 a g4. |
}
melodyB = \relative c'' {
    R1 || 
    r4 d b g | \tuplet 3/2 { d'4 bf g } c2 | 
    r4 c a f | \tuplet 3/2 { c'4 af f } bf2 |
    r4 g a bf | c2. \tuplet 3/2 { bf8 ( c b ) } | 
    a1 | r2 r4 d, |  
}
melodyC = \relative c'' { 
    r8 bf4 af8 bf af4. ||
    r4 g a b | d e2 b4 | 
    a2. d,4 | ef2. d4 |
    d'2. \tuplet 3/2 { c8 g ef } | b'8 ( \grace { bf16 a } gs4. ~ 4. ) d8 | 
    b'4. d8 b4. d,8 | g2. r4 
}
melodyForm = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyB
    \melodyA
    \melodyC
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I wait -- ed for you
    to have your -- self a fling.

    I wait -- ed for you
    to do the town up.

    You saw the glow and be -- came 
    just like a moth to a flame.

    You did the town all good. 

    And 
    I wait -- ed for you.
    We danced the night a -- way.

    I wait -- ed for you.
    En -- joy a gay time 
    night or day -- time.

    Must be a lot one can do 
    it seems.

    But I wait -- ed for you
    Now you come wait for me.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = ""
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}