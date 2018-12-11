\version "2.19.15"
\include "english.ly"

titleLeft = "Blues Walk"
titleRight = ""
composerName = "transcribed by D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
	 	 
\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2018 Elaine Paul" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleLeft \titleRight }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

  top-margin = #14
  right-margin = #17

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



bluesWalk = \relative c''' {
    \key g \major
    \time 4/4 
    \partial 8*1 g8->-. ~ 
    \bar "[|:"
    \repeat volta 2 { 
        g8 4.-> ~ 4. e8 | d g, r4 r4 r8 g'->-. ~ | 8 4-> e8 d4 c8 bf ( | b? d ) e d r4 r8 g->-. ~ | \break
        8 4.-> ~ 4. e8 | d g, r4 r4 r8 g'->-. ~ | 8 4-> e8 d4 c8 bf ( | b? d ) e d r2 | \break
        d8 ( f4.-> ~ 4 ) d8 ( f-> ~ | 4. ) d8 f ( d ) fs ( g_"fine" ) | r1 | r2 r4 r8 g\laissezVibrer |
    } \bar ":|]"
}

bluesForDuane = \relative c'' {
    \key d \major
    \time 4/4 
    \partial 8*1 fs8-> ~ 
    \bar "[|:"
    \repeat volta 2 { 
        fs4 d8-. a c4-- d8 f-> ~ | 4 d8-. a c4-- d8 fs-> ~ | fs4 d8-. a c4-- d8 c-> ~ | 2 r4 r8 f-> ~ | \break
        4 d8-. a c4-- d8 f-> ~ | 4 d8-. a c4-- d8 fs-> ~ | fs4 d8-. a c4-- d8 c-> ~ | 2 r8 d fs [ g-> ] ~ | \break
        1 ~ | 1 ~ | 1 ~ | 2 r4 r8 fs->\laissezVibrer
    } \bar ":|]"
}



<< {
    \bluesWalk
} >>

<< {
    \bluesForDuane
} >>