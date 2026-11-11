\version "2.24.0"

titleLeft = "Foot"
titleRight = "prints"
titleFull = "Footprints"
composerName = "W. Shorter"

arranger = ""
copyright = ""

%{

killPreview ; rm footprints*pdf ;  lilypond ly/songs/jazz/footprints.ly  ; for file in footprints*.pdf ; do op $file ; done  

killPreview
rm footprints*pdf
lilypond ly/songs/jazz/footprints.ly
mv footprints*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/footprints*.pdf ; do op $file ; done  

git add . ; git commit -m"post-session fix" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

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

\layout {
    \context {
        \StaffGroup
        \override StaffGrouper.staff-staff-spacing.padding = #4
    }
}

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key c \minor
    \time 4/4

    \mark "Intro + Extended Coda (Optional)"
    \bar "[|:"
    s1*2 \break

    \time 6/4 
    \mark "Play 4X"
    \bar ":|][|:"
    s1.*2 \break

    \startSection "A"
    \bar ":|][|:"    
    s1.*4 \break 
    s1.*4 \break 
    s1.*4 
    \bar ":|]"
}

chordsSongTop = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    fs2:m9 b:9 | e:m9 a:9 | 
    
    s1.*2

    s1.*12
}
chordsSongShorterMid = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s1*2

    s1.*2

    c1.:m9 | s | s | s | 
    f1.:m9.13 | s | c:m9 | s | 
    fs2.:m9 b:aug7.9+ | e:7.9+ a:1.3.5+.7.9+.11+ | c1.:m9 | s |
}
chordsSongLevinMid = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s1*2

    s1.*2

    c1.:m9 | s | s | s | 
    f1.:m9.13 | s | c:m9 | s | 
    fs2.:m9 b:aug7.9+ | f:1.3-.5.7.11 bf:13 | c1.:m9 | s |
}
chordsSongTopForFlats = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    gf2:m9 cf:9 | e:m9 a:9 | 
    
    s1.*2

    s1.*12
}
chordsSongShorterMidForFlats = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s1*2

    s1.*2

    c1.:m9 | s | s | s | 
    f1.:m9.13 | s | c:m9 | s | 
    gf2.:m9 cf:aug7.9+ | e:7.9+ a:1.3.5+.7.9+.11+ | c1.:m9 | s |
}
chordsSongLevinMidForFlats = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s1*2

    s1.*2

    c1.:m9 | s | s | s | 
    f1.:m9.13 | s | c:m9 | s | 
    gf2.:m9 cf:aug7.9+ | f:7.9+ bf:1.3.5+.7.9+.11+ | c1.:m9 | s |
}

melody = {
    \relative c'' {
        e8. 16 r e r8 e8 ds b cs | 
        d8. 16 r d r8 d8 [ cs ] a r |
    }
    s1.*2
    \relative c'' {
        
        bf4 4 4  8 c ~ 4. a8 | 
        \tuplet 5/6 { bf8 a g f d ~ } 2 c4 | 
        R1.*2 

        bf'4 4 4  8 c ~ 4. d8 | 
        \tuplet 5/6 { ef8 d c bf g ~ } 2 f4 | 
        \tuplet 5/6 { bf8 a g f d ~ } 2 c4 | 
        R1.

        b'4 4 4  8 d ~ 4. g,8 | 
        bf2. \glissando g4 ~ 8 [ c g fs ] | 
        f1. | 
        R1.
    }
}

melodyForBb = {
    \relative c'' {
        ff8. 16 r ff r8 ff8 ef cf df | 
        d8. 16 r d r8 d8 [ cs ] a r |
    }
    s1.*2
    \relative c'' {
        
        bf4 4 4  8 c ~ 4. a8 | 
        \tuplet 5/6 { bf8 a g f d ~ } 2 c4 | 
        R1.*2 

        bf'4 4 4  8 c ~ 4. d8 | 
        \tuplet 5/6 { ef8 d c bf g ~ } 2 f4 | 
        \tuplet 5/6 { bf8 a g f d ~ } 2 c4 | 
        R1.

        cf'4 4 4  8 d? ~ 4. g,8 | 
        bf2. \glissando g4 ~ 8 [ c g fs ] | 
        f1. | 
        R1.
    }
}
melodyForEb = {
    \relative c' {
        ff8. 16 r ff r8 ff8 ef cf df | 
        d8. 16 r d r8 d8 [ cs ] a r |
    }
    s1.*2
    \relative c'' {
        
        bf4 4 4  8 c ~ 4. a8 | 
        \tuplet 5/6 { bf8 a g f d ~ } 2 c4 | 
        R1.*2 

        bf'4 4 4  8 c ~ 4. d8 | 
        \tuplet 5/6 { ef8 d c bf g ~ } 2 f4 | 
        \tuplet 5/6 { bf8 a g f d ~ } 2 c4 | 
        R1.

        cf'4 4 4  8 d? ~ 4. g,8 | 
        bf2. \glissando g4 ~ 8 [ c g fs ] | 
        f1. | 
        R1.
    }
}

bassLick = \relative c { 
    c4 g' c ef2 ~ 8 g, | 
}
bassLickSub = \relative c { 
    c4 f c' ef2 ~ 8 f, | 
}
bassLickTurnaround = \relative c { 
    c4 g' c e ~ 8 c g e | 
}

bassline = {
    s1*2 

    \bassLick
    \bassLick

    \bassLick
    \bassLick
    \bassLick
    \bassLick

    \bassLickSub
    \bassLickSub
    \bassLick
    \bassLick

    \bassLick
    \bassLick
    \bassLick
    \bassLickTurnaround
}

\header {
    title = \title
    composer = \composerName
}

\layout {
    \context { 
        \Staff 
        \RemoveAllEmptyStaves 
    }
}

\book {
  \bookOutputSuffix "Shorter-turnaround-for-C"
    \header {
        poet = "Concert Lead Sheet"
        subtitle = "(Wayne Shorter turnaround)"
        instrumentName = \poet
    }
    \score {
        \new StaffGroup \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongTop
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongShorterMid
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \clef bass
                <<
                    \structure
                    \bassline
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Shorter-turnaround-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        subtitle = "(Wayne Shorter turnaround)"
        instrumentName = \poet
    }
    \score {
        \new StaffGroup \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongTopForFlats
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForBb
                >>
            }
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongShorterMidForFlats
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \transpose c, c \bassline
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Shorter-turnaround-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        subtitle = "(Wayne Shorter turnaround)"
        instrumentName = \poet
    }
    \score {
        \new StaffGroup \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongTopForFlats
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForEb
                >>
            }
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongShorterMidForFlats
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \transpose c, c \bassline
                >>
            }
        >>
    }
}




\book {
  \bookOutputSuffix "Levin-turnaround-for-C"
    \header {
        poet = "Concert Lead Sheet"
        subtitle = "(Grant Levin turnaround)"
        instrumentName = \poet
    }
    \score {
        \new StaffGroup \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongTop
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongLevinMid
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \clef bass
                <<
                    \structure
                    \bassline
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Levin-turnaround-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        subtitle = "(Grant Levin turnaround)"
        instrumentName = \poet
    }
    \score {
        \new StaffGroup \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongTopForFlats
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForBb
                >>
            }
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongLevinMidForFlats
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \transpose c, c \bassline
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Levin-turnaround-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        subtitle = "(Grant Levin turnaround)"
        instrumentName = \poet
    }
    \score {
        \new StaffGroup \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongTopForFlats
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForEb
                >>
            }
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongLevinMidForFlats
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \transpose c, c \bassline
                >>
            }
        >>
    }
}
