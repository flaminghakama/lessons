\version "2.19.15"
\include "english.ly"

titleLeft = "Pentatonic"
titleRight = ""
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"

	 	 
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

{Pentatonic with approach notes

%}

pentaOne = \relative c' {
    \key f \major
    \time 3/4 
    \partial 4*1 d8 c 
    \bar "||"
     d2 f8 d | f2 g8 f | g2 a8 g | a2 c8 a | c2 d8 c | d2 \breath d8 f | \break
     d2 c8 d | c2 a8 c | a2 g8 a | g2 f8 g | f2 d8 f | d2. \bar "|."
}
  
pentaTwo = \relative c' {
    \key f \major
    \time 3/4 
     d4-- f g | f-- g a | g-- a c | a-- c d | c-- d f | d2.-- | \break
     d4-- c a | c-- a g | a-- g f | g-- f d | f-- d c | d2.-- \bar "|."
}
  
pentaThree = \relative c' {
    \key f \major
    \time 4/4 
     d8-- f g a  f-- g a c | g-- a c d  a-- c d f | d1-- \breath \break 
     d8-- c a g  c-- a g f | a-- g f d g-- f d c | d1-- \bar "|."
}
  


pentaFour = \relative c' {
    \key f \major
    \time 3/4 
    \partial 4*1 f8 d 
     f2 g8 f | g2 a8 g | a2 c8 a | c2 d8 c | d2 f8 d | f2 \breath f8 g | \break
     f2 d8 f | d2 c8 d | c2 a8 c | a2 g8 a | g2 f8 g | f2. \bar "|."
}
  
pentaFive= \relative c' {
    \key f \major
    \time 3/4 
     f4-- g a| g-- a c | a-- c d | c-- d f | d-- f a | f2.-- | \break
     f4-- d c | d-- c a | c-- a g | a-- g f| g-- f d | f2.-- \bar "|."
}
  
pentaSix = \relative c' {
    \key f \major
    \time 4/4 
     f8\p\< g a c  g-- a c d | a-- c d f c-- d f g | f1--\ff \breath \break 
     f8--\f\> d c a  d-- c a g | c-- a g f  a-- g f d | f1--\pp \bar "|."
}

%{  
    We need to add articulations to this.  
%}


<< {
    \pentaOne \break \pentaTwo \break \pentaThree \break \pentaFour \break \pentaFive \break \pentaSix 
    \transpose d g { \pentaOne \break \pentaTwo \break \pentaThree \break \pentaFour \break \pentaFive \break \pentaSix }
} >>

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