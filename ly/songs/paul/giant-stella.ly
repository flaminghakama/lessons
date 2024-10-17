\version "2.24.0"

titleLeft = "Giant"
titleRight = "Stella"
titleFull = "Giant Stella"
composerName = "B. Paul"
arranger = ""
copyright = ""

%{

killPreview ; rm giant-stella*pdf ;  lilypond ly/songs/paul/giant-stella.ly  ; for file in giant-stella*.pdf ; do op $file ; done  

killPreview
rm giant-stella*pdf
lilypond ly/songs/paul/giant-stella.ly
mv giant-stella*.pdf pdf/songs/paul
for file in pdf/songs/paul/giant-stella*.pdf ; do op $file ; done  

git add . ; git commit -m"single and double page versions" ; git push 
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
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #4

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

    \key a \minor
    \tempo 4=116
    \time 4/4

    \partial 4 
    s4

    \startSection "A"
    \startRepeat
    s1*4 \break
    s1*4 \break

    \startSection ""
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "C"
    s1*4 \break
    s1*4 
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -3 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    s4
    \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    \startRepeat
    s1*16 

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*8 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "C"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -3 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    s4
    \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    \startRepeat
    s1*16 

    \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "B"
    s1*8 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "C"
}

rehearsalMarkTweaksForEb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -3 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    s4
    \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    \startRepeat
    s1*16 

    \override Score.RehearsalMark.extra-offset = #'( -3 . -4 )
    % "B"
    s1*8 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "C"
}


chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s4 ||

    e2:m7.5- af:13 | df:maj7 e:13 | a:maj7 c:9 | c:m9 f:13 |
    f2:m7 af:7 | df:maj7 e:7 | a:maj7 c:7 | c:m7 f:7 || 

    bf2:maj7 c:7 | f:maj7 af:7 | df:maj7 e:7 | a:maj7 c:7 | 
    f2:maj7 af:7 | df:maj7 e:7 | a:m7.5- e:7.9- | d:7.9- d:7 ||

    g1:7.13- | b:7.13- | c:m7.7+ | e:m7 |
    af1:maj7.9+ | s | bf:dim7/af | bf:maj7 ||

    e2:m7.5- af:13 | df:maj7 e:13 | a:m7.5- ef:7.9- | d:7.9- d:7 |
    d2:m7.5- g:7.8+.9+.13- | cs:m7 fs:7 | c1:maj7 | s ||
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s4 ||

    e2:m7.5- af:13 | df:maj7 e:13 | a:maj7 c:9 | c:m9 f:13 |
    f2:m7 af:7 | df:maj7 e:7 | a:maj7 c:7 | c:m7 f:7 || 

    bf2:maj7 c:7 | f:maj7 af:7 | df:maj7 e:7 | a:maj7 c:7 | 
    f2:maj7 af:7 | df:maj7 e:7 | a:m7.5- e:7.9- | d:7.9- d:7 ||

    g1:7.13- | cf:7.13- | c:m7.7+ | e:m7 |
    af1:maj7.9+ | s | bf:dim7/af | bf:maj7 ||

    e2:m7.5- af:13 | df:maj7 e:13 | a:m7.5- ef:7.9- | d:7.9- d:7 |
    d2:m7.5- g:7.8+.9+.13- | df:m7 gf:7 | c1:maj7 | s ||
}


melody = \relative c'' {
    \customScripts #flaming-articulations
    \accidentalStyle modern-cautionary
    bf4 || 
    a2 ~ 4 c | af2 ~ 4 e8 fs | gs8 4. ~ 2 | r2 r4 f | 
    g1 ~ | 2 cs,8 d cs d | e1 | r2 r8 d cs [ d ] ||

    f8 bf, ~ 2. | r2 r8 f' e [ f ] | af df, ~ 2. | r2 r8 a' gs [ a ] |
    c8 f, ~ 2. | r2 r4 r8 c' | d2. c4 | f,2 r4 d' ||

    ef2 r4 d | f2. ef4 | d4 b ~ 8 c d ef | fs2 ~ 8 d b g | 
    e2 r4 fs | gs2 c | 1 ~ | 4 r bf2 ||

    a2 ~ 4 c | af2 ~ 4 e8 fs | g8 4. ~ 2 | r2 r4 ef8 f | 
    gf1 ~ | 2 r4 fs8 gs | a1 ~ | 1 ||
}

melodyForFlats = {
    \customScripts #flaming-articulations
    \accidentalStyle modern-cautionary
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
        \transpose c c <<
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
                \chordsFormForFlats
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
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
                \chordsFormForFlats
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

