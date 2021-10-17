\version "2.19.81"

titleLeft = "Three Out of"
titleRight = "Four Nights"
title = "Three Out of Four Nights"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm three-out-of-four-nights*pdf
lilypond ly/songs/alt/three-out-of-four-nights.ly
mv three-out-of-four-nights*.pdf  pdf/songs/alt
for file in pdf/songs/alt/three-out-of-four-nights*pdf ; do open -a Preview $file ; done
#mv three-out-of-four-nights*.midi midi

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

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

\include "ly/ily/layout.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \key e \major
    \tempo 4=144
    s1*4 \break
    s1*4 \break

    s1*4 \break
    s1*4 \break

    s1*4 \break
    s1*4 \break

    s1*4
    \bar "||"
}

formChords = \chordmode {
    b1:1.4.5.7 | s | s | s | 
    b1:1.4.5.7 | s | s | s | 

    b1:1.4.5.7 | s | s | s | 
    b1:1.4.5.7 | s | s | s | 

    b1:1.4.5.7 | s | s | s | 
    f1:m | c:aug/e | f:m/ef | a:7 | 

    b1:1.4.5.7 | s | s | s | 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \formChords
}

head = \relative c'' { 
    r4 \tuplet 3/2 { d8 cs b } a b cs e | d2.. b8 | 
    \tuplet 3/2 { cs4 4 8 b } \tuplet 3/2 { cs4 4 8 b } | g1 ~ |
    g1 ~ | 1 ~ | 1 ~ | 1 | 

    r8 fs4 e'8 ~ 8 d4 fs,8 ~ | 8 e'4 d8 ~ 8 fs,4 e'8 ~ | 
    e8 d4 fs,8 ~ 8 e'4 d8 ~ | 8 fs,4 e'8 ~ 8 d4 a8 ~ | 
    a1 ~ | 1 ~ | 1 ~ | 4 r8 b fs a cs e |

    \tuplet 3/2 { fs4 4 e } \tuplet 3/2 { fs4 a e ~ } | e4. g8 ~ 4 cs, ~ | 
    cs8 e4. b d8 ~ | 2. af4 ~ | 

    af1 | r8 bf4 16 af bf4 af8 c ~ | 1 | cs | 

    R1*4  
}

melody = \relative c' {
    \head
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    %\repeat unfold 10 { \skip 1 }

}



topline = \relative c'' {
}

midline = \relative c' {
}

bassline = \relative c' {
}


\include "ly/ily/layout-songs.ily"

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
                \chordsSong 
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

% \book {
%     \bookOutputSuffix "sound"
%     \score {
%         <<
%             \new ChordNames \transpose c c  { 
%                 s2. \chordsSong     
%                 \formChords 
%                 \formChords
%             }
%             \new Staff \transpose c c { s2. \topline }
%             \new Staff \transpose c c { s2. \midline }
%             \new Staff \transpose c c { s2. \bassline }
%         >>
%         \midi { }
%     }
% }



