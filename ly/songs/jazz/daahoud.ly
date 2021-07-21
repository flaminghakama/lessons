\version "2.19.81"

titleLeft = "Daa"
titleRight = "houd"
title = "Daahoud"
composerName = "C. Brown"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm daahoud*pdf
lilypond ly/songs/jazz/daahoud.ly
python ~/git/part-format/combine-1Page-1Page.py daahoud-for-C.pdf daahoud-for-Bb.pdf daahoud-for-C-and-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py daahoud-for-C.pdf daahoud-for-Eb.pdf daahoud-for-C-and-Eb.pdf
mv daahoud*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/daahoud*pdf ; do open -a Preview $file ; done

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

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

\include "ly/ily/layout.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key c \minor
    \time 4/4
    s1
    \mark \markup \box "A"
    \repeat volta 2 {
        \bar "[|:"
        s1*4 \break
        s1*3
    }
    \alternative {
        { 
            s1 
            \bar ":|]"
        }
        { 
            s1 \break
        }
    }

    \mark \markup \box "B"
    \repeat volta 2 {
    s1*4 \break
    s1*4
    }
    \bar "||" \break

    \mark \markup \box "A" 
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "||" 
}
structureCoda = \relative c' { 
    \key c \minor
    \atCoda
    s1*5
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1
    ef2:m7 af:7 | df:m7 gf:7 | cf1:maj7 | f2:m7 bf:7 |
    ef1:6 | cf2:7 bf:7 | ef1:maj7 
                        | ef1:maj7 ||
                        | ef1:maj7 ||

    bf1:m7 | ef:7 | af:maj7 | s | 
    af1:m7 | df:7 | gf:maj7 | f2:m7 bf:7 ||

    ef2:m7 af:7 | df:m7 gf:7 | cf1:maj7 | f2:m7 bf:7 |
    ef1:6 | cf2:7 bf:7 | ef1:m7.7+ | af2:m7 df:7 | 
    gf1:maj7 | ef2:m7 af:7 | cf:7 bf:7 | ef1:m7.7+ || 
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*4 | ef1:m7.7+ || 
}

melodypickup = \relative c' { 
    r8 f d [ ef ] gf bf d f ~
}
melodyACommon = \relative c'' { 
    f1 | r4 ef8 df ef gf ef df | bf gf g af r2 | 
    r4 bf8 af bf af <<
        \relative c'' {
            gf8 ef ~ | 1 | 
            r8 gf ef [ df ~ ] 8 bf df d ~ | 1 |
        } \\ \relative c'' { 
            gf8 cf, ~ | 4. bf8 ~ 4. a8 ~ | 4. af8 ~ 4. g8 ~ | 1 | 
        }
    >>
}
melodyAEndingOne = \relative c' { 
    r8 f d [ ef ] gf bf d f \laissezVibrer
}
melodyAEndingTwo = \relative c' {     
    r2 r8 << 
        \relative c' {
            d8 ef [ ef' ] ~
        } \\ \relative c' { 
            d8 ef [ af ] ~
        }
    >>
}
melodyB = \relative c'' { 
    << 
        \relative c'' {
            ef2 ~ 8 8 8 8
        } \\ \relative c'' { 
            af2 ~ 8 f fs g
        }
    >> | 
    \relative c''' { 
        r4 r8 gf-^ r ef-^ r df-^ | ef2. 
    } << 
        \relative c'' {
            bf8 af
        } \\ \relative c'' { 
            g8 f
        }
    >>
    r2 r8 << 
        \relative c' {
            c8 df [ df' ] ~ | 2 ~ 8 8 8 8 
        } \\ \relative c' { 
            c8 df [ gf ] ~ | 2 ~ 8 ef e f 
        }
    >> |
    \relative c'' {
        r4 r8 ff-^ r df-^ r bf-^ | df2 bf8 af gf bf |
    }
}
melodyLastA = \relative c'' {
    r4 <<
        \relative c'' { 
            bf8 af r df cf [ bf ~ ] | 4. 8 r af gf [ f ~ ] | 4. 8 
            r8 ef df [ c ~ ] | 8 gf' f af gf f ef d |
        } \\ \relative c'' {
            bf8 af r4 r8 f ~ | 4. ef8 r4 r8 df ~ | 4. c8 
            r8 ef df [ gf, ] ~ | 2 f4. ef8 |
        }
    >> | \toCoda R1 ||
}
melodyCoda = \relative c'' {
    R1*3
    \relative c' { r8 c ef [ g ] f af }
    << 
        \relative c'' { 
            c8 bf ~ | \fermata bf1 ||
        } \\ \relative c'' {
            c8 d, ~ | d1 ||
        }
    >>
}
melody = {
    \melodypickup
    \melodyACommon
    \melodyAEndingOne
    \melodyAEndingTwo
    \melodyB
    \melodypickup
    \melodyACommon
    \melodyLastA
}


\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \chordsSong }
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

    \score {
        \header {
            piece = " "
        }
        <<
            \new ChordNames \transpose c c  { \chordsCoda }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
        \layout { 
            indent = 2.15\cm
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
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { \chordsSong  }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }

    \score {
        \header {
            piece = " "
        }
        <<
            \new ChordNames \transpose bf, c  { \chordsCoda }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
        \layout { 
            indent = 2.15\cm
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
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { \chordsSong }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }

    \score {
        \header {
            piece = " "
        }
        <<
            \new ChordNames \transpose ef, c  { \chordsCoda }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
        \layout { 
            indent = 2.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

