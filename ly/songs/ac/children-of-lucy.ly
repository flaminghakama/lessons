\version "2.24.0"

titleLeft = "Children"
titleRight = "of Lucy"
titleFull = "Children of Lucy"
composerName = "A.C. Lewis"
arranger = ""
copyright = ""


%{

killPreview ; rm children-of-lucy-*.pdf ; lilypond ly/songs/ac/children-of-lucy.ly ; for file in children-of-lucy-*pdf ; do op $file ; done

killPreview
rm children-of-lucy*pdf
lilypond ly/songs/ac/children-of-lucy.ly 
mv children-of-lucy-*pdf pdf/songs/ac
for file in pdf/songs/ac/children-of-lucy-*pdf ; do op $file ; done  

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

    \key g \major 
    \time 4/4
    \tempo 4=136 

    s1*4


    \startSectionWithLabel "A" "Open during solos"
    \bar "S[|:"
    \repeat volta 2 {
        s1*4 \break
        s1*2 
    }
    \alternative { 
        { s1*2 \endRepeat }
        { s1*2 \break }
    }

    \override Score.RehearsalMark.extra-offset = #'( -2 . 0 )
    \startSectionWithLabel "B" "Cued during solos"
    \bar "[|:"
    s1*4 \break 
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    \startSection "C"
    \bar ":|][|:"
    s1*3 s2... \toCoda s16 \break 
    s1*4 \break
    \endRepeat
}

atCoda = <>^\markup { \translate #'( -12 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \key g \major
    \atCoda
    s1*5
    \bar "|."
}


chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions

    s1*4 

    g2 fs | f f:dim | e1:m7 | s |  
    g1 | f2 f:dim | g1 | s ||  
        g1 | s || 

    e1 | d | cs:m7 | c | 
    gs1:m | fs:m | c/g | d2:7 e:m7 ||

    e1 | d | cs:m7 | c | 
    gs1:m | fs:m | c/g | d2:7 e:m7 ||
}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    gs1:m | fs:m | c/g | d:13 | e  ||
}

tromboneA = \relative c' {
    d2 df | c b | e,1 ~ | 2 r | 
    b'2 bf | a af | g1 | g,2 r || g1 ~ | 4 r r2 || 
}

tromboneB = \relative c' {
    e1 | d | cs | c | 
    b | a | g | d2 e |
}

tromboneC = \relative c {
    e4. 8 ~ 8 fs g4 ~ | 2 r4 b,8 8 | e4 d8 e ~ 8 fs g4 ~ | 4 r r b, | 
    e4. 8 ~ 8 fs g4 ~ | 2 r4 b,8 8 | e4 d8 e ~ 8 fs g4 ~ | 4 r r b,8 8 || 
}

tromboneCoda = \relative c {
    e4. 8 ~ 8 fs g4 ~ | 2 r4 b,8 8 | e4 d8 e ~ 8 fs g4 ~ | 4 r r b, | \fermata e1 || 
}

trombone = {
    R1*4
    \tromboneA
    \tromboneB
    \tromboneC
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
