\version "2.19.81"

titleLeft = "Friv"
titleRight = "olity"
title = "Frivolity"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm frivolity*pdf
lilypond ly/songs/alt/frivolity.ly
mv frivolity*.pdf  pdf/songs/alt
for file in pdf/songs/alt/frivolity*pdf ; do open -a Preview $file ; done
mv frivolity*.midi midi

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

quarterEqualsEighth = \markup {
    \hspace #-3.5 \vspace #8
    \concat {
        \tiny \general-align #Y #DOWN \note #"4" #1
        " = "
        \tiny \general-align #Y #DOWN \note #"8" #1
    }
}
eighthEqualsQuarter = \markup {
    \hspace #-3.5 \vspace #8
    \concat {
        \tiny \general-align #Y #DOWN \note #"8" #1
        " = "
        \tiny \general-align #Y #DOWN \note #"4" #1
    }
}

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \key e \major
    \tempo 4=64
    \time 4/4

    s1*4 \break 
    s1*4 \break
    s1*2

    \override Score.MetronomeMark.padding = 3
    \tempo \eighthEqualsQuarter
    \bar "||" 
    \time 3/4 
    s2.*4

    \tempo \eighthEqualsQuarter
    \bar "||"
    \time 4/4 
    s1
    \bar ":|]"
}

formChords = \chordmode {
    fs2:m7 b:7 | e:m7 a:7 | d ds:m7 | af1:aug7 |
    cs2:m7 fs:m7 | g f:7.5- | g:m7.5- c:7 | f1 | 
    ef2 e:m | f:m bf:7 ||
    d4. b:m | e2.:7 | a:7 | bf | 
    s1 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \formChords
}

head = \relative c'' { 
    r4 r8 gs fs4. b8 | g16 d cs' a ~ 2. | 
    r4 r16 b gs b \tuplet 3/2 { cs4 4 4 } | e,1 |

    r4 r8 ds' gs,4. a8 | fs4 r8 cs b'16 gs4.. |
    c8 8 8 8 2 ~ | 1 | 

    f,8. ef'16 ~ 8 d g,2 | R1 | 
    d'4. b | b4 a gs | 
    r4 b,2 | cs16 e r8 r2_\markup { \bold "G.P." } |
    R1 
}

melody = \relative c' {
    \head
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    %\repeat unfold 10 { \skip 1 }

    It's all a fal -- len cha -- rade 
    the way I sit while you cry.

    Then call me up for ten -- nis
    which I'll have to move.

    Leave me a -- lone 
    while I pro -- cess your 
    trans -- fer -- rence 
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



