\version "2.24.0"

titleLeft = "Pat"
titleRight = "terns"
titleFull = "Patterns"
composerName = "O. Nelson"
arranger = ""
copyright = ""

%{

killPreview ; rm patterns*pdf ;  lilypond ly/songs/jazz/patterns.ly  ; for file in patterns*.pdf ; do op $file ; done  

killPreview
rm patterns*pdf
lilypond ly/songs/jazz/patterns.ly
mv patterns*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/patterns*.pdf ; do op $file ; done  

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

    \key ef \major
    \tempo 2.=72
    \time 3/4

    \startSection "A"

    \repeat volta 2 { 

        \startRepeat
        s2.*4 
        s2.*4 

        \startSection ""

        s2.*4 
        s2.*4 \break

        \startSection "B"

        s2.*4 \break
        s2.*4 \break
        s2.*4 

        \startSection "C"

        s2.*4 \break
    }
    \alternative { 
        { s2.*4 \endRepeat \break }
        { s2. }
    }
    s2.*3 \break
    s2.*4 \break
    \bar "||" 
    \pageBreak
}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key ef \major 
    \time 3/4
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \startRepeat
    s2.*4
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -7 . -1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -5 )
    % "A"
    s2.*16 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "B"
    s2.*12

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "C"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -7 . -1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -5 )
    % "A"
    s2.*16 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "B"
    s2.*12

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "C"
}

rehearsalMarkTweaksForEb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -7 . -1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -5 )
    % "A"
    s2.*16 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "B"
    s2.*12

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "C"
}


chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    ef2.:maj7 | s | s | s | 
    gf2.:maj7 | s | s | s | 
    df2.:maj7 | s | s | s | 
    e2.:maj7 | s | s | s || 

    ef2.:maj7 | gf:maj7 | f:maj7 | af:maj7 |  
    g2.:maj7 | bf:maj7 | a:maj7 | c:maj7 |  
    d2.:maj7 | b:maj7 | af:maj7 | f:maj7 ||  

    ef2.:maj7 | s | c:maj7 | s | 
        b2.:maj7 | f:maj7 | ef:maj7 | a:maj7 || 
        bf2.:maj7 | gf:maj7 | d:maj7 | bf:maj7 || 
        af2.:maj7 | e:maj7 | c:maj7 | af:maj7 || 
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t


    ef2.:maj7 | s | s | s | 
    gf2.:maj7 | s | s | s | 
    df2.:maj7 | s | s | s | 
    ff2.:maj7 | s | s | s || 

    ef2.:maj7 | gf:maj7 | f:maj7 | af:maj7 |  
    g2.:maj7 | bf:maj7 | bff:maj7 | c:maj7 |  
    d2.:maj7 | cf:maj7 | af:maj7 | f:maj7 ||  

    ef2.:maj7 | s | c:maj7 | s | 
    cf2.:maj7 | f:maj7 | ef:maj7 | bff:maj7 || 

    bf2.:maj7 | gf:maj7 | d:maj7 | bf:maj7 || 
    af2.:maj7 | ff:maj7 | c:maj7 | af:maj7 || 
}


chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    % \set noChordSymbol = ##t
    bf2.:7 | s | s | s | 
}

bassCoda = \relative c { 
    bf4. f'8 d' [ f, ] | d'4 4 f, | bf,4. f'8 d' [ f, ] | d'4 4 f, 
}


melodyA = \relative c'' { 
    d8 ef d bf g ef | d4. ef8 g [ bf ] | d ef d bf g ef | d4. ef8 g [ bf ] |
    f'8 gf f df bf gf | f4. gf8 bf [ df ] | f gf f df  bf gf | f4. gf8 bf [ df ] |
    c8 df c af f df | c4. df8 f [ af ] | c df c af f df | c4. df8 f [ af ] |
    ds8 e ds b gs e | ds4. e8 gs [ b ] | ds e ds b gs e | ds4. e8 gs [ b ] ||
}
melodyAForEb = \relative c'' { 
    d8 ef d bf g ef | d4. ef8 g [ bf ] | d ef d bf g ef | d4. ef8 g [ bf ] |
    f'8 gf f df bf gf | f4. gf8 bf [ df ] | f gf f df  bf gf | f4. gf8 bf [ df ] |
    c8 df c af f df | c4. df8 f [ af ] | c df c af f df | c4. df8 f [ af ] |
    ef'8 ff ef cf af ff | ef4. ff8 af [ cf ] | ef ff ef cf af ff | ef4. ff8 af [ cf ] ||
}

