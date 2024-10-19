\version "2.24.0"

titleLeft = "Isfahan"
titleRight = ""
titleFull = "Isfahan"
composerName = "D. Ellington & B. Strayhorn"
arranger = ""
copyright = ""

%{

killPreview ; rm isfahan*pdf ; lilypond ly/songs/jazz/isfahan.ly ; for file in isfahan*pdf ; do op $file ; done 

killPreview
rm pdf/songs/jazz/isfahan*
lilypond ly/songs/jazz/isfahan.ly 
mv isfahan*pdf pdf/songs/jazz
for file in pdf/songs/jazz/isfahan*pdf ; do op $file ; done 

git add . ; git commit -m"enharmonics" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.padding = #1

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

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

	\key df \major
	\time 4/4
	\partial 2 s2

    \startSection "A"
	\bar "||"		
    s1*4 \break 
    s1*4 \break
    \startSection ""
    s1*4 \break 
    s1*4 \break
    \startSection "B"
    s1*4 \break 
    s1*4 \break
    \startSection ""
    s1*4 \break 
    s1*3 s4.. <>\toCoda s16 s2  
    \bar "|." 
    \noPageBreak
}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \key df \major
    \atCoda
    \partial 2  
    s2 |
    s1*4
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    s2

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -3 )
    % "A"
    s1*16

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -3 )
    % "B"
}
rehearsalMarkTweaksForBb = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    s2

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -3 )
    % "A"
    s1*16

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -3 )
    % "B"
}
rehearsalMarkTweaksForEb = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    s2

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -3 )
    % "A"
    s1*16

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . -3 )
    % "B"
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s2
    df1:maj7 | bf2:maj7 bf:aug7 | ef1:9 | s | 
    a1:maj7 | df2:m6/af af:13.9- | df1:maj9 | s ||

    g2:m7.5- c:7.9- | f1:m6 | a2:m7.5- d:7.9- | g1:m6 | 
    g1:m9.5- | c:7.9- | f2:maj7 e:maj7 | ef:maj7 d:maj7 ||

    df1:maj7 | bf2:maj7 bf:aug7 | ef1:9 | s | 
    a1:maj7 | df2:m6/af af:13.9- | df1:maj9 | s ||

    gf1:maj7 | c:aug7.9- | f:7.9+.11+ | bf:7 |
    e1:13 | af:13.9- af:aug9 | ef1:maj13 | s ||
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    df2:maj7 | ef1:13 | af2:13.9- af:aug9 | df1:maj13 | s ||
}

melodyInEb = \relative c''' {
    r8 a8 \tuplet 3/2 { f8 d bf } || a2. bf8 fs' ~ | 2 g | a8 d,2.. | r2 
    r8 f8 \tuplet 3/2 { d8 bf gf } | f2. gf4 | df'2 d | c1 | r4
    bf4 d f | g2. \tuplet 3/2 { r8 g gf } | f1 | 
    a4 b8 bf a fs4. | g32 a g fs g4.  r2 | 
    bf4 c bf8 g4. | a4. bf8 c2 | a1 ~ | 2

    r8 a8 \tuplet 3/2 { f8 d bf } ||  a2. bf8 fs' ~ | 2 g | a8 d,2.. | r2 
    r8 f8 \tuplet 3/2 { d8 bf gf } | f2. gf8 df' ~ | 2 \tuplet 3/2 { r4 d4 ds8. e16 ~ } | e1 | r2
    r4 e | f gf f gf8-. [ r16 af32 a ] | c2 bf4.. a16 | af2 f4. d8 | r2 
    r8 a'8 \tuplet 3/2 { f8 d bf } | a2. bf8 fs' ~ | 2 g | g32 a g fs g4. ~ 4.  f16 d | bf4 r r2 || 
}
melodyCodaInEb = \relative c''' {
    r8 a8 \tuplet 3/2 { f8 d bf } | a2. bf8 fs' ~ | 2 g | 1 ~ | 1 || 
}
bari = \relative c {
    r2 || r4 r8 \tuplet 3/2 { bf16 af f } af2 | r4 c32 cf bf bff af8 ~ 2 | 
    r8 cf16 bf  cf8 c ~  8 cf16 bf  cf8 bf ~ | 8 cf4 c8 ~ 4 r | 

    r4  r8 cf16 bff cf2 | r8 bf16 a  bf8 a ~ 2 |
    bf1 | R1 ||

    g2 bf | R1 | a2 d, | g2.. r8 | 
    bf1 | df | <<
        { r8 a'4. af2 | g gf } \\
        << 
            { c,2 b | bf a }
            { f2 e | ef d }
        >>
    >> |

    r4 r8 \tuplet 3/2 { bf'16 af f } af2 | r4 c32 cf bf bff af8 ~ 2 | 
    r8 cf16 bf  cf8 c ~  8 cf16 bf  cf8 bf ~ | 8 cf4 c8 ~ 4 r | 

    r4  r8 cf16 bff cf2 | r8 bf16 a  bf8 a ~ 2
    ef8 g b df ef f4 ef8 | df4\startTrillSpan cf8\stopTrillSpan df ~ 2 |

    df,1 | df | f2.. bf8 | R1 | 
    f'1 ~ | 2 e | ef2.. df8 | 
}


\header {
    title = \title
    composer = \composerName
}

\book {
    \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \autoPageBreaksOff
                    \structure
                    \rehearsalMarkTweaksForC
                    \transpose c ef, \melodyInEb
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
                <<
                    \autoPageBreaksOff
                    \structureCoda
                    \transpose c ef, \melodyCodaInEb
                >>
            }
        >>
        \layout { 
            indent = 2.15\cm
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
    \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \autoPageBreaksOff
                    \structure
                    \rehearsalMarkTweaksForEb
                    \transpose c ef, \melodyInEb
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            piece = " "
        }
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \noPageBreak
                    \autoPageBreaksOff
                    \structureCoda
                    \transpose c ef, \melodyCodaInEb
                >>
            }
        >>
        \layout { 
            indent = 2.15\cm
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
    \bookOutputSuffix "bari-in-Eb"
    \header {
        poet = "Eb Bari Sax"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef,, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \autoPageBreaksOff
                    \structure
                    \rehearsalMarkTweaksForEb
                    \bari
                >>
            }
        >>
    }

    \score {
        \header {
            piece = " "
        }
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \autoPageBreaksOff
                    \structureCoda
                    \transpose c ef, \melodyCodaInEb
                >>
            }
        >>
        \layout { 
            indent = 2.15\cm
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
    \bookOutputSuffix "score"
    \header {
        poet = "Transposed Score"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \set Staff.instrumentName = "Eb Alto Sax"
                \set Staff.shortInstrumentName = #"A.S."                
                <<
                    \autoPageBreaksOff
                    \structure
                    \transpose c ef, \melodyInEb
                >>
            }
            \new Staff \transpose ef,, c { 
                \include "ly/ily/staff-properties.ily"
                \set Staff.instrumentName = "Eb Bari Sax"
                \set Staff.shortInstrumentName = #"B.S."                
                <<
                    \structure
                    \bari
                >>
            }
        >>
    }


    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \set Staff.instrumentName = "Eb Alto Sax"
                \set Staff.shortInstrumentName = #"A.S."                
                <<
                    \autoPageBreaksOff
                    \structureCoda
                    \transpose c ef, \melodyCodaInEb
                >>
            }
        >>
    }
}
