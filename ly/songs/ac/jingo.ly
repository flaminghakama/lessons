\version "2.24.0"

titleLeft = "Jingo"
titleRight = ""
titleFull = "Jingo"
composerName = "Baba Olatunje"
arranger = "A.C. Lewis"
copyright = ""


%{

killPreview ; rm jingo-*.pdf ; lilypond ly/songs/ac/jingo.ly ; for file in jingo-*pdf ; do op $file ; done

killPreview
rm jingo*pdf
lilypond ly/songs/ac/jingo.ly 
mv jingo-*pdf pdf/songs/ac
for file in pdf/songs/ac/jingo-*pdf ; do op $file ; done  

git add . ; git commit -m"renotating" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
 
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \key b \minor 
    \time 4/4
    \tempo 4=129 

    s1

    \startSection "A"
    s1*10

    \startSection "B" 
    \bar "S[|:"
    s1*4 
    s1*4 
    s1*4 \break 

    \startSectionWithLabel "C" \markup \center-column {
        "Guitar lead"
        "2nd X open if guitar wants"
    } 
    s1*4 
    s1*12 \break 


    \startSection "D"
    s1 
    \mark "interlude"
    s1*7

    \startSectionWithLabel "E" "Jingo"
    s1*4
    s1*4
    s1*3 s2... \toCoda s16 
    s1*4

    \startSection "F"
    s1*2
    \mark "open percussion solo with band"
    s1*10
    \endRepeat
}

atCoda = <>^\markup { \translate #'( -12 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \key b \minor
    \atCoda
    s1*7
    \bar "|."
}


chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions

}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
}

tromboneA = \relative c' {
    R1*10
}

tromboneB = \relative c' {
    b1 ~ | 2. d4 | b1 ~ | 2 r4 fs | b2. d4 | b2. fs4 | b2. d4 | 
    b2 r4 fs | b d b fs | b d b fs' | b,8 d b fs b d b fs' | b, d b fs' b, d b fs' | 
}

tromboneC = \relative c {
    b1 | R1*15 |
}
tromboneD = \relative c {
    R1*8 |
}
tromboneE = \relative c {
    fs8. a16 ~ 4 ~ 2 ~ | 2 r4 fs8 a | fs8 r r4 r2 | R1 | 
    fs8. a16 ~ 4 ~ 2 ~ | 2 r4 fs8 a | fs8 r r4 r2 | r2 r4 r8 a |
    fs8. 16 ~ 8 a fs8. 16 ~ 8 a | fs8. 16 ~ 8 a fs r r a | 
    fs8. 16 ~ 8 a fs8. 16 ~ 8 a | fs8. 16 ~ 8 a fs r r4 |
    fs8. a16 ~ 4 ~ 2 ~ | 2 r4 fs8 a | fs8 r r4 r2 | R1 || 
}
tromboneF = \relative c {
    R1*12 |
}

tromboneCoda = \relative c {
    fs8. 16 ~ 8 a fs8. 16 ~ 8 a | fs8. 16 ~ 8 a fs r r a | 
    fs8. 16 ~ 8 a fs8. 16 ~ 8 a | fs8. 16 ~ 8 a fs r r4 |
    fs8. a16 ~ 4 ~ 2 ~ | 2 r4 fs8 a | fs8 r r4 r2 || 
}

trombone = {
    R1
    \tromboneA
    \tromboneB
    \tromboneC
    \tromboneD
    \tromboneE
    \tromboneF
}

\book {
  \bookOutputSuffix "Trombone"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Trombone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                <<
                    \structure
                    \trombone
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
                \chordsCoda
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \clef bass
                <<
                    \structureCoda
                    \tromboneCoda
                >>
            }
        >>
        \layout { 
            indent = 3\cm
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
  \bookOutputSuffix "Tenor"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = \markup \center-column {
            "Tenor Sax in Bb"
        }
        instrumentName = \poet
    }
    \score {
        \transpose bf,, c <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef treble
                <<
                    \structure
                    \trombone
                >>
            }
        >>
    }


    \score {
        \header {
            piece = " "
        }
        \transpose bf,, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \clef treble
                <<
                    \structureCoda
                    \tromboneCoda
                >>
            }
        >>
        \layout { 
            indent = 3\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }

}
