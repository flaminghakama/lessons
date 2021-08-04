\version "2.19.15"
\include "english.ly"

titleLeft = "Cadential Arpeggios"
titleRight = "for Saxophone"
titleTitlePage = \markup \center-column { \titleLeft \concat { \titleRight "," }  "in Major" }
titleFull = "Cadential Arpeggios for Saxophone"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-title-page.ily"
 	 

%{

rm cadential-arpeggios-for-saxophone-major.pdf
lilypond ly/cadential-arpeggios-for-saxophone-major.ly
op cadential-arpeggios-for-saxophone-major.pdf 
python ~/git/part-format/bookify-16page.py cadential-arpeggios-for-saxophone-major.pdf cadential-arpeggios-for-saxophone-major-printable.pdf automatic
mv cadential-arpeggios-for-saxophone-major.pdf pdf
mv cadential-arpeggios-for-saxophone-major-printable.pdf pdf/printable
op pdf/printable/cadential-arpeggios-for-saxophone-major-printable.pdf 

%}

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2019 D. Elaine Alt" } 
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

\include "ly/notes/cadential-arpeggios-major.ily"


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
    instrumentName = "Saxophone"
    poet = \instrumentName
}

\bookpart { 
    \markup \title-page-markup "" "" \titleTitlePage
}

\include "ly/bookparts/cadential-arpeggios-major.ily"
