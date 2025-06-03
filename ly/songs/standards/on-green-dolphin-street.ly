\version "2.24.0"

titleLeft = "On Green"
titleRight = "Dolphin St."
titleFull = "On Green Dolphin St."
composerName = "B. Kaper"
lyricistName = "N. Washington"
arranger = ""
copyright = ""

%{

killPreview ; rm on-green-dolphin-street*pdf ; lilypond ly/songs/standards/on-green-dolphin-street.ly ; for file in on-green-dolphin-street*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/on-green-dolphin-street*
lilypond ly/songs/standards/on-green-dolphin-street.ly 
mv on-green-dolphin-street*pdf pdf/songs/standards
for file in pdf/songs/standards/on-green-dolphin-street*pdf ; do op $file ; done 

git add . ; git commit -m"day" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

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
\include "ly/ily/hideMelody.ily"


structure = \relative c' { 

    \key c \major
    \time 4/4
    \mark \markup \box "A" 
    s1*4 \break
    s1*4
    \bar "||" \break

    \mark \markup \box "B" 
    s1*4 \break
    s1*4
    \bar "||" \break

    \mark \markup \box "A" 
    s1*4 \break
    s1*4
    \bar "||" \break

    \mark \markup \box "C" 
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7 | s | c:m7 | s | 
    d1:7/c | s2 df2/c | c1:maj7 | s || 

    d1:m7 | g:7.8+.9+ | c1:maj7 | s |
    f1:m7 | bf:7.8+.9+ | ef1:maj7 | s2 g2:7 |

    c1:maj7 | s | c:m7 | s | 
    d1:7/c | s2 df2/c | c1:maj7 | s || 

    d2:m7 d:m/c | b:m7.5- e:7.9- | a:m7 a:m/g | fs:m7.5- b:7 | 
    e2:m7 a:7 | d:m7 g:7 | c1:maj7 | d2:m7 g:7 ||
}

melodyHead = \relative c'' { 
    c4. 8 ~ 2 ~ | 2 \tuplet 3/2 { b4 g e } | bf'1 ~ | 1 | 
    a4. 8 ~ 2 ~ | 2 \tuplet 3/2 { af4 f df } | g1 ~ | 1 ||

    r8 g4. d4 e | f g af bf8 g ~ | 1 ~ | 1 | 
    r8 bf4. f4 g | af bf cf df8 bf ~ | 1 ~ | 2 b2 ||

    c4. 8 ~ 2 ~ | 2 \tuplet 3/2 { b4 g e } | bf'1 ~ | 1 | 
    a4. 8 ~ 2 ~ | 2 \tuplet 3/2 { af4 f df } | g1 ~ | 1 ||

    r8 g4. d4 e | f g gs e' | d4. c8 ~ 2 | c,4 d ds b' | 
    a4. g8 ~ 2 | r8 g4. 4 4 | g1 ~ | 1 ||
}
melodyExercise = \relative c''' { 
    b1 s1*3 
    b1 s1*3 

    b1 s1*3 
    b1 s1*3 

    b1 s1*3 
    b1 s1*3 

    b1 s1*3 
    b1 s1*3 
}

emptyHead = \relative c'' { 
    s1*8
    s1*8
    s1*8 
    s1*8 
}

melodySong = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    \melodyHead
}

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "in-C-for-C"
    \header {
        poet = "    Concert Pitch"
        subtitle = "(learning key)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        subtitle = "(learning key)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        poet = "    Eb Alto Saxophone"
        subtitle = "(learning key)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-in-C-for-C"
    \header {
        poet = "    Concert Pitch"
        subtitle = "(learning key)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \hideMelody
                    \structure
                    \transpose b, c \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-in-C-for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        subtitle = "(learning key)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structure
                    \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-in-C-for-Eb"
    \header {
        poet = "    Eb Alto Saxophone"
        subtitle = "(learning key)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structure
                    \transpose b e \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-C"
    \header {
        poet = "    Concert Pitch"
        subtitle = "(original key)"
        instrumentName = \poet
    }
    \score {
        \transpose c ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        subtitle = "(original key)"
        instrumentName = \poet
    }
    \score {
        \transpose c ef <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-Eb"
    \header {
        poet = "    Eb Alto Saxophone"
        subtitle = "(original key)"
        instrumentName = \poet
    }
    \score {
        \transpose c ef <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-in-Eb-for-C"
    \header {
        poet = "    Concert Pitch"
        subtitle = "(original key)"
        instrumentName = \poet
    }
    \score {
        \transpose c ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \hideMelody
                    \structure
                    \transpose b, c \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-in-Eb-for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        subtitle = "(original key)"
        instrumentName = \poet
    }
    \score {
        \transpose c ef <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structure
                    \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-in-Eb-for-Eb"
    \header {
        poet = "    Eb Alto Saxophone"
        subtitle = "(original key)"
        instrumentName = \poet
    }
    \score {
        \transpose c ef <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structure
                    \transpose b e \melodyExercise
                >>
            }
        >>
    }
}