melodyB = \relative c'' { 
    d8 ef d bf g ef | f' gf f df bf gf | e'8 f e c a f | g' af g ef c af | 
    fs'8 g fs d b4 | a'8 bf a f d4 | gs8 a gs e cs4 | b'8 c b g e4 | 
    cs'8 d cs a fs4 | as8 b as fs ds b | g' af g ef c af | e'8 f e c a4 ||
}
melodyBForEb = \relative c'' { 
    d8 ef d bf g ef | f' gf f df bf gf | e'8 f e c a f | g af g ef c af | 
    fs'8 g fs d b4 | a'8 bf a f d4 | af'8 bff af ff df4 | b'8 c b g e4 | 
    cs'8 d cs a fs4 | bf8 cf bf gf ef cf | g' af g ef c af | e'8 f e c a4 ||
}

melodyC = \relative c'' { 
    d8 ef d bf g ef | d4. ef8 g [ bf ] | b c b g e c | b4. c8 e [ g ] |
    fs8 ds as'2 | c8 a e'2 | bf8 g d'2 | e8 cs gs'2 ||
}
melodyCForEb = \relative c'' { 
    d8 ef d bf g ef | d4. ef8 g [ bf ] | b c b g e c | b4. c8 e [ g ] |
    gf8 ef bf'2 | c8 a e'2 | bf8 g d'2 | ff,8 df af'2 ||
}

melodyD = \relative c''' { 
    a8 f d4 ~ 8 e | f df bf4 ~ 8 c | cs a fs4 ~ 8 g | a f d2 | 
    g'8 ef c4 ~ 8 d | ds8 b gs4 ~ 8 a | b g e4 ~ 8 f | g ef af4 ~ 8 8 || 
}
melodyDForEb = \relative c'' { 
    a8 f d4 ~ 8 e | f df bf4 ~ 8 c | cs a fs4 ~ 8 g | a f d2 | 
    g''8 ef c4 ~ 8 d | ef8 cf af4 ~ 8 a | b g e4 ~ 8 f | g ef af4 ~ 8 8 || 
}


melody = {
    \melodyA 
    \melodyB 
    \melodyC 
    \melodyD 
}
melodyForEb = {
    \melodyAForEb
    \melodyBForEb 
    \melodyCForEb
    \melodyDForEb
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
        \transpose ef ef <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 2
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                \clef treble
                <<
                    \override Stem.length-fraction = #(magstep 1.6)
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
    \score {
        \transpose ef ef <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 2
                \chordsCoda
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \clef bass 
                    \structureCoda
                    \override Stem.length-fraction = #(magstep 1.6)
                    \bassCoda
                >>
            }
        >>
        \layout { 
            short-indent = 1.25\cm
            indent = 1.25\cm
            ragged-right = ##f
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
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 2
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                \clef treble
                <<
                    \override Stem.length-fraction = #(magstep 1.6)
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
    \score {
        \transpose bf, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 2
                \chordsCoda
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structureCoda
                    \override Stem.length-fraction = #(magstep 1.6)
                    \transpose c, c \bassCoda
                >>
            }
        >>
        \layout { 
            short-indent = 1.25\cm
            indent = 1.25\cm
            ragged-right = ##f
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
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 2
                \chordsFormForFlats
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                \clef treble
                <<
                    \override Stem.length-fraction = #(magstep 1.6)
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melodyForEb
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 2
                \chordsCoda
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structureCoda
                    \override Stem.length-fraction = #(magstep 1.6)
                    \transpose c, c \bassCoda
                >>
            }
        >>
        \layout { 
            short-indent = 1.25\cm
            indent = 1.25\cm
            ragged-right = ##f
        }
    }
}

