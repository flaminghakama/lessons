\version "2.19.15"
\include "english.ly"

titleLeft = "Cadential Arpeggios"
titleRight = "for Clarinet"
titleTitlePage = \markup \center-column { \titleLeft \concat { \titleRight "," }  "in Minor" }
titleFull = "Cadential Arpeggios for Clarinet"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-title-page.ily"
 	 

%{

rm cadential-arpeggios-for-clarinet-minor.pdf ; lilypond ly/exercises/clarinet/cadential-arpeggios-for-clarinet-minor.ly ; op cadential-arpeggios-for-clarinet-minor.pdf 


rm cadential-arpeggios-for-clarinet-minor.pdf
lilypond ly/exercises/clarinet/cadential-arpeggios-for-clarinet-minor.ly
mv cadential-arpeggios-for-clarinet-minor.pdf pdf/exercises/clarinet
op pdf/exercises/clarinet/cadential-arpeggios-for-clarinet-minor.pdf 

%}

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2023 Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold \titleFull  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

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
    (make-pango-font-tree "Baskerville" 
                          "Highlander ITC TT" 
                          "Papyrus"
                           (/ myStaffSize 20)))
}
%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"
\include "ly/ily/layout.ily"

\layout {
    \context { 
        \ChordNames
        \override ChordName.font-size = #2
    } 
}

\include "ly/notes/arpeggio-exercises/clarinet/cadential-arpeggios-minor.ily"


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
    instrumentName = "Clarinet"
    poet = \instrumentName
}

\bookpart { 
    \markup \title-page-markup "" "" \titleTitlePage
}

\include "ly/bookparts/arpeggio-exercises/clarinet/cadential-arpeggios-minor.ily"
