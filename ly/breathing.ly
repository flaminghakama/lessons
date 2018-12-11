\version "2.19.15"
\version "2.19.15" 
\include "english.ly"

titleLeft = "Lessons"
titleRight = ""
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
	 	 
\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2015 D. Elaine Alt" } 
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


%{

breathing
8-count from pp to f\<, 8-count from f\< to pp.
play in several registers

%}

breathingNonLinear = \relative c' {
	d1\pp\< ~ | d1\p\< ~ | d2\mp\< ~ d2\mf\< | d1\f\< ~ | d1\ff | \break
	d1\f\> ~ | d1\f\> ~ | d2\mf\> ~ d2\mp\>| d1\p\> ~ | d1\pp \bar "||" \break
}
	
breathingLinear = \relative c' {
	d2\pp\< ~ d2\mp\< ~ | d2\mf\< ~ d2\f\< | d2\ff\> ~ d2\mf\> ~ | d2\mp\> ~ d2\pp \bar "||" \break
	a'2\pp\< ~ a2\mp\< ~ | a2\mf\< ~ a2\f\< | a2\ff\> ~ a2\mf\> ~ | a2\mp\> ~ a2\pp \bar "||" \break
	d2\pp\< ~ d2\mp\< ~ | d2\mf\< ~ d2\f\< | d2\ff\> ~ d2\mf\> ~ | d2\mp\> ~ d2\pp \bar "||" \break
	a'2\pp\< ~ a2\mp\< ~ | a2\mf\< ~ a2\f\< | a2\ff\> ~ a2\mf\> ~ | a2\mp\> ~ a2\pp \bar "||" \break
	d2\pp\< ~ d2\mp\< ~ | d2\mf\< ~ d2\f\< | d2\ff\> ~ d2\mf\> ~ | d2\mp\> ~ d2\pp \bar "||" \break
	a2\pp\< ~ a2\mp\< ~ | a2\mf\< ~ a2\f\< | a2\ff\> ~ a2\mf\> ~ | a2\mp\> ~ a2\pp \bar "||" \break
	d,2\pp\< ~ d2\mp\< ~ | d2\mf\< ~ d2\f\< | d2\ff\> ~ d2\mf\> ~ | d2\mp\> ~ d2\pp \bar "||" \break
	a2\pp\< ~ a2\mp\< ~ | a2\mf\< ~ a2\f\< | a2\ff\> ~ a2\mf\> ~ | a2\mp\> ~ a2\pp \bar "||" \break
	d,2\pp\< ~ d2\mp\< ~ | d2\mf\< ~ d2\f\< | d2\ff\> ~ d2\mf\> ~ | d2\mp\> ~ d2\pp \bar "||" \break
}
	

<< { \breathingNonLinear \pageBreak \breathingLinear } >>

%{
	

Pentatonic
d4 c d2 | c4 a c2 | etc.
specially focus on d-c in all registers
d4 f d2 | f4 g f2 | etc.

plus double
d8 c d c d2 | c8 a c a c2 | ect.

introduce high f in both fingerings.
playing down is harder than playing up


BLO songs
JJD: D blues
Ya Move Ya Lose: D bules
We Got That Fire: C blues

AP Torou: A blues

Montserrat Serrat: D hijaz
Na Bourusa: A hijaz
Ciganko Moja: G hijaz

Matador: F# mino
Moliendo Cafe: B minor
La Vida est Carnival: several chords 
Sweet Dreams: A minor



Ergonomics
Place palm keys first, then lay down fingers
Does not have to be centered on keys
Eliminate a2 much curvature a2 necessary.


idea2: major vs. minor

%}