\version "2.19.81"

titleLeft = "R."
titleRight = "J."
title = "R. J."
composerName = "R. Carter"

%{

killPreview ; rm rj*pdf ;  lilypond ly/songs/jazz/rj.ly  ; for file in rj*.pdf ; do op $file ; done  

killPreview
rm rj*pdf
lilypond ly/songs/jazz/rj.ly
mv rj*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/rj*.pdf ; do op $file ; done  

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

    \key f \major 
    \tempo 4=240
    \partial 4*2 s2 
    \startSection "Head"
    s1*5 \break
    s1*4 \break
    s1*6 \break
    s1*5 \break

    \startSectionNoBarline "Solos"
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*6 \break
    s1*5
    \bar ":|]"
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s2 
    bf1:7.5- | s | f | bf | 
    ef1:7 | e:m7.5- | a:7 | g:7 | 
    c1:7 | f | b:m7.5- | bf:m7 | 
    b1:m11 | g:maj7.11+ | bf2:7.5- s | bf1:7.5- | s | s | 
    ef1 | ef:maj7.11+ ||

    bf1:7.5- | s | f | bf | 
    ef1:7 | e:m7.5- | a:7 | g:7 | 
    c1:7 | f | b:m7.5- | bf:m7 | 
    b1:m11 | g:maj7.11+ | bf:7.5- | s | s | s | 
    ef1 |||
}

melodyA = \relative c' { 
    \tuplet 3/2 4 { c8 d e  d e f } ||
    af4 c, ~ 4. e16 f | d2. cs16 d e f | 
    e'4. c8 ~ 4 a | bf4. a8 bf4 \tuplet 3/2 { d,8 f bf } | g1 |
}

melodyB = \relative c' { 
    f16 g a bf  e,4 ~ 4.  fs16 gs | d2. bf'4 | 
    b4. d8 ~ 4 f | \tuplet 3/2 { e,8 g bf } c,4 ~ 8 b c4 | 
    f1 | bf, | 
    df1 | e | 
    fs | r2 
}

melodySolos = \relative c' {
    <>\xp 
    \comp #16
    <>\xp 
    \comp #16
    <>\xp 
    \comp #28
    <>\xp 
    \comp #16
}

melody = \relative c'' { 
    \melodyA
    \melodyB
    \melodyA
    \melodySolos
}

melodyForEb = \relative c'' { 
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
        \transpose c c \transpose bf, c <<
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
        \transpose c c \transpose ef c <<
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
