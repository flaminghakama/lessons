\version "2.24.0"

titleLeft = "Minority"
titleRight = ""
titleFull = "Minority"
composerName = "G. Gryce"
arranger = ""
copyright = ""

%{

killPreview ; rm minority*pdf ;  lilypond ly/songs/jazz/minority.ly  ; for file in minority*.pdf ; do op $file ; done  

killPreview
rm minority*pdf
lilypond ly/songs/jazz/minority.ly
mv minority*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/minority*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #19

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
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}

structure = \relative c' { 

    \key f \minor
    \tempo 4=254
    \time 4/4

    \startSection "Intro"
    \repeat volta 2 { 
        s1*4 \break 
        s1*3 
    }
    \alternative {
        { s1 \endRepeat }
        { s1 }
    }
    \startSection "Head"
    \startRepeat
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \startSectionWithLabel "Interlude" "Play 4X"
    \doubleRepeat
    s1*4 
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    %  "Intro"
    s1*4 
    s1*3 
    s1
    s1 

    \override Score.RehearsalMark.extra-offset = #'( -7 . -2 )
    %  "Head"
    s1*4 
    s1*4 
    s1*4 
    s1*4 

    \override Score.RehearsalMark.extra-offset = #'( -9 . 1 )
    % "Interlude" "Play 4X"
    s1*4 
}

rehearsalMarkTweaksForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    %  "Intro"
    s1*4 
    s1*3 
    s1
    s1 

    \override Score.RehearsalMark.extra-offset = #'( -7 . -2 )
    %  "Head"
    s1*4 
    s1*4 
    s1*4 
    s1*4 

    \override Score.RehearsalMark.extra-offset = #'( -9 . 1 )
    % "Interlude" "Play 4X"
    s1*4 
}

rehearsalMarkTweaksForEb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    %  "Intro"
    s1*4 
    s1*3 
    s1
    s1 

    \override Score.RehearsalMark.extra-offset = #'( -6 . -4 )
    %  "Head"
    s1*4 
    s1*4 
    s1*4 
    s1*4 

    \override Score.RehearsalMark.extra-offset = #'( -7 . 0 )
    % "Interlude" "Play 4X"
    s1*4 
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    f1:m13 | s | s | s |
    f1:m13 | s | s | s || s || 

    f1:m9 | d:m7.5-.9 | g:m7.5-.9 | c:7.9-.13 |
    f1:m9 | d:m7.5-.9 | c:m9 | f:13 |
    bf1:m9 | ef:13 | af:m9 | df:13 | 
    gf:m9 | cf:7.11+ | g:m7.5-.9 | c:aug7 ||

    f1:m6 | gf:7 | f:m6 | gf:7 |

}

melodyIntro = \relative c'' { 
    c1 ~ | 8 af bf c  bf af bf c ~ | 1 ~ | 8 af bf c  bf af bf f ~ | 
    f1 ~ | 8 ef f af  f ef f f ~ | 1 | r2 ef'4. df8 || R1 ||
}

harmonyIntro = \relative c'' { 
    g1 ~ | 8 ef f g  f ef f g ~ | 1 ~ | 8 ef f g  f ef f c ~ | 
    c1 ~ | 8 bf c ef c bf c c ~ | 1 | r2 c'2 || R1 ||
}

melodyHead = \relative c'' { 
    g2.. f8 | r2 d8 e f g | a2 4. g8 | a8 c4 a8 ~ 2 | 
    g2.. f8 | r2 f8 g bf c | d2 4. c8 | d8 f4 d8 ~ 2 | 
    c4-. r c4. bf8 | c8 ef4 c8 ~ 2 | r8 bf r4 bf4. af8 | bf8 df4 bf8 ~ 2 | 
    af2 4. 8 | r2 f8 gf r af | a2 4. 8 | r2 c8 af e c ||
}

harmonyHead = \relative c' { 
    e2.. d8 | r2 d8 e f g | f2 e4. d8 | df8 e4 bf8 ~ 2 | 
    e2.. d8 | r2 g8 g bf c | bf2 a4. g8 | gf8 a4 ef8 ~ 2 | 
    af4-. r af4. g8 | af8 bf4 g8 ~ 2 | r8 gf r4 gf4. f8 | gf8 af4 f8 ~ 2 | 
    ff2 4. 8 | r2 f8 gf r af | f2 4. e8 | r2 c'8 af e c ||  
}

bassTransition = \relative c {
    f2 c4 f | gf4. df'8 r bf r gf |   
    f2 c4 f | gf4. df'8 r bf r gf |   
}

melody = {
    \accidentalStyle default
    << 
        \melodyIntro \\
        \harmonyIntro
    >>
    <<
        \melodyHead \\
        \harmonyHead
    >>
    \clef bass
    \bassTransition
}

melodyForFlats = {
    \accidentalStyle default
    << 
        \melodyIntro \\
        \harmonyIntro
    >>
    <<
        \melodyHead \\
        \harmonyHead
    >>
    \transpose c, c \bassTransition
}


\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf bf <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melodyForFlats
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melodyForFlats
                >>
            }
        >>
    }
}
