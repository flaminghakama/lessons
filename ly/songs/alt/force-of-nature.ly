\version "2.19.81"

titleLeft = "Force"
titleRight = "of Nature"
title = "Force of Nature"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm force-of-nature*pdf
lilypond ly/songs/alt/force-of-nature.ly
mv force-of-nature*.pdf  pdf/songs/alt
for file in pdf/songs/alt/force-of-nature*pdf ; do open -a Preview $file ; done
#mv force-of-nature*.midi midi

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

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \key g \major
    \tempo 4=112
    \time 3/4
    s2.*4 \break
    s2.*4 \break
    s2.*4 \break
    s2.*4 \break
    s2.*4 \break
    s2.*4 
    \bar "||"
}

formChords = \chordmode {
    g2.:7 | af:7 | g:7 | af:7 
    g2.:7 | af:7 | g:7 | df:7 

    c2.:7 | df:7 | c:7 | df:7 
    g2.:7 | af:7 | g:7 | ef:7 

    af2.:m7 | df:7 | a:m7 | d:7 | 
    bf2.:m7 | ef:7 | a:m7 | d:7 ||
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \formChords
}

head = \relative c' { 
    r2 r8 f | af bf4. ~ 8 af16 bf | f4 ~ 4. g8 | af8 4. ~ 4 | 
    r2 r8 f | af bf4. ~ 8 af16 bf | f4. g8 d' [ e ] | ef8 4. r4 | 

    bf8 [ c ] e g,4. ~ | 2. | g8 [ bf ] d e ef4 ~ | 2. |
    r2 r8 f, | af4 ~ 4. gf8 | f2  g8 bf | c8 4. r8 bf | 

    cf8 [ df ] ef bf4. ~ | 2 r8 bf | a4 c8 e d4 ~ | 2. | 
    df4 r c8 df | bf8 4. r4 | a4 c8 e d4 ~ | 2. || 
}

melody = \relative c' {
    \head
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    %\repeat unfold 10 { \skip 1 }

    She tells me of her new ob -- ses -- sion.
    Con -- fi -- ding in her sal -- i -- va -- ting sui -- tor.

    Buy -- ing me lunch, tak -- ing me to town.
    I writhe in an -- ti -- ci -- pa -- tion.

    A force of na -- ture
    with -- out par -- a -- llel;

    best when we're want -- ing, 
    true to her -- self.
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



