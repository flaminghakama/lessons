\version "2.22.0"

titleLeft = "Birks'"
titleRight = "Works"
title = "Birks' Works"
composerName = "J. B. 'D.' Gillespie"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview

rm birks-works*pdf ; lilypond ly/songs/jazz/birks-works.ly ; for file in birks-works*pdf ; do open -a Preview $file ; done


rm birks-works*pdf
lilypond ly/songs/jazz/birks-works.ly
mv birks-works*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/birks-works*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"new song" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


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

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key f \minor
    \time 4/4

    \partial 4.
    s4. 
    \bar "[|:"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    \bar ":|]"
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4. ||
    f1:m | g2:m7.5- c:7 | f1:m | c2:m7.5- f:7 | 
    bf1:m7 | s | f1:m | s |
    af2:m7 df:7 | g:m7.5- c:7 | f1:m | c:7 ||
}

melody = \relative c' {
    f8 af [ bf ] ||
    b8 c \tuplet 3/2 { b16 ( [ c b } bf8 ] ) af f af bf | 4 af8 c r f, af [ bf ] |
    b8 c \tuplet 3/2 { b16 ( [ c b } bf8 ] ) af f af bf | r2 r8 f af [ bf ] |

    bf8 cf \tuplet 3/2 { bf16 ( [ cf bf } af8 ] ) af f af bf | 4 af8 cf r f, af [ bf ] |
    b8 c \tuplet 3/2 { b16 ( [ c b } bf8 ] ) af f af bf | r2 r8 f af [ bf ] |

    r8 bf4. ~ 8 f af bf | r8 bf4. \tuplet 3/2 { af16 ( [ bf af } f8 ] ) ef f ~ | 
    f2. r4 | r2 r8 f af [ bf ] ||
}

melodyForFlats = \relative c' {
    f8 af [ bf ] ||
    cf8 c \tuplet 3/2 { cf16 [ ( c cf } bf8 ] ) af f af bf | 4 af8 c r f, af [ bf ] |
    cf8 c \tuplet 3/2 { cf16 [ ( c cf } bf8 ] ) af f af bf | r2 r8 f af [ bf ] |

    bf8 cf \tuplet 3/2 { bf16 [ ( cf bf } af8 ] ) af f af bf | 4 af8 cf r f, af [ bf ] |
    cf8 c \tuplet 3/2 { cf16 [ ( c cf } bf8 ] ) af f af bf | r2 r8 f af [ bf ] |

    r8 bf4. ~ 8 f af bf | r8 bf4. \tuplet 3/2 { af16 ( [ bf af } f8 ] ) ef f ~ | 
    f2. r4 | r2 r8 f af [ bf ] ||
}

melodySimplified = \relative c' {
    f8 af [ bf ] ||
    b8 c b bf  af f af bf | 4 af8 c r f, af [ bf ] |
    b8 c b bf  af f af bf | r2 r8 f af [ bf ] |

    bf8 cf bf bf  af f af bf | 4 af8 cf r f, af [ bf ] |
    b8 c  b bf af f af bf | r2 r8 f af [ bf ] |

    r8 bf4. ~ 8 f af bf | r8 bf4. af8 f ef f ~ | 
    f2. r4 | r2 r8 f af [ bf ] ||
}

melodySimplifiedForFlats = \relative c' {
    f8 af [ bf ] ||
    cf8 c cf c bf8 af f af bf | 4 af8 c r f, af [ bf ] |
    cf8 c cf c bf8 af f af bf | r2 r8 f af [ bf ] |

    bf8 cf bf bf af f af bf | 4 af8 cf r f, af [ bf ] |
    cf8 c cf c bf8 af f af bf | r2 r8 f af [ bf ] |

    r8 bf4. ~ 8 f af bf | r8 bf4. af8 f8 ef f ~ | 
    f2. r4 | r2 r8 f af [ bf ] ||
}


\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "in-F-for-C"
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
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-F-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(real book key)"
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-F-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(real book key)"
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "simplified-in-F-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(simplified)"
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodySimplified
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(Dizzy's big band key)"
    }
    \score {
        \transpose f c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Dizzy's big band key)"
    }
    \score {
        \transpose f c \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Dizzy's big band key)"
    }
    \score {
        \transpose f c \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}


\book {
  \bookOutputSuffix "in-Bb-for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(Dizzy's combo key)"
    }
    \score {
        \transpose f bf, <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Bb"
    \header {
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Dizzy's combo key)"
    }
    \score {
        \transpose f bf, \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Dizzy's combo key)"
    }
    \score {
        \transpose f bf \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}
