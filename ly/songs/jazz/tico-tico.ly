\version "2.24.0"

titleLeft = "Tico"
titleRight = "Tico"
titleFull = "Tico Tico"
composerName = "Z. Abreu, A. Olivera & E. Drake"
arranger = ""
copyright = ""

%{

killPreview ; rm tico-tico*pdf ;  lilypond ly/songs/jazz/tico-tico.ly  ; for file in tico-tico*.pdf ; do op $file ; done  

killPreview
rm tico-tico*pdf
lilypond ly/songs/jazz/tico-tico.ly
mv tico-tico*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/tico-tico*.pdf ; do op $file ; done  

git add . ; git commit -m"changing accidental style" ; git push 
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
  system-system-spacing.padding = #2

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
    \tempo 2=116
    \time 4/4

    \startSection "Intro"
    s1*4 \break 

    \startSection "A"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 

    \pageBreak

    \startSection "C"
    \key a \major
    \repeat volta 2 { 
        \startRepeat
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*3
    }
    \alternative {
        { s1 \endRepeat}
        { s1 \bar "||" }
    }
}

structureOnePage = \relative c' { 

    \key a \minor
    \tempo 2=116
    \time 4/4

    \startSection "Intro"
    s1*4 \break 


    \startSection "A"
    \repeat volta 2 { 
        \startRepeat
        s1*6
    }
    \alternative {
        { s1*2 \endRepeat }
        { s1 \break }
    }
    s1 

    \startSection "B"
    \repeat volta 2 { 
        \startRepeat
        s1*4
    }
    \alternative {
        { s1*4 \endRepeat }
        { s1 }
    } s1*3

    \startSection "C"
    \key a \major
    \repeat volta 2 { 
        \startRepeat
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*3
    }
    \alternative {
        { s1 \endRepeat}
        { s1 \bar "||" }
    }
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "C"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 

    \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "B"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "B"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "C"
}

rehearsalMarkTweaksForEb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 

    \override Score.RehearsalMark.extra-offset = #'( -5 . -3 )
    % "A"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -5 . -3 )
    % "A"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -5 . -3 )
    % "B"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -5 . -3 )
    % "B"
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -5 . -3 )
    % "C"
}

rehearsalMarkTweaksOnePageForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 


    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
        s1*6
        s1*2
        s1
    s1 

    \override Score.RehearsalMark.extra-offset = #'( -4 . -2 )
    % "B"
    s1*4
    s1*4
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . -2 )
    % "C"
}

rehearsalMarkTweaksOnePageForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 


    \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
        s1*6
        s1*2
        s1
    s1 

    \override Score.RehearsalMark.extra-offset = #'( -5 . -3 )
    % "B"
    s1*4
    s1*4
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . -2 )
    % "C"
}

rehearsalMarkTweaksOnePageForEb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    % "Intro"
    s1*4 


    \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
        s1*6
        s1*2
        s1
    s1 

    \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "B"
    s1*4
    s1*4
    s1*4
    s1*4

    \override Score.RehearsalMark.extra-offset = #'( -4 . -4 )
    % "C"
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    f2 fs:dim7 | c a:m | d:m g:7 | c1 ||

    a1:m | e:7 | s | a:m |
    d1:m | a:m | b:7 | e:7 ||

    a1:m | e:7 | s | a:m |
    d1:m | a:m | e:7 | a:m ||

    c1 | d:m | g:7 | c:6 |
    c1 | g:7 | s | c |
    c1 | d:m | g:7 | c:6 |
    f2 fs:dim7 | c a:m | d:m g:7 | c1 ||

    a1 | s | s | b:m | 
    b1:m | s | s | a | 
    a1 | s | fs2:m fs:7| b1:m | 
    d2 ds:dim7 | a fs:7 | b:7 e:7 | a1 || a ||    

}

chordsFormOnePage = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    f2 fs:dim7 | c a:m | d:m g:7 | c1 ||

    a1:m | e:7 | s | a:m |
    d1:m | a:m | b:7 | e:7 ||  e:7 | a:m ||

    c1 | d:m | g:7 | c:6 |
    c1 | g:7 | s | c |
        f2 fs:dim7 | c a:m | d:m g:7 | c1 ||

    a1 | s | s | b:m | 
    b1:m | s | s | a | 
    a1 | s | fs2:m fs:7| b1:m | 
    d2 ds:dim7 | a fs:7 | b:7 e:7 | a1 || a ||    

}

melodyIntro = \relative c'' { 
    a8 gs a b  d c b c | e g, c e  g fs f e | d c b a  g f e d | c2 
}

melodyACommon = \relative c' { 
    r8 e ds [ e ] ||
    f8 e r a  r e ds [ e ] | f8 e r gs  r e ds [ e ]|
    f8 e d' b  gs e d df | c2  r8 a' af [ g ] |
    f8 a r d  r c a [ f ] | e a r c  r c b [ as ] | 
}

