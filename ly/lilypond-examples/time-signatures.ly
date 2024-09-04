\version "2.24.0"

trl = \tuplet 3/2 \etc

rpt = #(define-music-function (cnt snip) (integer? ly:music?)
  #{
    { \repeat unfold $cnt $snip }
  #}
)

frhornInIIA = {
  \sectionLabel "Intro"
  \key f \major
  | \trl {a'8( bes a)} g r | \trl {g( a g)} f[ r16 e] | g8 r f[ r16 e] | d8 r r4 \break

  \sectionLabel "Part A"
  \repeat volta 2 {
    | \rpt 4 { r8 <d a'>[ r <d a'>] } \break
  }
} % A part


frhornIIInIVA = {
  \sectionLabel "Intro"
  \key f \major
  | \trl {a'8( bes a)} g r | \trl {g( a g)} f[ r16 e] | g8 r f[ r16 e] | d8 r r4 \break

  \sectionLabel "Part A"
  \repeat volta 2 {
    | \rpt 4 { r8 <f a,>[ r <f a,>] } \break
  }
} % A part


frhornInIINotes = {
  \time 2/4
  \relative c' {
    \frhornInIIA %{
    \frhornInIIB
    \frhornInIIC
    \frhornInIID
    \frhornInIIE
    \frhornInIIF %}
  }
}


frhornIIInIVNotes = {
  \time 2/4
  \relative c' {
    \frhornIIInIVA %{
    \frhornIIInIVB
    \frhornIIInIVC
    \frhornIIInIVD
    \frhornIIInIVE
    \frhornIIInIVF %}
  }
}

sgFrenchHorn = \new StaffGroup <<
  \new Staff \with {
    instrumentName = \markup { \column { \line { French Horn E\flat} \line {"I & II"} } }
    shortInstrumentName = \markup \teeny { \column { \line {"fhorn"} \line {"I,II"} } }
  }
  \frhornInIINotes

  \new Staff \with {
    instrumentName = \markup { \column { \line { French Horn E\flat} \line {"III & IV"} } }
    shortInstrumentName = \markup \teeny { \column { \line {"fhorn"} \line {"III,IV"} } }
  }
  \frhornIIInIVNotes
>>

\score {
  \sgFrenchHorn
}

%{
  
First an attempt to try to clarify the problem:

Writing for an Eb instrument means you write a C when you want to hear an Eb.  
That's the definition of how pitched instruments are named:  when the instrument plays a written C, the sounding note is the name of the instrument.  
A Bb trumpet playing a written C sounds like a Bb.  
A horn in F playing a written C sounds like an F.  
An alto flute in G playing a written C sounds like a G.  
A horn in Eb playing a written C sounds like an Eb.

So, assuming that is what this existing part for Eb horn is, when the part writes a C, the sounding pitch is an Eb.

The note you would write for an instrument in F to play a sounding Eb is the note a 5th above Eb, or Bb.

This means that a written C in the original part for Eb horn would be written for horn in F as a Bb.

So, everything goes down a whole step, including the key signature, from F to Eb, or one flat to three flats.

It is easiest in your case to just transpose the entire staffgroup

%}

sgFrenchHorn = \new StaffGroup \transpose f ees <<
  \new Staff \with {
    instrumentName = \markup { \column { \line { French Horn F} \line {"I & II"} } }
    shortInstrumentName = \markup \teeny { \column { \line {"fhorn"} \line {"I,II"} } }
  }
  \frhornInIINotes

  \new Staff \with {
    instrumentName = \markup { \column { \line { French Horn F} \line {"III & IV"} } }
    shortInstrumentName = \markup \teeny { \column { \line {"fhorn"} \line {"III,IV"} } }
  }
  \frhornIIInIVNotes
>>

\score {
  \sgFrenchHorn
}




