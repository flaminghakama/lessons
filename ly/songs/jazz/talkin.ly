\version "2.19.81"

titleLeft = "Talkin"
titleRight = ""
title = "Talkin"
composerName = "A.C. Lewis"

%{

killPreview ; rm talkin-*.pdf ; lilypond ly/songs/jazz/talkin.ly ; for file in talkin-*pdf ; do op $file ; done

killPreview
rm talkin*pdf
lilypond ly/songs/jazz/talkin.ly 
mv talkin-*pdf pdf/songs/jazz
for file in pdf/songs/jazz/talkin-*pdf ; do op $file ; done  

git add . ; git commit -m"renotating" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-voltas.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"

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
    \key e \minor 
    \time 4/4
    \tempo 4=104 
    
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \startSection "Drum Solo"
    s1*16
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 2 )
    \startSection "Add Bass"
    s1*16
    \break
    \override Score.RehearsalMark #'extra-offset = #'( -5 . -1 )
    \startSectionWithLabel "A" "2X Sax, 4X Sing"
    \bar "[|:"
    \repeat volta 2 {
        s1*4 \break
        s1*4 \break
    }
    \startSectionWithLabel "B" "4X Sing"
    \bar ":|][|:"
    \voltaCustom 
        { s1*4 } 
        "1, 2, 3" { s1*2 \bar ":|]" } 
        "4" { s1*2 \break }

    \startSectionWithLabel "A" "2X Solo"
    \bar ":|][|:"
    \repeat volta 2 {
        s1*8 \break
    }

    \startSectionWithLabel "B" "4X Sing & Sax, cued by Sax"
    \bar ":|][|:"
    \voltaCustom 
        { s1*4 } 
        "1, 2, 3" { s1*2 \bar ":|]" } 
        "4" { s1*2 }

    \startSectionWithLabel "A" "2X Sing"
    \bar ":|][|:"
    \repeat volta 2 {
        s1*8 \break
    }

    \startSection "Coda"
    \bar ":|]"
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 

    % "Drum Solo"
    s1*16
    
    % "Add Bass"
    s1*16

    % A
    e1:m7 | s | fs:7/e | s | 
    b1:7.13- | s | ef:7.9+.11+ | s2 f:9 ||
    
    % B
    c1:13 | s | b:7 | s | s | s || f:9 | c:m7.5-/f ||

    % A
    e1:m7 | s | fs:7/e | s | 
    b1:7.13- | s | ef:7.9+.11+ | s2 f:9 ||
        
    % B
    c1:13 | s | b:7 | s | s | s || f:9 | c:m7.5-/f ||

    % A
    e1:m7 | s | fs:7/e | s | 
    b1:7.13- | s | ef:7.9+.11+ | s2 f:9 ||

    % "Coda"
    e1:m | s | s | s ||
}
chordsForFlats = \chordmode { 
    \chordsForm
}

melodyA = \relative c' {
    r4 e \glissando e'16-> 16-. r8 r4 | b16 g fs e ~ 2. | 
    r4 r8 fs' \tuplet 3/2 { cs4 as fs' } | e2 r |

    ds16 b8 a16 ~ 16 ds8 b16 ~ 16 a8 fs'16 ~ 16 b,8 a16 ~ | 
        a16 ds8 b16 ~ 16 a8 e'16 g,4 fs | 
    R1 | r2 d'4 ds
}

melodyB = \relative c''' {
    a4. g8 ~ 2 | a4. g8 \tuplet 3/2 { g4 fs e } | 
    \tuplet 3/2 { ds4 fs2 ~ } 2 ~ | 1 |
    R1*2 || R1*2 || 
}

melody = {
    <>\xmf 
    R1*16 | R1*16 | 
    \melodyA
    \melodyB
    <>\xmf 
    \comp #32 
    <>\xmf 
    \comp #32 
    <>\xmf 
    \comp #32 
    <>\xmf 
    \comp #16
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}
