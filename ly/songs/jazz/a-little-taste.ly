\version "2.19.81"

titleLeft = "A Little"
titleRight = "Taste"
title = "A Little Taste"
composerName = "C. Adderly"

%{

killPreview ; rm a-little-taste*pdf ;  lilypond ly/songs/jazz/a-little-taste.ly  ; for file in a-little-taste*.pdf ; do op $file ; done  

killPreview
rm a-little-taste*pdf
lilypond ly/songs/jazz/a-little-taste.ly
mv a-little-taste*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/a-little-taste*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

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

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \key ef \major 
    \tempo 4=184
    \partial 4*1 s4 
    \startSectionNoBarline "A"
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \override Score.RehearsalMark #'extra-offset = #'( 0 . -2 )
    s1*3 | \mark "Last X Only" s1 \break
    \bar ":|]"

    \override Score.RehearsalMark #'extra-offset = #'( -8 . -2 )
    \startSectionNoBarline "Coda"
    s1*4 \break
    s1*3
    \bar "|."
}

melodyA = \relative c' { 
    ef4-. ||
    f2.. g8 | r4 r8 d r g r f | 
    ef4-. 4-. 8 f ef df | r2 r4 bf'-. | 

    c2.. d8 | r4 r8 a r d r c | 
    bf4 4 8 c bf df ~ | 2. c4-. ||
}

melodyBCommon = \relative c'' { 
    af4. 8 r2 | r8 g af [ c ~ ]  4 bf | 
    g1 | r8 fs g [ bf ~ ] 4 af4-. |
}

melodyB = \relative c'' { 
    \melodyBCommon
    \transpose g c \relative c'' { 
        r8 d \tuplet 3/2 { ef8 g bf } b8 af r g ~ | g8. d16 bf16 g bf c d8 f r4 | 
        r8 fs a [ af ] g ef c f, | r2 r4
    }
}

melodyC = \relative c' { 
    \melodyBCommon
    r8 f g [ af ]  r bf r df ~ | 4 \tuplet 3/2 { cf8 gf ef } df8 cf4. | 
    bf4-. r r2 | r2 r4 
}

melodyCoda = \relative c' {
    ef4 ||
    f2.. fs8 | R1 | 
    \transpose g c \relative c'' { 
        r4 bf8 c d ef f g ~ | 4 f cs8 d r4 | 
    }
    <<
        \relative c'' { r8 g r ef r c r f | r d r bf r g } \\
        \relative c' { r8 ef r c r af r d | r bf r g r ef }
    >>  \relative c'' {  
            r af ~ | 
        af4 g8 ef af g ef ef ||
    }
}
melodyCodaForEb = \relative c' {
    ef4 ||
    f2.. fs8 | R1 | 
    \transpose g c \relative c'' { 
        r4 bf8 c d ef f g ~ | 4 f cs8 d r4 | 
    }
    <<
        \relative c''' { r8 g r ef r c r f | r d r bf r g } \\
        \relative c'' { r8 ef r c r af r d | r bf r g r ef }
    >>  \relative c'' {  
            r af ~ | 
        af4 g8 ef af g ef ef ||
    }
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyB
    \melodyA
    \melodyC
    \melodyCoda
}

melodyForEb = \relative c'' { 
    \accidentalStyle default
    \melodyA
    \melodyB
    \melodyA
    \melodyC
    \melodyCodaForEb
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4
    d1:m7.5- | g:7.9- | c2:m7 f:7 | bf:m7 ef:7 | 
    af1:maj7 | a2:m7.5- d:7.9- | g1:m7 | c:7.9- ||

    f1:m7 | bf:7 | ef:maj7 | s | 
    d2:m7.5- g:7.9- | c:m7 f:7 | f1:m7 | bf:7 ||

    d1:m7.5- | g:7.9- | c2:m7 f:7 | bf:m7 ef:7 | 
    af1:maj7 | a2:m7.5- d:7.9- | g1:m7 | c:7.9- ||

    f1:m7 | bf:7 | ef:maj7 | g2:m7.5- c:7.9- | 
    f1:m7 | bf:7 | ef:maj7 | s2. ef4:7 |

    af1 | a:dim7 | g:m7 | c:7.9- | 
    f1:m7 | bf:7 | f2:m7 bf4.:7 ef8 ||
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
        \transpose c g <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
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
        \transpose c g \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
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
        \transpose c g \transpose ef c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForEb
                >>
                \noPageBreak
            }
        >>
    }
}
