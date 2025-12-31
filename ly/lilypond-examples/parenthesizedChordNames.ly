\version "2.24.0" 
\include "english.ly"

parenthesizedChordNames = {

    % Major
    <c e g d'>1-\markup { "(add 9)" }
    <c e g a d'>1-\markup { "(6 9)" }
    <c e g b d-sharp' f-sharp' a-flat'>1-\markup { "maj7 (#9 #11 b13)" }
    <c e g b d' a'>1-\markup { "maj7 (9 13)" }
    <c e g b f-sharp' a'>1-\markup { "maj7 (#11 13)" }

    % Minor
    <c e-flat g a-flat>1-\markup { "min (b6)" }
    <c e-flat g a d'>1-\markup { "min (6 9)" }
    <c e-flat g b-flat f'>1-\markup { "min7 (11)" }
    <c e-flat g b-flat d' f'>1-\markup { "min7 (9 11)" }
    <c e-flat g b-flat a'>1-\markup { "min7 (13)" }
    <c e-flat g b-flat a-flat'>1-\markup { "min7 (b13)" }
    <c e-flat g b>1-\markup { "min (maj7)" }
    <c e-flat g b d'>1-\markup { "min (maj7 9)" }
    <c e-flat g b d' a'>1-\markup { "min (maj7 9 13}" } 
    <c e-flat g b-flat d' f' a'>1-\markup { "min7 (9 13)" }
	<c e-flat g b d' f' a'>1-\markup { "min (maj7 11 13" }
	<c e-flat g b d' f-sharp' a'>1-\markup { "min (maj7 9 #11 13)" }
    <c e-flat g b-flat d'>1-\markup { "min7 (9)" }
    <c e-flat g b-flat d' f>1-\markup { "min7 (9 11)" } 
	<c e-flat g b-flat d' a'>1-\markup { "min7 (9 13)" }
    <c e-flat g b-flat a-flat'>1-\markup { "min7 (b13)" }
    <c e-flat g b-flat d' a-flat'>1-\markup { "min7 (9 b13)" } 
	<c e-flat g b a-flat'>1-\markup { "min (maj7 b13)" } 
	<c e-flat g b-flat d-flat' f-sharp'>1-\markup { "min7 (b9 #11)" }
	<c e-flat g d-flat' a-flat'>1-\markup { "min (b9 b13}" }

    % Dominant
    <c e g b-flat d'>1-\markup { "7 (9)" } 
    <c e g b-flat d-flat'>1-\markup { "7 (b9)" }
    <c e g b-flat d-sharp' a-flat'>1-\markup { "7 (#9 b13)" }
    <c e g b-flat d-sharp'>1-\markup { "7 (#9)" } 
	<c e g b-flat c-sharp' d-sharp'>1-\markup { "7 (b9 #9)" }
	<c e g b-flat d-sharp' f-sharp'>1-\markup { "7 (#9 #11)" } 
	<c e g b-flat d-flat' f-sharp'>1-\markup { "7 (b9 #11)" } 
	<c e g b-flat d' f-sharp'>1-\markup { "7 (9 #11)" }
	<c e g b-flat d' f-sharp' a'>1-\markup { "7 (9 #11 13)" }
	<c e g b-flat d' a'>1-\markup { "7 (9 13)" }
	<c e g b-flat d-flat' a'>1-\markup { "7 (b9 13)" }
	<c e g b-flat a-flat'>1-\markup { "7 (b13)" }
	<c e g b-flat d' a-flat'>1-\markup { "7 (9 b13)" }
	<c e g b-flat d' f' a-flat'>1-\markup { "7 (9 11 b13)" }
	<c e g b-flat d-flat' a-flat'>1-\markup { "7 (b9 b13)" }
	<c e g b-flat d-flat' f-sharp' a'>1-\markup { "7 (b9 #11 13)" }
	<c e g b-flat c-sharp' d-sharp' a-flat'>1-\markup { "7 (b9 #9 b13)" }

    % Dominant b5
    <c e g-flat b-flat>1-\markup { "7 (b5)" }
    <c e g-flat b-flat d'>1-\markup { "7 (b5 9)" } 
    <c e g-flat b-flat a'>1-\markup { "7 (b5 13)" }
    <c e g-flat b-flat d-flat'>1-\markup { "7 (b5 b9)" } 
	<c e g-flat b-flat d-flat' a'>1-\markup { "7 (b5 b9 13)" }
	<c e g-flat b-flat a-flat'>1-\markup { "7 (b5 b13)" } 
	<c e g-flat b-flat d-sharp'>1-\markup { "7 (b5 #9)" } 

    % Half-diminished
    <c e-flat g-flat b-flat c-sharp'>1-\markup { "min7 (b5 b9)" } 
	<c e-flat g-flat b-flat d-flat'>1-\markup { "min7 (b5 b9)" } 
	<c e-flat g-flat b-flat d'>1-\markup { "min7 (b5 9)" }
	<c e-flat g-flat b-flat f'>1-\markup { "min7 (b5 11)" } 
	<c e-flat g-flat b-flat a'>1-\markup { "min7 (b5 13)" } 
	<c e-flat g-flat b-flat d' a'>1-\markup { "min7 (b5 9 13)" } 

    % Augmented
    <c e g-sharp b-flat d'>1-\markup { "aug7 (9)" } 
    <c e g-sharp b-flat c-sharp' d-sharp'>1-\markup { "aug7 (b9 #9)" } 
    <c e g-sharp b-flat d-sharp'>1-\markup { "aug7 (#9)" }
    <c e g-sharp b-flat f-sharp'>1-\markup { "aug7 (#11)" } 
    <c e g-sharp d-flat'>1-\markup { "aug (b9)" }
    <c e g-sharp b-flat d-flat'>1-\markup { "aug7 (b9)" }
    <c e g-sharp b-flat d' a'>1-\markup { "aug7 (9 13)" } 
    <c e g-sharp b-flat d-sharp' f-sharp'>1-\markup { "aug7 (#9 #11)" } 
    <c e g-sharp b-flat d-flat' f-sharp'>1-\markup { "aug7 (b9 #11)" } 

    % Lydian 
    <c e g b f-sharp'>1-\markup { "maj7 (#11)" }
    <c e g b d' f-sharp'>1-\markup { "maj7 (9 #11)" } 
    <c e g b d' f-sharp' a'>1-\markup { "maj7 (9 #11 13)" } 
    <c e g b-flat f-sharp'>1-\markup { "7 (#11)" }
    <c e g b-flat f-sharp' a-flat'>1-\markup { "7 (#11 13)" }  
    <c e g d-sharp' f-sharp'>1-\markup { "maj (#9 #11)" }
}
parenthesizedChordNameExceptions = #(append (sequential-music-to-chord-exceptions parenthesizedChordNames #t) ignatzekExceptions)

