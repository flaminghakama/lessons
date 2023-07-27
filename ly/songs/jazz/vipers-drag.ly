\version "2.22.0"

titleLeft = "The Viper's"
titleRight = "Drag"
title = "The Viper's Drag"
composerName = "T. W. \"F.\" Waller"
arrangerName = "as played by C. Calloway"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview

rm vipers-drag*pdf ; lilypond ly/songs/jazz/vipers-drag.ly ; for file in vipers-drag*pdf ; do open -a Preview $file ; done


rm vipers-drag*pdf
lilypond ly/songs/jazz/vipers-drag.ly
mv vipers-drag*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/vipers-drag*pdf ; do open -a Preview $file ; done

./bin/createIndexes.sh 
git add . ; git commit -m"new song" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-right = ##f
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

structureFats = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key d \minor
    \time 4/4

    \startSection "Melody"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 

}
structureCab = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key d \minor
    \time 4/4

    \startSection "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*4 \break 
        s1*2 
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 }
    }\break 
    
    \startSection "B"
    \bar ":|]"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break
    s1 s2... \toCoda s16 s1*2  \break 

    \startSection "Solos A"
    \bar "S[|:"
    s1*4 \break 
    s1*4 \break 
    \startSection "Solos B"
    \bar ":|]"
    s1*4  
    s1*4 \break 
    s1*4  
    s1*3 <>_\markup \center-column {
        "D.S. for more solos" 
    } s1 
    \bar "||"
    \noPageBreak
}

atCoda = <>^\markup { \translate #'( -12 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \key d \minor
    \atCoda
    s1*4
    \bar "|."
}


chordsAFats = \chordmode { 
    d1:m | s | bf:9 | s | 
    g1:m6 | s2 a:aug7 | d1:m6 | s ||
}
chordsACab = \chordmode { 
    d1:m | s | bf:9 | s | 
    g1:m6 | s2 a:aug7 | d1:m6 | s || d1:m6 | s ||
}
chordsBFats = \chordmode { 
    d1:m9 | s | s | s | 
    g1:m9 | s | a:aug7 | s ||
}
chordsBCab = \chordmode { 
    d1:m9 | s | s | s | 
    g1:m9 | s | s | s | 
    a1:aug7 | s | s | s | 
    a1:7.13- | s | d:m | s ||
}

chordsSolosCab = \chordmode { 
    d1:m | s | bf:9.11+ | s | 
    g1:m6 | s2 a:aug7 | d1:m6 | s ||
    d1:m | s | s | s | 
    g1:m | s | s | s | 
    a1:7.13- | s | s | s | 
    d1:m | g:m | d:m | s | 
}

chordsCodaCab = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m | g:m | d:1.3.5.7+.13 | s ||
}

chordsSongFats = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

}
chordsSongCab = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsACab 
    \chordsBCab
    \chordsSolosCab
}

melodyAFats = \relative c'' {
    r8 d r d r d r d | r d r d f4 d | af1 ~ | 1 | 
    r8 g r g r g r g | r g r gs a4 f | 
}
melodyAFatsFirstEnding = << 
    { d4 s4 s2 | s1 } \\ 
    \relative c, { 
        \clef bass 
        d8. e16 f8. g16 a8. f16 a4 |
        af8. f16 af4 g8. c16 a4 |
    } 
>>
melodyAFatsSecondEnding = << 
    { d4 s4 s2 | s1 } \\ 
    \relative c, { 
        \clef bass 
        d8. e16 f8. g16 a4 f |
        d4 a8 d ~ 2 |
    } 
>>

melodyACab = \relative c'' {
    r8 d r d r d r d | r d r d f4-. d | af1 ~ | 2. r4 | 
    r8 g r g r g r g | r g r g a4. f8 | d1 ~ | 2 r || d1 ~ | 2 
}

melodyBFats = \relative c'' {
    c8 ||
    d4 c a c | d c8 a ~ 8 c4. |
    d8 8 c4 a c | d c8 a ~ 8 c4. | 
    g'4 f d f | g f8 d ~ 8 f4. | 
    a4 r r8 a8 8 [ 8 ] | a4 r r2 ||
}

melodyBCab = \relative c'' {
    r8 c r4 ||
    d4 c a8 c cs4 | d c4 a8 c r4 |
    d4 c a8 c cs4 | d c8 a r c d4 |
    g4 f d f8 fs | g4 f8 d ~ 8 f g4 | 
    g4 f d f | g4 f8 d ~ 8 f g4 |
    g8 8 f4-. ds8 8 cs4-. | b8 8 a4-. g8 8 f4-. |  
    g'8 8 f4-. ds8 8 cs4-. | b8 8 a4-. g8 8 f4-. |  
    r8 d' r d r d r d | r d r d a'4-. f4 | d1  | r8 d r d r d r4 | 
}

melodyCodaCab = \relative c'' {
    d2. r4 | d2. r4 | 
    << 
        { d1 ~ | 1 } \\
        \relative c' { 
            \tuplet 3/2 { cs4 d fs, } cs'4 b ~ | 1 
        }
    >>
}


melodyFats = \relative c'' {
}

melodyCab = \relative c'' {
    \melodyACab
    \melodyBCab
    <>\xmf \comp #16 
    <>\xmf \comp #16 

    <>\xmf \comp #16 
    <>\xmf \comp #16 
    <>\xmf \comp #16 
    <>\xmf \comp #16 
}


\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "Cab-for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(as played by Cab Calloway)"
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongCab
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCab
                    \melodyCab
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            piece = " "
        }
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCodaCab
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCoda
                    \melodyCodaCab
                >>
            }
        >>
        \layout { 
            indent = 5\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

\book {
  \bookOutputSuffix "Cab-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(as played by Cab Calloway)"
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongCab
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCab
                    \melodyCab
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            piece = " "
        }
        \transpose bf, c  <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCodaCab
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCoda
                    \melodyCodaCab
                >>
            }
        >>
        \layout { 
            indent = 5\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

\book {
  \bookOutputSuffix "Cab-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(as played by Cab Calloway)"
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongCab
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCab
                    \melodyCab
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            piece = " "
        }
        \transpose ef, c  <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCodaCab
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCoda
                    \melodyCodaCab
                >>
            }
        >>
        \layout { 
            indent = 5\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

