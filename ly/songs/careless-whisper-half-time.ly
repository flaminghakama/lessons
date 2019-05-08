\version "2.19.15"
\include "english.ly"

titleLeft = "Careless"
titleRight = "Whisper"
title = "Careless Whisper"
subtitle = "(Half Time)"
composerName = "G. Michael & A. Ridgeley"
arrangerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
  
\include "ly/ily/layout.ily"

\include "ly/notes/rhythms-careless-whisper.ily"


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #14

  % Spacing in between systems
  system-system-spacing.basic-distance = #18
  system-system-spacing.minimum-distance = #15

  page-breaking = #ly:minimal-breaking

  #(define fonts
    (make-pango-font-tree "Hardwood" 
                          "Highlander ITC TT" 
                          "Papyrus"
                           (/ myStaffSize 20)))
}
%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"
    

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 
    \header {
        poet = "Eb Alto Saxophone"
    }

    \bookpart {
        \header {
            title = \title
            subtitle = \subtitle
            composer = \composerName
            arranger = \arrangerName
        }
        \score {
            \transpose ef, c 
            << 
                \new ChordNames \transpose c c { 
                    \carelessWhisperSongChords 
                }
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \carelessWhisperSong
                }
            >>
        }
     }
}
