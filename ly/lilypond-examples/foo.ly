\version "2.24.0"

% Chords
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

nashvilleChords = {
  \set chordRootNamer = #note-name->international-markup
  \unset chordNoteNamer
}

\chords {
  c1 d:m f:maj7 g:7 c
  \nashvilleChords
  c1 d:m f:maj7 g:7 c
}
%