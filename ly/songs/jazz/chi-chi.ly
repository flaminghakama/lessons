\version "2.24.0"

titleLeft = "Chi "
titleRight = "Chi"
titleFull = "Chi Chi"
composerName = "C. Parker"
arranger = ""
copyright = ""

%{

killPreview ; rm chi-chi*pdf ;  lilypond ly/songs/jazz/chi-chi.ly  ; for file in chi-chi*.pdf ; do op $file ; done  

killPreview
rm chi-chi*pdf
lilypond ly/songs/jazz/chi-chi.ly
mv chi-chi*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/chi-chi*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #16

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

    \key af \major
    \tempo 4=220
    \time 4/4

    \partial 4. 
    s4.

    \startSection "Head"
    \repeat volta 2 {
        \bar "S[|:"
        s1*11
    }
    \alternative {
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "Solos"
    \startRepeat
    s1*12
    \endRepeat
}

structureCoda = \relative c' { 
    \noPageBreak
    \time 3/4
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key af \major 
    \once \override Score.RehearsalMark.extra-offset = #'( -12 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s2.*19
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -3 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT

    s4. 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s1*4 \break 
    s1*4 \break 
    s1*4 s1 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "B"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
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

    s4. ||
    af1:7 | bf2:m7 ef:7 | af1:7 | ef2:m7 af:7 | 
    df1:7 | df:m7 | c:m7 | b:m7 | 
    bf1:m7 | ef:7 | c2:m7 f:7 | bf:m7 ef:7 || bf:m7 ef:7 || 

    af1:7 | bf2:m7 ef:7 | af1:7 | ef2:m7 af:7 | 
    df1:7 | df:m7 | c:m7 | b:m7 | 
    bf1:m7 | ef:7 | c2:m7 f:7 | bf:m7 ef:7 || 
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s4. ||
    af1:7 | bf2:m7 ef:7 | af1:7 | ef2:m7 af:7 | 
    df1:7 | df:m7 | c:m7 | cf:m7 | 
    bf1:m7 | ef:7 | c2:m7 f:7 | bf:m7 ef:7 || bf:m7 ef:7 || 

    af1:7 | bf2:m7 ef:7 | af1:7 | ef2:m7 af:7 | 
    df1:7 | df:m7 | c:m7 | cf:m7 | 
    bf1:m7 | ef:7 | c2:m7 f:7 | bf:m7 ef:7 || 
}

chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    % \set noChordSymbol = ##t
}


melody = \relative c'' { 
    ef8 af [ df ] ||
    c8 af ef c  f4 r8 c | df c' bf e,  r8 c' r bf | 
    \tuplet 3/2 { g8 af a } bf8 g  af ef f gf | r4 r8 cf  r8 af r cf | 
    
    bf2. r4 | r8 af4 ff8  af bf af g | 
    r8 bf4. g8 ef c g | fs d'4. ~ 4. c8 | 

    df4 r  r8 af' r f | af bf af ff  af bf af g ~ |
    g8 ef f gf ~ 4 r8 e | f af bf af c ef, af df || f, af bf af c8 4. ||

    af4 \comp #3 | \comp #12 |  
    <>\xmp \comp #16 |  
    <>\xmp \comp #16 |  
}
melodyForFlats = \relative c' { 
    ef8 af [ df ] ||
    c8 af ef c  f4 r8 c | df c' bf e,  r8 c' r bf | 
    \tuplet 3/2 { g8 af a } bf8 g  af ef f gf | r4 r8 cf  r8 af r cf | 
    
    bf2. r4 | r8 af4 ff8  af bf af g | 
    r8 bf4. g8 ef c g | gf eff'4. ~ 4. c8 | 

    df4 r  r8 af' r f | af bf af ff  af bf af g ~ |
    g8 ef f gf ~ 4 r8 e | f af bf af c ef, af df || f, af bf af c8 4. ||

    af4 \comp #3 | \comp #12 |  
    <>\xmp \comp #16 |  
    <>\xmp \comp #16 |  
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
                \accidentalStyle default
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
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
                \accidentalStyle default
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
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
                \accidentalStyle default
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}