exampleChords = {

	\mark "Major"
    <c e g d'>1
    <c e g a d'>1
    <c e g b d-sharp' f-sharp' a-flat'>1
    <c e g b d' a'>1
    <c e g b f-sharp' a'>1
    \break

    \mark "Minor"
    <c e-flat g a-flat>1
    <c e-flat g a d'>1
    <c e-flat g b-flat f'>1
    <c e-flat g b-flat d' f'>1
    <c e-flat g b-flat a'>1
    <c e-flat g b-flat a-flat'>1
    <c e-flat g b>1
    <c e-flat g b d'>1
    <c e-flat g b d' a'>1
    <c e-flat g b-flat d' f' a'>1
    <c e-flat g b d' f' a'>1
	<c e-flat g b d' f-sharp' a'>1
	<c e-flat g b-flat d'>1
    <c e-flat g b-flat d' f>1
    <c e-flat g b-flat d' a'>1
	<c e-flat g b-flat a-flat'>1
    <c e-flat g b-flat d' a-flat'>1
    <c e-flat g b a-flat'>1
	<c e-flat g b-flat d-flat' f-sharp'>1
	<c e-flat g d-flat' a-flat'>1
    \break

	\mark "Dominant"
    <c e g b-flat d'>1
    <c e g b-flat d-flat'>1
    <c e g b-flat d-sharp' a-flat'>1
    <c e g b-flat d-sharp'>1
    <c e g b-flat c-sharp' d-sharp'>1
	<c e g b-flat d-sharp' f-sharp'>1
	<c e g b-flat d-flat' f-sharp'>1
	<c e g b-flat d' f-sharp'>1
	<c e g b-flat d' f-sharp' a'>1
	<c e g b-flat d' a'>1
	<c e g b-flat d-flat' a'>1
	<c e g b-flat a-flat'>1
	<c e g b-flat d' a-flat'>1
	<c e g b-flat d' f' a-flat'>1
	<c e g b-flat d-flat' a-flat'>1
	<c e g b-flat d-flat' f-sharp' a'>1
	<c e g b-flat c-sharp' d-sharp' a-flat'>1
    \break

    \mark "Dominant b5"
    <c e g-flat b-flat>1
    <c e g-flat b-flat d'>1
    <c e g-flat b-flat a'>1
    <c e g-flat b-flat d-flat'>1
    <c e g-flat b-flat d-flat' a'>1
	<c e g-flat b-flat a-flat'>1
	<c e g-flat b-flat d-sharp'>1
    \break

    \mark "Half-diminished"
    <c e-flat g-flat b-flat c-sharp'>1
    <c e-flat g-flat b-flat d-flat'>1
	<c e-flat g-flat b-flat d'>1
	<c e-flat g-flat b-flat f'>1
	<c e-flat g-flat b-flat a'>1
	<c e-flat g-flat b-flat d' a'>1
    \break

    \mark "Augmented"
    <c e g-sharp b-flat d'>1
    <c e g-sharp b-flat c-sharp' d-sharp'>1
    <c e g-sharp b-flat d-sharp'>1
    <c e g-sharp b-flat f-sharp'>1
    <c e g-sharp d-flat'>1
    <c e g-sharp b-flat d-flat'>1
    <c e g-sharp b-flat d' a'>1
    <c e g-sharp b-flat d-sharp' f-sharp'>1
    <c e g-sharp b-flat d-flat' f-sharp'>1
    \break

    \mark "Lydian"
    <c e g b f-sharp'>1
    <c e g b d' f-sharp'>1
    <c e g b d' f-sharp' a'>1
    <c e g b-flat f-sharp'>1
    <c e g b-flat f-sharp' a-flat'>1
    <c e g d-sharp' f-sharp'>1
}

exampleParenthesizedChords = {
    \set chordNameExceptions = #parenthesizedChordNameExceptions
    \exampleChords
}

<<
	\new ChordNames \exampleParenthesizedChords
    \new Staff \exampleChords
>>

