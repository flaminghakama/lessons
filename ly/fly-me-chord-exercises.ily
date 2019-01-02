\version "2.19.81"

titleLeft = "Chord"
titleRight = "Exercises"
title = "Chord Exercises"
composerName = "D. Elaine Alt"

\include "../../scores/flaming-libs/flaming-paper.ily"
\include "../../scores/flaming-libs/flaming-markup.ily"
\include "../../scores/flaming-libs/flaming-chords.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

\layout {
    \context {
        \Score
        \omit BarNumber
    }
}

chordsA = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	a1:m7 | d:m7 | g:7 | c |
	f1 | b:m7.5- | e:7 | a:7 | 

	d1:m7 | g:7 | c | a:m | 
	d1:m7 | g:7 | c | b2:m7 e:7 | 
}
chordsB = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	a1:m7 | d:m7 | g:7 | c |
	f1 | b:m7.5- | e:7 | a2:m7 a:7 | 

	d1:m7 | g:7 | 

		e:m7.5- | a:7 | 
	d:m7 | g:7 | c1 | b2:m7 e:7 | 
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

		e2:m7.5- bf:9 | a1:7.9- | 
	d:m7 | g:7.9- | c2 bf4:6 b:7 | c1 | 
}
