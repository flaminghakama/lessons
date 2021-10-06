\version "2.19.81"

titleLeft = "Mark"
titleRight = "Time"
title = "Mark Time"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm mark-time*pdf
lilypond ly/songs/alt/mark-time.ly
mv mark-time*.pdf  pdf/songs/alt
for file in pdf/songs/alt/mark-time*pdf ; do open -a Preview $file ; done
mv mark-time*.midi midi

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
    \tempo 4=184
    \time 3/4
    s2.*4 \break s2.*4 \break s2.*3
    \bar "||" 
    \time 4/4 
    s1 
    \startSection "" \break
    \time 3/4
    s2.*4 \break s2.*4 \break s2.*3
    \bar "||" 
    \time 4/4 
    s1 
    \startSection "" \break
    \time 3/4
    s2.*4 \break s2.*4 \break s2.*3
    \bar "||" 
    \time 4/4 
    s1 
    \bar "||"
}

formChords = \chordmode {
    e2. | fs:7 | cs:m7.5- | fs:7 |
    b2.:m  | e | bf:m7 | ef:aug7 | 
    gs2.:m7.5- | g:aug | c | b1 ||
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \formChords
    \formChords
    \formChords
}

head = \relative c'' { 
    r2 b4 | as4. e8 fs4 | g4 ds'2 ~ | 2 r4 | 
    r2 cs4 | b r b | gs ds8 cs'4. | b2 gs4 | 
    gs8 a4. gs4 | ds r r8 e | fs4 gs8 e'4. | ds4 r r2 ||

    r2 b4 | as2 e4 | fs g2 ~ | 2 r4 | 
    r2 cs4 | b8 gs4. fs4 | ds4 r2 | r2 cs'4 | 
    gs4 r8 a4. | fs8 e'4. ds4 | b cs?8 fs,4 as8 | b4 r r2||

    r2 b4 | as4. e ~ | 2 4 | fs8 g4 r8 r4 | 
    r2 cs4 | b4 ds,4. e8 | fs2 r4 | r2 b4 | 
    gs4 r8 a4. | b4 gs' e | cs? a fs | ds4 r r2 ||
}

melody = \relative c' {
    \head
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    %\repeat unfold 10 { \skip 1 }

    They turn a -- way pa -- trons.
    I sit, al -- rea -- dy sa -- ted.
    But wea -- ry and tense,
    for lack of ca -- dence.

    I wish to mark time
    to lis -- ten, to sleep.
    The night needs clo -- sure, 
    a long a -- wait -- ed weep.

    I must rush to fin -- ish
    Be -- fore loss of grace.
    They work in me -- ter 
    while I set my pace
}



topline = \relative c'' {
    gs2 r4 | R2. | r2 g4 | fs2 e4 | 
    d2 r4 | r4 e gs | r2 af4 | g8 ef g4 r | 
    fs2 r4 | r f2 | e2 ~ 8 g | fs8 gs fs gs fs4. gs8 ||

    e2 r4 | r e2 | 2 r4 | r2 e4 | fs8 g as2 | 
    fs2 r4 | R2. | r4 r8 df'4 c8 | b2 r4 | 
    r8 b r2 | r8 b r2 | r8 g4 e4. | ds8 e fs gs as b cs ds |   

    gs2 r4 | r4 e2 | r4 cs2 | r8 b4 as gs8 | 
    fs8 a fs4 r | R2. | af8 c af2 | g8 b ef,4 df | 
    b2 r4 | r4 ds b | g2. | fs4 r r2 ||
}

midline = \relative c' {
}

bassline = \relative c' {
    e2. | fs | cs | fs |
    b,2. | e | bf | ef | 
    gs | g | c, | b1 ||

    e2. | fs | cs | fs |
    b,2. | e | bf | ef | 
    gs | g | c, | b1 ||

    e2. | fs | cs | fs |
    b,2. | e | bf | ef | 
    gs | g | c, | b1 ||
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



