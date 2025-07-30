\version "2.24.0"

titleLeft = "Free Cell Block F, "
titleRight = "'Tis Nazi U.S.A."
titleFull = "Free Cell Block F, 'Tis Nazi U.S.A."
composerName = "C. Mingus"
arranger = ""
copyright = ""

%{

killPreview ; rm free-cell-block-f*pdf ;  lilypond ly/songs/jazz/free-cell-block-f.ly  ; for file in free-cell-block-f*.pdf ; do op $file ; done  

killPreview
rm free-cell-block-f*pdf
lilypond ly/songs/jazz/free-cell-block-f.ly
mv free-cell-block-f*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/free-cell-block-f*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #0

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

    \key gf \major
    \tempo 4=176

    \startSection "A"

    \fiveFour
    s4 \tempo "Swing"
    s1
    \fourFour 
    s1*2 

    \fiveFour
    s1*5/4
    \fourFour 
    s1*3

    \startSection ""
    s1*5 
    s1*4 

    \startSection ""
    \fiveFour
    s1*5/4
    \fourFour 
    s1*2 

    \fiveFour
    s1*5/4
    \fourFour 
    s1


    \startSection "B"
    \tempo "Latin"
    s1*10
    \tempo "Swing"
    s1*2 

    \startSection "C"

    \fiveFour
    s1*5/4
    \fourFour 
    s1*2 

    \fiveFour
    s1*5/4
    \fourFour 
    s1

    \startSection ""
    s1*6
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -9 . -3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 5 )
    % "A"

    %5/4
    s4 
    \once \override Score.MetronomeMark.extra-offset = #'( -5.5 . 0 )
    s1 
    %4/4 
    s1*2 

    %5/4
    s1*5/4
    %4/4 
    s1*3

    % ""
    s1*5 
    s1*4 

    % ""
    %5/4
    s1*5/4
    %4/4 
    s1*2 

    %5/4
    s1*5/4
    %4/4 
    s1

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -5 )
    % "B"
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    % "Latin"
    s1*10
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    % "Swing"
    s1*2 

    \once \override Score.RehearsalMark.extra-offset = #'( -1 . -1 )
    % "C"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -9 . -3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 5 )
    % "A"

    %5/4
    s4 
    \once \override Score.MetronomeMark.extra-offset = #'( -5.5 . 0 )
    s1 
    %4/4 
    s1*2 

    %5/4
    s1*5/4
    %4/4 
    s1*3

    % ""
    s1*5 
    s1*4 

    % ""
    %5/4
    s1*5/4
    %4/4 
    s1*2 

    %5/4
    s1*5/4
    %4/4 
    s1

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -5 )
    % "B"
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    % "Latin"
    s1*10
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    % "Swing"
    s1*2 

    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 1 )
    % "C"
}

rehearsalMarkTweaksForEb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -9 . -3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 3 )
    % "A"

    %5/4
    s4 
    \once \override Score.MetronomeMark.extra-offset = #'( -5.5 . 0 )
    s1 
    %4/4 
    s1*2 

    %5/4
    s1*5/4
    %4/4 
    s1*3

    % ""
    s1*5 
    s1*4 

    % ""
    %5/4
    s1*5/4
    %4/4 
    s1*2 

    %5/4
    s1*5/4
    %4/4 
    s1

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -4 )
    % "B"
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    % "Latin"
    s1*10
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    % "Swing"
    s1*2 

    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 2 )
    % "C"
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    gf1*5/4:maj7 | b1:13 | s | 
    gf1*5/4:maj7 | b1:13| e:maj7 | a:13 | 

    d1:maj7 | g:13.11+ | s | c:maj7 | 
    c1:m6 | ef:maj7.5- | s | bf:maj7 | a:maj7 ||

    gf1*5/4:maj7 | b1:13 | s | 
    gf1*5/4:maj7 | b1:13 ||

    e1:7 | s | e:m6 | s | 
    d1:maj7 | s | d:m7.7+ | s | 
    g1:13 | s | c:maj9.11+ | s ||

    df1*5/4:maj7 | gf1:13 | s | 
    df1*5/4:maj7 | gf1:13 ||

    ef2:m7.5- af:aug7 | df:maj7 ef:9.11+ | ef:m7 af:7 | 
    d2:maj7 e:maj7 | d:maj7 df:maj7 | df1:aug7 || 
}

chordsFormForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    gf1*5/4:maj7 | cf1:13 | s | 
    gf1*5/4:maj7 | cf1:13 | ff:maj7 | a:13 | 

    d1:maj7 | g:13.11+ | s | c:maj7 | 
    c1:m6 | ef:maj7.5- | s | bf:maj7 | a:maj7 ||

    gf1*5/4:maj7 | cf1:13 | s | 
    gf1*5/4:maj7 | cf1:13 ||

    e1:7 | s | e:m6 | s | 
    d1:maj7 | s | d:m7.7+ | s | 
    g1:13 | s | c:maj9.11+ | s ||

    df1*5/4:maj7 | gf1:13 | s | 
    df1*5/4:maj7 | gf1:13 ||

    ef2:m7.5- af:aug7 | df:maj7 ef:9.11+ | ef:m7 af:7 | 
    d2:maj7 e:maj7 | d:maj7 df:maj7 | df1:aug7 || 
}

melodyAPartOne = \relative c'' { 
    \tuplet 3/2 4 { bf8 f gf  af ef f  gf df ef  f bf, cf  df cf bf } | 
    a8 <gs' a,> ~ 2. | a,8 <gs' a,> ~ 2. |
    \tuplet 3/2 4 { bf8 f gf  af ef f  gf df ef  f bf, cf  df cf bf } | 
    a8 <gs' a,> ~ 2. | 
}
melodyAPartOneForFlats = \relative c'' { 
    \tuplet 3/2 4 { bf8 f gf  af ef f  gf df ef  f bf, cf  df cf bf } | 
    bff8 <af' bff,> ~ 2. | bff,8 <af' bff,> ~ 2. |
    \tuplet 3/2 4 { bf8 f gf  af ef f  gf df ef  f bf, cf  df cf bf } | 
    bff8 <af' bff,> ~ 2. | 
}
melodyAPartTwo = \relative c'' { 
    \tuplet 3/2 4 { gf8 df ef  ff cf df  ef af, a  cf bf a } | 
    g8 <fs' g,> ~ 2. ||    
}
melodyAPartThree = \relative c' { 
    \tuplet 3/2 2 { 
        e4 d cs  b cs d | e d cs  b cs d | 
        e4 d cs  b cs d | e d c  b c d | d c b  a b c8 d |
    } 
    g8 d' a d,  g d' a d, | g d' a d,  g d' a d, |
    g8 d' a d,  g d' a d, | g d' a d,  g d' a4 |
}

melodyB = \relative c' { 
    fs4. e8 ~ 4 d | cs4. d8 ~ 4 e | fs4. e8 ~ 4 d | cs4. d8 ~ 4 e |
    fs4. e8 ~ 4 d | cs4. d8 ~ 4 e | f4. e8 ~ 4 d | cs4. d8 ~ 4 e |
    e4. d8 ~ 4 c | b4. c8 ~ 4 d | 
    d8 c4 b8  a b c d | e g b d gf,2 ||
}

melodyCPartOne = \relative c'' { 
    \tuplet 3/2 4 { f8 c df  ef bf c  df af bf  c f, gf  af gf f } | 
    ff8 <ef' ff,> ~ 2. | ff,8 <ef' ff,> ~ 2. |
    \tuplet 3/2 4 { f8 c df  ef bf c  df af bf  c f, gf  af gf f } | 
    ff8 <ef' ff,> ~ 2. || 
}
melodyCPartTwo = \relative c'' { 
    \tuplet 3/2 2 { a4 a a  a b a } | af8 bf c df  a4. 8 | 
    c8 df ef f  gf4 f | df1 ~ | 1 | R1 ||
}
melodyCPartTwoForFlats = \relative c'' { 
    \tuplet 3/2 2 { bff4 bff bff  bff cf bff } | af8 bf c df  a4. 8 | 
    c8 df ef f  gf4 f | df1 ~ | 1 | R1 ||
}


melody = {
    \melodyAPartOne 
    \melodyAPartTwo
    \melodyAPartThree 
    \melodyAPartOne 
    \melodyB 
    \melodyCPartOne
    \melodyCPartTwo
}
melodyForFlats = {
    \melodyAPartOneForFlats
    \melodyAPartTwo
    \melodyAPartThree 
    \melodyAPartOneForFlats 
    \melodyB 
    \melodyCPartOne
    \melodyCPartTwoForFlats
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
        \transpose c c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
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
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsFormForFlats
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
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
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsFormForFlats
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}



