\version "2.24.0"

titleLeft = "Gospel"
titleRight = ""
titleFull = "Gospel"
composerName = "S. Lacy"
arranger = ""
copyright = ""

%{

killPreview ; rm gospel*pdf ;  lilypond ly/songs/jazz/gospel.ly  ; for file in gospel*.pdf ; do op $file ; done  

killPreview
rm gospel*pdf
lilypond ly/songs/jazz/gospel.ly
mv gospel*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/gospel*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"
\include "../../../../engraving/flaming-libs/flaming-roadmap.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #7

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

structure = \relative c' { 

    \key c \major
    \tempo 4=176
    \time 4/4

    s1*4

    \startSectionWithLabel "A" "3X"
    \segnoRepeat
    s1*4
    \endRepeat
    s1 

    \startSection "B"
    s1*4
    s1*4
    s1*3 s2..
        \dottedQuarterEqualsQuarter s8

    \startSection "C"
    s1*2
    \sixFour 
    s1 s4. \quarterEqualsDottedQuarter s8

    \startSection "D"
    \time 4/4
    s1*4
    s1*4 | s2 \fine s2 ||

    \startSectionWithLabel "A" "4X"
    \startRepeat
    s1*4
    
    \startSectionWithLabel "Solos" "Blues"
    \doubleRepeat
    s1*11 | s2 \dsFine s2 ||
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -8 . 3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    s1*4 \break 

    \override Score.RehearsalMark.extra-offset = #'( -3 . 1 )
    % "A" "3X"
    s1*4
    s1 \break

    \override Score.RehearsalMark.extra-offset = #'( 0 . 2 )
    % "B"
    s1*4 \break
    s1*4 \break
    s1*3 s2..
        \once \override Score.MetronomeMark.extra-offset = #'( 2 . 1 )
        s8

    \override Score.RehearsalMark.extra-offset = #'( -2 . 2 )
    % "C"
    s1*2
    s1 s4. 
        \once \override Score.MetronomeMark.extra-offset = #'( 2 . 1 )
        s8 ||
    \pageBreak

    \override Score.RehearsalMark.extra-offset = #'( -1 . 0 )
    % "D"
    \time 4/4
    s1*4 \break
    s1*5 
    \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    %  "A" "4X"
    s1*4
    \break
    
    \override Score.RehearsalMark.extra-offset = #'( -6 . 2 )
    % "Solos"
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


    s1*4

    s1*4
    s1 

    s1*4
    s1*4
    s1*4
    s1*2
    s1.

    s1*4
    s1*5

    s1*4
    
    c1:7 | s | s | s | 
    f1:7 | s | c:7 | s | 
    g1:7 | f:7 | c:7 | s || 
}

melodyIntro = \relative c, { 
    fs8 4 b8 ~ 8 e,4. | a8 bf4 ds8 ~ 8 gs,4. | 
    cs4. 8  fs,4. 8 | fs'8 8 8 8 ~ 2 ||
}

