\version "2.24.0"

titleLeft = "Mr."
titleRight = "P.C."
titleFull = "Mr. P.C."
composerName = "J. Coltrane"
arranger = ""
copyright = ""

%{

killPreview ; rm mr-pc*pdf ;  lilypond ly/songs/jazz/mr-pc.ly  ; for file in mr-pc*.pdf ; do op $file ; done  

killPreview
rm mr-pc*pdf
lilypond ly/songs/jazz/mr-pc.ly
mv mr-pc*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/mr-pc*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"
\include "../../../../engraving/flaming-libs/flaming-roadmap.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #7

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0

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
    \key c \minor
    \startRepeat
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \endRepeat
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:m | s | s | s | 
    f1:m | s | c:m | s | 
    af1:7 | g:7 | c1:m | s ||
}

melody = \relative c' { 
    c8 8 d8 8 ef8 8 f8 8 | g4. f8 ef c4 bf8 | c2 bf4. c8 ~ | 4 r r2 | 
    f8 8 g8 8 af8 8 bf8 8 | c4. bf8 af f4 ef8 | c2 bf4. c8 ~ | 4 r ef8 c ef gf | 
    r8 f4. ~ 4. gf8 | r f4 ef8 c4 bf | c2 bf4. c8 ~ | 4 r r2 |
}

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

