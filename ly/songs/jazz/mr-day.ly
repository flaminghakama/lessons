\version "2.24.0"

titleLeft = "Mr."
titleRight = "Day"
titleFull = "Mr. Day"
composerName = "J. Coltrne"
arranger = ""
copyright = ""

%{

killPreview ; rm mr-day*pdf ; lilypond ly/songs/jazz/mr-day.ly ; for file in mr-day*pdf ; do open -a Preview $file ; done

rm mr-day*pdf
lilypond ly/songs/jazz/mr-day.ly
mv mr-day*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/mr-day*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"simplified in C" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #5

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.padding = #4

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
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key fs \major
    \time 4/4

    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    \repeat volta 2 { 
        \startRepeat
        s1*4 \break 
        s1*4 \break 
    }
    \alternative { 
        { s1*4 \endRepeat }
        { s1*4 }
    }
    \startSection ""
    s1 
    \endBar
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    fs1:7 | s | s | s | 
    b1:7 | s | fs:7 | s |
    b:7 | a:7 | fs1:7 | s ||

    fs1:7 | s | s | s | 
    b1:7 | s | fs:7 | s |
    b:7 | a:7 | fs1:7 | s ||
    b:7 | a:7 | fs1:7 | s ||
}

bassline = \relative c {
    fs4 r r fs | r2 r8 fs r4 | 
    fs4 r r fs | r2 r8 fs r4 | 

    b,4 r r b | r2 r8 b r4 | 
    fs'4 r r fs | r2 r8 fs r b, ~ | 

    b4 fs' b fs | a e cs a' | 
    fs4 r r fs | r2 r8 fs r4 | 
}


melody = \relative c'' {
    as4 cs2 as8 cs ~ | 4. as8 r cs4 8 | 
    as4 cs2 as8 cs ~ | 4. as8 fs e r4 | 

    r8 fs \tuplet 3/2 { a8 b cs } b4 a8 b ~ | 4. a8 b cs4 fs,8 | 
    as4 cs2 as8 cs ~ | 4. as8 fs e r4 | 

    r8 cs' b [ a ~ ] 8 b a fs ~ | 4. e8 fs4-. 4 | 
    fs4 4-. 4 e8 fs ~ | 4. e8 fs fs, r4 ||

    r4 r8 cs'' ~ 8 b cs b ~ | 4. a16 b a8 fs e4-. | 
    fs4 4-. 4 e8 fs ~ | 4. e8 fs gs fs e ||

    cs2 r ||
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
        subtitle = "(real book key)"
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    {
                        \clef bass 
                        \bassline
                        \clef treble 
                        \melody
                    }
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(real book key)"
    }
    \score {
        \transpose as, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    {
                        \transpose c, c \bassline
                        \melody
                    }
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(real book key)"
    }
    \score {
        \transpose ds, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    {
                        \transpose c, c \bassline
                        \melody
                    }
                    \noPageBreak
                >>
            }
        >>
    }
}

