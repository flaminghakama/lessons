\version "2.24.0"

%  Continuing with a Nashville MWE for anticipations and postponements

% The 1/8 anticipation mark is placed to the top left of the chord symbol, and looks like "<". 
% For 1/16th anticipation, write "<<". 
% The 1/8 postponement, it's ">" to the top right. 
% For 1/16th postponement, it's ">>" to the top right.


%  The code that prints chord symbol roots as numbers

#(define (note-name->international-markup pitch lowercase?)
   (let* (
           (name (ly:pitch-notename pitch))
           (alt (ly:pitch-alteration pitch))
           (hspace (vector-ref #(0.15 0.15 0.05 0.05 0.15) (+ (* alt 2) 2)))
           (raise (vector-ref #(0.6 0.6 0.65 0.8 0.7) (+ (* alt 2) 2)))
           )
     (make-line-markup
      (list
       (make-simple-markup
        (vector-ref #("1" "2" "3" "4" "5" "6" "7") name)
        )
       (if (= alt 0)
           ;; If it's natural and not b, do nothing
           (make-line-markup (list empty-markup))
           ;; Else add alteration
           (make-line-markup
            (list
             (make-hspace-markup hspace)
             (make-smaller-markup (make-raise-markup raise
                                    (make-musicglyph-markup
                                     (assoc-get alt
standard-alteration-glyph-name-alist ""))))
             ))
           ))))
   )

nashvilleNames = {
    \set chordRootNamer = #note-name->international-markup
    \unset chordNoteNamer
}


%  Some use cases that demonstreate an anticipation before the downbeat
%  and then some anticipations at the half measure  

eighthAnticipation = \chordmode { 
    c2.. f8:7 ~ | 1 || 
    c2 a:m7 | d4.:m7 g8:7 ~ 2||
    c4. a8:m7 ~ 4. d8:m7 ~ | 4. g8:7 ~ 2 ||
}
sixteenthAnticipation = \chordmode { 
    c2... f16:7 ~ | 1 || 
    c2 a:m7 | d4..:m7 g16:7 ~ 2||
    c4.. a16:m7 ~ 4.. d16:m7 ~ | 4.. g16:7 ~ 2 ||
}

%  Similar use cases except postponements

eighthPostponement = \chordmode { 
    c1 |  r8 f2.. || 
    c2 a:m7 | d2:m7 r8 g4.:7 ||
    c2 r8 a4.:m7 | r8 d4.:m7  r8 g4.:7 ||
}
sixteenthPostponement = \chordmode { 
    c1 |  r16 f2... || 
    c2 a:m7 | d2:m7 r16 g4..:7 ||
    c2 r16 a4..:m7 | r16 d4..:m7  r16 g4..:7 ||
}

%  For now, we manually create the quantized chord progressions 

chordsQuantized = \chordmode { 
    c1 | f:7 || 
    c2 a:m7 | d:m7 g:7 ||
    c2  a:m7 | d:m7 g:7 ||
}


%  In this example all 4 sets of chords use the same quantized changes
%  And we specify use of the Nashville numbers instead of root names

chordChangesQuantized = \chordmode {
    \set chordChanges = ##t 
    \nashvilleNames
    \chordsQuantized
    \chordsQuantized
    \chordsQuantized
    \chordsQuantized
}


%  For now, we manually create the rhythmic markings above the chords
%  Is there a way to do this using some kind of function?

nashvilleEighthAnticipation = { <>^\markup \huge "<" }
nashvilleSixteenthAnticipation = { <>^\markup \huge "<<" }
nashvilleEighthPostponement = { <>^\markup \huge ">" }
nashvilleSixteenthPostponement = { <>^\markup \huge ">>" }

%  The anticipations are placed at the same point in time as the quantized chords

chordRhythmNashvilleEighthAnticipation =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    s1 | \nashvilleEighthAnticipation s1 || 
    s1 | s2 \nashvilleEighthAnticipation s2 || 
    s2 \nashvilleEighthAnticipation s2 | \nashvilleEighthAnticipation s2 \nashvilleEighthAnticipation s2 ||
}
chordRhythmNashvilleSixteenthAnticipation =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    s1 | \nashvilleSixteenthAnticipation s1 || 
    s1 | s2 \nashvilleSixteenthAnticipation s2 || 
    s2 \nashvilleSixteenthAnticipation s2 | \nashvilleSixteenthAnticipation s2 \nashvilleSixteenthAnticipation s2 ||
}

%  The postponements are placed at some point after the quantized chords
%  And the necessary amount seems to vary based on the size of the symbol
%  so the 8th note postponement is placed halfway through the chord since it is smaller

chordRhythmNashvilleEighthPostponement =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    s1 | s4 \nashvilleEighthPostponement s4 s2 || 
    s1 | s2 s4 \nashvilleEighthPostponement s4  || 
    s2 s4 \nashvilleEighthPostponement s4 | s4 \nashvilleEighthPostponement s4 s4 \nashvilleEighthPostponement s4 ||
}

%  And the 16th note postponement is placed a quarter of the way through the chord since it is larger

chordRhythmNashvilleSixteenthPostponement =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    s1 | s8 \nashvilleSixteenthPostponement s4. s2 || 
    s1 | s2 s8 \nashvilleSixteenthPostponement s4.  || 
    s2 s8 \nashvilleSixteenthPostponement s4. | s8 \nashvilleSixteenthPostponement s4. s8 \nashvilleSixteenthPostponement s4. ||
}
chordRhythmNashville = \chordmode {
    \bar "||"
    \chordRhythmNashvilleEighthAnticipation \break 
    \bar "||"
    \chordRhythmNashvilleSixteenthAnticipation \break 
    \bar "||"
    \chordRhythmNashvilleEighthPostponement \break 
    \bar "||"
    \chordRhythmNashvilleSixteenthPostponement
    \bar "||"
}

\score {
    <<
        \new RhythmicStaff \with {
            \remove "Staff_symbol_engraver"
            \remove "Time_signature_engraver" 
            \magnifyStaff #5/7
        } {
            \chordRhythmNashville
        }
        \new ChordNames \with {
            \override BarLine.bar-extent = #'(-2 . 2)
            \consists "Bar_engraver"
        } { 
            \chordChangesQuantized
        }
    >>
}

