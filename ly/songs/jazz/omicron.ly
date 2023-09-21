\version "2.19.81"

titleLeft = "Omi"
titleRight = "cron"
title = "Omicron"
composerName = "D. Byrd"

%{

killPreview ; rm omicron*pdf ;  lilypond ly/songs/jazz/omicron.ly  ; for file in omicron*.pdf ; do op $file ; done  

killPreview
rm omicron*pdf
lilypond ly/songs/jazz/omicron.ly
mv omicron*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/omicron*.pdf ; do op $file ; done  

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

    \key df \major 
    \tempo 4=212

    % Intro
    %
    %
    %


    % Head

    s1

    \startSectionNoBarline "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*2 \break
        s1*3 \break
        s1*2  }
    \alternative { 
        \relative c' { 
            s1 
            \bar ":|]"
        }
        \relative c' { 
            s1 \break
        }
    }

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "B"
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
    \startSection "A"
    s1*4 \break
    s1*4
    \bar "|."
}

melodyAPickup = \relative c' { 
    r8 c ef16 f32 ef c8  df8 ef f af  ||
}
melodyACommon = \relative c'' { 
    \melodyAPickup
    df8 bf r4 r c8 bf ~ | 4  af8 c,  df e g bf | 
    
    cf8 df bf cf  af f r4 | d16 ef32 d bf8  ef bf   e16 f32 e bf8  f' ef | 
    af8 f gf af  a b cs a  | af? gf b a  r f df [ <ef c> ~ ] |
    <ef c>2. r4 | 
}
melodyACommonForFlats = \relative c'' { 
    \melodyAPickup
    df8 bf r4 r c8 bf ~ | 4  af8 c,  df e g bf | 
    
    cf8 df bf cf  af f r4 | d16 ef32 d bf8  ef bf   e16 f32 e bf8  f' ef | 
    af8 f gf af  bff cf df bff  | af gf cf bff  r f df [ <ef c> ~ ] |
    <ef c>2. r4 | 
}

melodyBCommon = \relative c'' { 
    R1 | 
    <>\xmp
    \comp #16 
    <>\xmp
    \comp #12
}

melodyB = \relative c'' { 
    \melodyBCommon
}


melodyCoda = \relative c' {
}
melodyCodaForEb = \relative c' {
}

melody = \relative c'' { 
    \accidentalStyle default
    %  Intro

    %  Head
    \melodyACommon 
    \melodyAPickup

    \melodyB
    \melodyACommon
    \comp #4
}

melodyForFlats = \relative c'' { 
    \accidentalStyle default
    %  Intro

    %  Head
    \melodyACommonForFlats 
    \melodyAPickup

    \melodyB
    \melodyACommonForFlats
    \comp #4
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    %  Intro

    %  Head
    s1 ||
    g1:m7.5- | c:7.9- |  
    f1:m7.5- | bf:7.9- |  
    ef1:m7.5- | af:7.9- |  
    df1:maj9 | s || s ||

    af1:m7 | df:7 | af2:m7 g:7 | gf1:maj7 |   
    bf1:m7 | ef:7 | bf2:m7 a:7 | af1:7 |   

    g1:m7.5- | c:7.9- |  
    f1:m7.5- | bf:7.9- |  
    ef1:m7.5- | af:7.9- |  
    df1:maj9 | s ||
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
                    \melodyForFlats
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
                    \melodyForFlats
                >>
                \noPageBreak
            }
        >>
    }
}
