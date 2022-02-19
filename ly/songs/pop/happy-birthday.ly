\version "2.19.81"

titleLeft = "Happy"
titleRight = "Birthday"
title = "Happy Birthday"
composerName = ""

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

structure = \relative c' { 
    \key d \major
    \time 3/4
    \partial 4*1 s4
    s2.*12
    \bar "||"
}

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
}

melodyHead = \relative c'' { 
    a8 8 || b4 a d | cs2 a8 8 | 
    b4 a e' | d2 a8 8 | a'4 fs d | 
    cs4 b g'8 8 | fs4 d e | d2. 
}

lyricsHead = \lyricmode {
    Hap -- py birth -- day to you
    Hap -- py birth -- day to you
    Hap -- py birth -- day dear some -- one
    Hap -- py birth -- day to you

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

}
