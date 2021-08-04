\version "2.19.15"
\include "english.ly"

titleLeft = "Alternate Fingering"
titleRight = "Exercises for Saxophone"
title = "Alternate Fingering Exercises for Saxophone"
composerName = "Elaine Paul"

\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

\include "ly/ily/layout.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2019-20 Elaine Paul Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \title }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

%{
 
rm alternate-fingering-exercises-for-saxophone.pdf    
lilypond ly/alternate-fingering-exercises-for-saxophone.ly 
op alternate-fingering-exercises-for-saxophone.pdf 
mv alternate-fingering-exercises-for-saxophone.pdf pdf

%}

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


lick = \relative c'' { 
    \time 4/8
    \key b \minor
    fs16 g e fs d8 ( \< cs ) |
    as16\f ( fs ) es32 ( fs b fs )  as16 ( b cs d ) | 
    fs16 s2.. % ( g e8 ~ 16 ) d ( cs b ) | 
    % as8 ( b ~ 8 ) r8 
}


% \layout { 
%     indent = 1.25\cm
%     short-indent = 1.25\cm
%     \context {
%         \Score
%         \override StaffGrouper.staff-staff-spacing.padding = #0
%         \override StaffGrouper.staff-staff-spacing.basic-distance = #0
%     }
% }

\score {
    \header {
        title = ""
        piece = "From Piazolla Neuvo Mundo"
    } 
    << 
        \new Staff { 
            \include "ly/ily/staff-properties.ily"
            \lick
        \noPageBreak
        }
    >>
}    

