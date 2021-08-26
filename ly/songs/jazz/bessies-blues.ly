\version "2.19.81"

titleLeft = "Bessie's"
titleRight = "Blues"
titleFull = "Bessie's Blues"
composerName = "J. Coltrane"

%{

rm bessie*pdf
lilypond ly/songs/jazz/bessies-blues.ly
mv bessie*pdf ly/songs/jazz
for file in pdf/songs/jazz/bessie*pdf ; do op $file ; done

%}

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #10
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
    \key ef \major
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \bar ":|]"
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef1:7 | af:7 | ef:7 | s | 
    af1:7 | s | ef:7 | s | 
    bf1:7 | af:7 | ef:7 | s |
}
chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsForm
}

melody = \relative c'' { 
    g4 ef8 df ~ 4. c'8 ~ | 4 af8 gf ~ 4. bf,8 | 
    g'8 ef g4 4 8 8 ~ | 8 ef d df ~ 2 |

    r8 c'4 ef,8 c' bf4 c8 ~ | 4. af8 ~ 8 gf4 ef8 | 
    g8 ef g4 4 8 8 ~ | 8 ef d df r4 g8 f ~ | 

    f4 d8 c bf c d f | ef c af ef c'4 ef8 8 ~ | 
    1 | r2 f8 g af bf ||
}


\header {
    title = \titleFull
    composer = \composerName
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
    \bookOutputSuffix "for-C"
    \header {
        poet = "Concert"
    }
    \score {
        <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c {
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Bb"
    \header {
        poet = "Bb Tenor Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c {
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "lead" \transpose bf, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

