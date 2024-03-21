\version "2.24.0"

titleLeft = "Remember"
titleRight = ""
titleFull = "Remember"
composerName = "compsoed by I. Berlin"
arranger = "arranged by H. Mobley"
copyright = ""

%{

killPreview ; rm remember*pdf ;  lilypond ly/songs/jazz/remember.ly  ; for file in remember*.pdf ; do op $file ; done  

killPreview
rm remember*pdf
lilypond ly/songs/jazz/remember.ly
mv remember*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/remember*.pdf ; do op $file ; done  

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
  system-system-spacing.basic-distance = #17

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

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )

    \key af \major
    \tempo 4=220
    \time 4/4
    \partial 8 
    s8
    \startSection "A"
    \startRepeat
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 1 )
    s8
    \once \override Score.RehearsalMark.extra-offset = #'( 2 . 3 )
    %  "A"
    s1*8 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    %  "A"
    s1*8 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    %  "B"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    %  "A"

}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s8 ||
    df1 | c:7 | b:7 | bf:7 |
    bf1:m7 | a:7 | af:maj7 | ef2:m7 af:7 ||

    df1 | c:7 | b:7 | bf:7 |
    bf1:m7 | a:7 | af:maj7 | ef2:m7 af:7 ||

    df1 | s | s | gf:m7.5- | 
    af1:maj7 | s | g:m7.5- | c:7.9- ||

    df1 | c:7 | b:7 | bf:7 |
    bf1:m7 | a:7 | af:maj7 | ef2:m7 af:7 ||
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s8 ||
    df1 | c:7 | cf:7 | bf:7 |
    bf1:m7 | a:7 | af:maj7 | ef2:m7 af:7 ||

    df1 | c:7 | cf:7 | bf:7 |
    bf1:m7 | a:7 | af:maj7 | ef2:m7 af:7 ||

    df1 | s | s | gf:m7.5- | 
    af1:maj7 | s | g:m7.5- | c:7.9- ||

    df1 | c:7 | cf:7 | bf:7 |
    bf1:m7 | a:7 | af:maj7 | ef2:m7 af:7 ||
}


melody = \relative c'' { 
    \accidentalStyle default
    af8 || 
    f8 af r4 r f8 c' | r2 r8 bf4. | af4-. r af8 f af c | r2 r8 af4. | 
    f4-. r r r8 af | e4-. r r r8 af | c ef r4 r2 | r2 r4 r8 af, ||

    f2 af4-. f8 c' | r2 r8 bf4. | af4-. r af8 f af c | r2 r4 8 af8 | 
    f2 ~ 4. af8 | e4-. r r r8 af | c ef4. ~ 4 r | R1 ||

    f2 af4 f8 af ~ | 2 r4 df, | f4. r8 r4 af,8 df ~ | 4 ef8 ( [ \grace { ff16 ef } df8 ) ] af ff ef df | 
    c4 r8 c' ef4 c8 ef ~ | 2. c8 bf | r2 bf8 af bf c | r2 r4 r8 af ||

    f8 af r4 r f8 c' | r2 r8 bf4. | af4-. r af8 f af c | r2 r4 r8 af8 | 
    f4-. r r r8 af | e2 r | \comp #8 ||
}
melodyForFlats = \relative c'' { 
    \melody
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
        \transpose af af <<
            \new ChordNames { 
                \chordsForm
            }
            \new Staff = "lead" \transpose c c {
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
        \transpose bf, c  \transpose af af <<
            \new ChordNames \transpose c c { 
                \chordsFormForFlats
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
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
        \transpose ef c \transpose af af <<
            \new ChordNames \transpose c c { 
                \chordsFormForFlats
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                >>
            }
        >>
    }
}

