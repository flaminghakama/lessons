\version "2.19.81"

titleLeft = "Seven"
titleRight = "O'Clock Tune"
title = "Seven O'Clock Tune"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm seven-oclock-tune*pdf
lilypond ly/songs/alt/seven-oclock-tune.ly
mv seven-oclock-tune*.pdf  pdf/songs/alt
for file in pdf/songs/alt/seven-oclock-tune*pdf ; do open -a Preview $file ; done
#mv seven-oclock-tune*.midi midi

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

    \key a \major
    \tempo 4=176
    \time 3/4
    \bar "[|:"
    s2.*2
    \bar ":|]"
    s2.*2 \break

    \bar "[|:"
    s2.*2
    \bar ":|]"  
    
    s2.*4 \break
    s2.*3 

    \bar "[|:"
    s2.*2
    \bar ":|]"
    s2.*2 \break
    
    \bar "[|:"
    s2.*2
    \bar ":|]" 
    
    s2.*4 \break
    s2.*3 

    \bar "[|:"
    s2.*2
    \bar ":|]"
    s2.*2 \pageBreak
    
    \bar "[|:"
    s2.*2
    \bar ":|]" 
    
    s2.*4 \break
    s2.*3 

    \bar "[|:"
    s2.*2
    \bar ":|]"
    s2.*2 \break
    
    \bar "[|:"
    s2.*2
    \bar ":|]"  

    s2.*4 \break
    
    s2.*3 

    \bar "[|:"
    s2.*2
    \bar ":|]"
}

formChords = \chordmode {
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \formChords
}

head = \relative c'' { 
    R2.*2 
    R2.*2
    R2.*2 

    a4 bf4. a8 | cs4 bf2 ~ | 2. ~ | 2. | 
    r4 d d | c4. d16 c bf4 | 8 a bf4 c | 

    <>^\markup { \bold "Vamp" }
    f,2. ~ | 2. | 
    R2.*2 |
    <>^\markup { \bold "Vamp" }
    R2.*2 |

    a4 bf a | d2 cs4 | a2. ~ | 2. | 
    r4 r8 bf c [ d ] | e [ d ] e d f4 ~ | 4 \tuplet 3/2 { e8 d c } a8 8 ~ | 

    <>^\markup { \bold "Vamp" }
    a2. ~ | 2. |
    R2.*2 |
    <>^\markup { \bold "Vamp" }
    R2.*2 |

    e4. a4 bf8 ~ | 8 c4. a4 ~ | 2. ~ | 2. | 
    r2 bf4 | c2 d4 | e r8 a, cs [ d ] | 

    <>^\markup { \bold "Vamp" }
    e8 4. ~ 4 ~ | 2. | 
    R2.*2 |
    <>^\markup { \bold "Vamp" }
    \comp #6 |

    \comp #12
    r2 bf4 ~ | 4 c2 | cs a4 ~ | 
    <>^\markup { \bold "Vamp" }
    a2. ~ | 2. |
}

melody = \relative c' {
    \head
}

bassCell = \relative c { 
    a2 e'4 | a,2 e'4 |  
}
bassVamp = \relative c { 
    \bassCell | a2 bf4 | c2 bf4 | \bassCell | 
}
bassVerse = \relative c { 
    \bassCell | \bassCell | d2. ~ | 2. ~ | 2. |  
}

bassLine = \relative c, { 
    <<  
        { 
            <>^\markup { \bold "Vamp" } s2.*2 | 
            s2.*2 |
            <>^\markup { \bold "Vamp" } s2.*2 
        } 
        \bassVamp
    >>
    \bassVerse
    \bassVamp
    \bassVerse
    \bassVamp
    \bassVerse
    \bassVamp
    \bassVerse  
    \bassCell
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    %\repeat unfold 10 { \skip 1 }

    Se -- ven O' Clock tune
    makes me, wai _ _ -- ter af -- ter al -- mond oil

    Breath in the cul -- ty air
    The spin -- ning box -- es be -- low twirl chur -- ning out de -- mos

    Eu -- ca -- lyp -- tus tree
    The fine green beans in shades of yel -- low

    You're there for me
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
        \new PianoStaff <<
            \set PianoStaff.instrumentName = #""
            \set PianoStaff.shortInstrumentName = #""
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \new Voice = "lead" \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Staff = "lower" {
                \include "ly/ily/staff-properties.ily"
                \clef bass
                <<
                    \structure 
                    \bassLine
                >>
                \noPageBreak
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



