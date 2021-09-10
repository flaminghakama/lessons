
\version "2.18.2"

% Default
myChordSequence = \chordmode { 
    \set chordChanges = ##t 
    c1:m7.5-
}
<<
    \new ChordNames \myChordSequence
    \new Staff \relative c'' { ges1 }
>>

% Define your desired chord symbol design
myChordExceptions = {
    <c ees ges bes>1-\markup { m \super { 7 \flat 5 } } 
}

% Replace the old chord symbol with your new one
chordExceptions = #(append (sequential-music-to-chord-exceptions myChordExceptions #t) ignatzekExceptions)

% Use the new chord symbol
<<
    \new ChordNames {
        \set chordNameExceptions = #chordExceptions
        \myChordSequence
    }
    \new Staff \relative c'' { ges1 }
>>


