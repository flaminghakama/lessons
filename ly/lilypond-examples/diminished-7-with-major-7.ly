\version "2.19.83"

%{

From: Andrew Zah <zah@andrewzah.com>

I'm trying to input a Bbdim7(maj7) chord. See the attached for an example.

Currently I'm doing this to override chords:

%}

jazzChordDefinitions={
   <c ees ges beses>-\markup { \super "o!" }
   <c ees ges beses ces>-\markup { \super "o7(△7)" }
   <c ees ges a b>-\markup { \super "o7(△7)" }
}

jazzChordExceptions=#(append
     (sequential-music-to-chord-exceptions jazzChordDefinitions #t)
)

myChordSequence = \chordmode {

   bes1:dim7
   bes1:1.3-.5-.7-

   bes1:dim7.8-
   bes1:1.3-.5-.7-.8-
   bes1:1.3-.5-.6.7+
}

<<
    \new ChordNames {
        \set chordNameExceptions = #jazzChordExceptions
        \myChordSequence
    }
    \new Staff \myChordSequence	
>>