melodyAFirstEnding = \relative c'' { 
    b8 b, ds fs  a c b a | gs4 r  
}
melodyASecondEnding = \relative c'' { 
        b8 e, gs b  e d c b | a4 r 
}
melodyAEndings = \relative c'' { 
    b8 b, ds fs  a c b a | gs4 r r8 e ds [ e ] || 
        b'8 e, gs b  e d c b | a4 r 
}

melodyBCommon = \relative c'' { 
    r8 b a [ af ] ||
    g8 c, e g  c, e g gs | a4 f  r8 b a [ af ] |
    g8 c, e g  b, d f g | a4 e  r8 c' c [ 8 ] |

}
melodyBFirstEnding = \relative c'' { 
    c8 b b b ~ b a a a ~ | a f f f ~ 8 b b b | 
    b8 g g b  a f f a | g2  
}
melodyBSecondEnding = \relative c'' { 
    a8 gs a b  d c b c | e g, c e  g fs f e | 
    d c b a  g f e d | c2 
}
melodyB = \relative c'' { 
    r8 b a [ af ] ||
    g8 c, e g  c, e g gs | a4 f  r8 b a [ af ] |
    g8 c, e g  b, d f g | a4 e  r8 c' c [ 8 ] |

    c8 b b b ~ b a a a ~ | a f f f ~ 8 b b b | 
    b8 g g b  a f f a | g2  r8 b a [ af ] ||

        a8 gs a b  d c b c | e g, c e  g fs f e | 
    d c b a  g f e d | c2 
}

melodyC = \relative c'' { 
    r8 a c [ e ] ||
    a8 a, cs gs' ~ 8 a, cs fs | fs a, cs e ~ 8 a,, cs e | 
    fs8 a, cs e ~ 8 a, cs fs | fs b, d e ~ 8 b' d e |
    a8 d, fs gs ~ 8 b, d gs | fs b, d fs ~ 8 gs,, b d | 
    fs8 b, d e ~ 8 gs, b fs' | fs a, cs e ~ 8 a cs e | 

    a8 a, cs gs' ~ 8 a, cs fs | fs a, cs e ~ 8 a,, cs e |
    fs8 e d cs  fs e cs as | b as b cs d2 |
    fs8 es fs gs b a gs a | cs e, a cs  e ef d cs | 
    b8 a gs fs  e d cs b | a4 r r8 a' cs [ e ] ||  a,,4 r r2 ||
}

melodyCForEb = \relative c' { 
    r8 a c [ e ] ||
    a8 a, cs gs' ~ 8 a, cs fs | fs a, cs e ~ 8 a, cs e | 
    fs8 a, cs e ~ 8 a, cs fs | fs b, d e ~ 8 b d e |
    a8 d, fs gs ~ 8 b, d gs | fs b, d fs ~ 8 gs, b d | 
    fs8 b, d e ~ 8 gs, b fs' | fs a, cs e ~ 8 a, cs e | 

    a8 a, cs gs' ~ 8 a, cs fs | fs a, cs e ~ 8 a, cs e |
    fs8 e d cs  fs e cs as | b as b cs d2 |
    fs8 es fs gs b a gs a | cs e, a cs  e ef d cs | 
    b8 a gs fs  e d cs b | a4 r r8 a' cs [ e ] ||  a,,4 r r2 ||
}


melody = {
    \customScripts #flaming-articulations
    \accidentalStyle modern-cautionary
    \melodyIntro
    \melodyACommon
    \melodyAFirstEnding
    \melodyACommon
    \melodyASecondEnding
    \melodyBCommon
    \melodyBFirstEnding
    \melodyBCommon
    \melodyBSecondEnding
    \melodyC
}

melodyForFlats = {
    \customScripts #flaming-articulations
    \accidentalStyle modern-cautionary
    \melodyIntro
    \melodyACommon
    \melodyAFirstEnding
    \melodyACommon
    \melodyASecondEnding
    \melodyBCommon
    \melodyBFirstEnding
    \melodyBCommon
    \melodyBSecondEnding
    \melodyCForEb
}

melodyOnePage = {
    \customScripts #flaming-articulations
    \accidentalStyle modern-cautionary
    \melodyIntro
    \melodyACommon
    \melodyAEndings
    \melodyB
    \melodyC
}

melodyOnePageForFlats = {
    \customScripts #flaming-articulations
    \accidentalStyle modern-cautionary
    \melodyIntro
    \melodyACommon
    \melodyAEndings
    \melodyB
    \melodyCForEb
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


\paper {

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #0
  system-system-spacing.padding = #0

}

\book {
  \bookOutputSuffix "single-page-for-C"
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
                \chordsFormOnePage
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureOnePage
                    \rehearsalMarkTweaksOnePageForC
                    \melodyOnePage
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "single-page-for-Bb"
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
                \chordsFormOnePage
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureOnePage
                    \rehearsalMarkTweaksOnePageForBb
                    \melodyOnePage
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "single-page-for-Eb"
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
                \chordsFormOnePage
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureOnePage
                    \rehearsalMarkTweaksOnePageForEb
                    \melodyOnePageForFlats
                >>
            }
        >>
    }
}
