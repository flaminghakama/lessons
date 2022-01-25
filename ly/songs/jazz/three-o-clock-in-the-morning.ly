\version "2.19.81"

titleLeft = "Three O'Clock"
titleRight = "In The Morning"
title = "Three O'Clock In The Morning"
composerName = "T. Morse & J. Robledo"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview ; rm three-o-clock-in-the-morning*pdf ; lilypond ly/songs/jazz/three-o-clock-in-the-morning.ly ; for file in three-o-clock-in-the-morning*pdf ; do open -a Preview $file ; done

killPreview
rm three-o-clock-in-the-morning*pdf
lilypond ly/songs/jazz/three-o-clock-in-the-morning.ly
mv three-o-clock-in-the-morning*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/three-o-clock-in-the-morning*pdf ; do open -a Preview $file ; done

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

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
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key f \major
    \time 4/4
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \break

    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \pageBreak
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \break

}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
}

melodyInEb = \relative c {
    d4-. r r cs8 d ~ | 4 r fs4-. a-. | e'2 ~ 8 r ef d ~ | 4 r r2 | 
    cs8 d4 r8 r4 b8 a ~ | 2 r4 c,8 cs ~ | 2 r | r r4 a'8 e ~ | 
    e4. r8 r4 ds8 e ~ | 4 r g4-. b-. | fs'8 4. ~ 8 r f e ~ | 8 r r4 r2 | 
    r4 r8 d cs4-. e-. | d8 4. ~ 4 b8 a ~ | 8 4. ~ 4 a8 b | d c4. a8 g4. ||

    d4-. r r cs8 d ~ | 4. r8 fs4-. a-. | e'2 ~ 8 r ef d ~ | 4 r r2 | 
    r4 r8 d cs4-. d-. | e-. d-. as4. b8 ~ | 4. fs16 a g8 b,4. | R1 |  
    b'4. as8 b4-. cs8 d ~ | 2. cs8 b | d8 4. ~ 4 a8 fs ~ | 4. r8 \tuplet 3/2 { r4 g-. a-. } |
    fs'8 4. ( ~ 4. e16 d | cs2. ) r4 | fs2 d | e a, ||


    d8 8 8 8  8 8 r4 | d4-. r8 d  cs b r cs | 
    d8 a r a8 2 | r r4 r8 a |
    
    d8 e fs g  a fs g a16 g | fs8 d a g  gs fs' e d | 
    \tuplet 3/2 { cs8 d cs } b a  g b, d fs | r e4. r4 \tuplet 3/2 { r8 e fs } |
    
    \tuplet 3/2 { g8 a fs } \tuplet 3/2 { g8 e e } r2 | r8 a r b  cs d \tuplet 3/2 { b cs a } | 
    r8 a r4 r e'8 fs | g b, d fs  e d cs b | 

    d4 b8 g fs e4. | d'4 bf8 a g a bf d |
    cs8 a b cs a fs4. | r4 

}
melody = \transpose c ef \melodyInEb

\header {
    title = \title
    composer = \composerName
}

% \book {
%   \bookOutputSuffix "for-C"
%     \header {
%         poet = "    Concert Pitch"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             \new ChordNames \transpose c c  { 
%                 \include "ly/ily/chord-names-properties.ily" 
%                 \chordsSong 
%             }
%             \new Staff \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 <<
%                     \structure
%                     \melody
%                     \noPageBreak
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "for-Bb"
%     \header {
%         poet = "    Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             \new ChordNames \transpose bf c  { 
%                 \include "ly/ily/chord-names-properties.ily" 
%                 \chordsSong  
%             }
%             \new Staff \transpose bf, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 <<
%                     \structure
%                     \melody
%                 >>
%             }
%         >>
%     }
% }

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

