\version "2.19.83"

titleLeft = "We Three Kings"
titleRight = "Of Orient Are"
title = "We Three Kings"
composerName = "John H. Hopkins, Jr."

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

%{

rm we-three-kings-*pdf    
lilypond ly/songs/we-three-kings.ly
op we-three-kings-for-Eb.pdf
%}

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
    (make-pango-font-tree "Cochin" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout.ily"

structure = \relative c' { 
    \time 6/8
    \key d \minor
    s2.*8 
    \bar "||"
    s2.*8 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2.:m | 4. a:7 | d2.:m | 4. a:7 | 
    f4. c | f2. | g4.:m a | d:m c ||
    f2. | bf4. f | f2. | bf4. f |
    f4. g:m | bf g:m | f2. | bf4. f ||
}

melody = \relative c'' { 
    a4 g8 f4 d8 | e f e d4. | 
    a'4 g8 f4 d8 | e f e d4. | \break

    f4 8 g4 8 | a4 8 c ( bf ) a | 
    g8 a g f4 e8 | d4. \breath e4 ( g8 ) ||

    f4 8 4 c8 | f4 d8 f4. | 
    f4 8 4 c8 | f4 d8 f4. | 

    f4 8 g4 a8 | bf4 a8 g4 a8 |      
    f4 8 4 c8 | f4 d8 f4. ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    We three Kings of Or -- i -- ent are
    Bear -- ing gifts we tra -- verse so far 

    Field and foun -- tain moor and moun -- tain 
    fol -- low -- ing yon -- der star.

    O Star of won -- der, star of night
    star with roy -- al beau -- ty bright

    West -- ward lead -- ing, 
    still pro -- cee -- ding  
    guide us to the Per -- fect Light.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Born a king on Beth -- le -- hem's plain,
    gold I bring to crown him a -- gain,
    King for -- ev -- er, ceas -- ing ne -- ver, 
    o -- ver us all to reign.
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Frank -- in -- cense to of -- fer have I;
    In -- cense owns a De -- i -- ty nigh;
    prayer and prai -- sing, voi -- ces rais -- ing 
    wor -- ship -- ping God on high. 
}
lyricsHeadFour = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Myrrh is mine;  it's bit -- ter per -- fume
    breathes a life of ga -- ther -- ing gloom;
    sorrow -- ing sigh -- ing, bleed -- ing, dy -- ing 
    sealed in the stone cold tomb.
}
lyricsHeadFive = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Glor -- ious now be -- hold Him ar -- ise;
    King and God and sa -- cri -- fice:
    Al -- le -- uia, Al -- le -- uia 
    sounds through the earth and skies. 
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    %arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}


\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \chordsForm }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadFour } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadFive } 
            }
        >>
    }
}

\layout { 
    indent = 2.15\cm
    short-indent = 1.25\cm
}

\book {
    \bookOutputSuffix "for-Eb"
    \paper {
        % First page spacing after header
        markup-system-spacing.padding = #6
    }
    \header {
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { \chordsForm }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
        >>
        \header {
            piece = \markup \center-column { " "  "Concert D" }
        }
    }
    \score {
        <<
            \new ChordNames \transpose d a, \transpose ef c  { \chordsForm }
            \new Staff = "voice" \transpose d a, \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
        >>
        \header {
            piece = "Concert A"
        }
    }
}