melody = \relative c' { 
    c8 f4 bf8 ~ 8 ef,4. | e8 a4 d8 ~ 8 g,4. | 
    c4. f8 ~ 2 | bf4. ef8 ~ 2 ~ || 1 ||

    r8 f,4 c8 g' c, r4 | a'8 a, e'4  c8 g r4 | 
    a'8 a, e'4  c8 g r4 | a'8 a, e'4  c8 g4 ef'8 ~ |
    ef4. c8  f bf,4 df8 ~ | 8 g,4 c8 g'4 r | 
    \tuplet 3/2 { c,8 df c } g8 c  g'4 r8 d ~ | 8 g,4 c8 g'2 |
    r8 a4 fs8 ~ 8 d4 a8 | g4 fs'8 e ~ 4 r8 g ~ | 
    g8 e4 cs8 ~ 8 a4 fs8 ~ | 8 a4 d8 ~ 4 r8 e ||

    fs8 g a b ~ 8 cs d ef ~ | 8 bf g ef ~ 4. f8 ~ ||
    f4. g8 ~ 2 ~ 4 ~ \tuplet 3/2 { g4 gs8 ~ } ||

    gs8 ds4 gs8 e b e gs ~ | 8 ds4 gs8 e b e gs, ~ | 
    gs8 ds4 gs8  e b e gs ~ | 8 ds4 gs8  e b e gs' ~ |
    gs8 ds4 gs8 e b e gs ~ | 8 ds4 gs8  e b e4 ~ |
    e1 ~ | 1 ~ | 2 r ||

    c,8 f4 bf8 ~ 8 ef,4. | e8 a4 d8 ~ 8 g,4. | 
    c4. f8 ~ 2 | bf4. ef8 ~ 2 ||

    <>\xp s1*4 \break
    <>\xp s1*4 \break 
    <>\xp s1*4
}
melodyForEb = \relative c' { 
    c8 f4 bf8 ~ 8 ef,4. | e8 a4 d8 ~ 8 g,4. | 
    c,4. f8 ~ 2 | bf4. ef8 ~ 2 ~ || 1 ||

    r8 f,4 c8 g' c, r4 | a'8 a, e'4  c8 g r4 | 
    a'8 a, e'4  c8 g r4 | a'8 a, e'4  c8 g4 ef'8 ~ |
    ef4. c8  f bf,4 df8 ~ | 8 g,4 c8 g'4 r | 
    \tuplet 3/2 { c,8 df c } g8 c  g'4 r8 d ~ | 8 g,4 c8 g'2 |
    r8 a4 fs8 ~ 8 d4 a8 | g4 fs'8 e ~ 4 r8 g ~ | 
    g8 e4 cs8 ~ 8 a4 fs8 ~ | 8 a4 d8 ~ 4 r8 e ||

    fs8 g a b ~ 8 cs d ef ~ | 8 bf g ef ~ 4. f8 ~ ||
    f4. g8 ~ 2 ~ 4 ~ \tuplet 3/2 { g4 gs'8 ~ } ||

    gs8 ds4 gs8 e b e gs ~ | 8 ds4 gs8 e b e gs, ~ | 
    gs8 ds4 gs8  e b e gs ~ | 8 ds4 gs8  e b e gs' ~ |
    gs8 ds4 gs8 e b e gs ~ | 8 ds4 gs8  e b e4 ~ |
    e1 ~ | 1 ~ | 2 r ||

    c,8 f4 bf8 ~ 8 ef,4. | e8 a4 d8 ~ 8 g,4. | 
    c,4. f8 ~ 2 | bf4. ef8 ~ 2 ||

    <>\xp s1*4 \break
    <>\xp s1*4 \break 
    <>\xp s1*4
}

bassline = \relative c, { 
    f4 8 bf ~ 8 e,4. | a8 4 d8 ~ 4 g, | 
    c4. f,8 ~ 2 ~ | 4. b8 c b f4 || c'1 ||

    r8 b4. c4 r8 c | g4 c g'8 df4. | 
    g,4 c g'8 df4. | g,4 c g' df | 
    f,4 c' f bf, | g c g'8 df4. | 
    e,4 bf' ef8 bf4. | e,4 bf' ef8 bf4. | 
    e,4 gs a d | b e, a2 | 
    r4 c cs fs, | 2 b ||

    a4 d g c, | b c f2 || ef4 af, g1 ||

    fs4 cs' b e, | fs b e, a | 
    fs4 cs' b e, | fs b e, a | 
    fs4 cs' b e, | fs b e, a ~ | 1 | 
    fs4 gs a as | b c cs2 ||

    f,4. bf8 ~ 8 e,4. | a8 4 d8 ~ 8 g,4 d'8 | 
    c4. f,8 4. 8 | c'4. 8 2 ||
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
            \new StaffGroup \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 2))
            } <<
                \new ChordNames { 
                    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                    \chordsForm
                }
                \new Staff = "lead" \with {
                    \consists Merge_rests_engraver
                } \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \numericTimeSignature
                    \accidentalStyle "modern"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        {
                            s1*4 
                            \melody
                        }
                    >>
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \numericTimeSignature
                    \accidentalStyle "modern"
                    \clef bass
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        { 
                            \melodyIntro
                            \bassline
                        }
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
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
            \new StaffGroup \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 2))
            } <<
                \new ChordNames { 
                    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                    \chordsForm
                }
                \new Staff = "lead" \with {
                    \consists Merge_rests_engraver
                } \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \numericTimeSignature
                    \accidentalStyle "modern"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        {
                            s1*4 
                            \melody
                        }
                    >>
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \numericTimeSignature
                    \accidentalStyle "modern"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \transpose c, c { 
                            \melodyIntro
                            \bassline
                        }
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
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
            \new StaffGroup \with {
                \override StaffGrouper.staff-staff-spacing =
                    #'((padding . 2))
            } <<
                \new ChordNames { 
                    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                    \chordsForm
                }
                \new Staff = "lead" \with {
                    \consists Merge_rests_engraver
                } \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \numericTimeSignature
                    \accidentalStyle "modern"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        {
                            s1*4 
                            \melodyForEb
                        }
                    >>
                }
                \new Staff = "harmony" \transpose c c {
                    % \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \numericTimeSignature
                    \accidentalStyle "modern"
                    <<
                        \structure
                        \rehearsalMarkTweaksForC
                        \transpose c, c { 
                            \melodyIntro
                            \bassline
                        }
                    >>
                }
            >>
        >>
        \layout { 
            % short-indent = 0.25\cm
            % indent = 0.25\cm
        }
    }
}

