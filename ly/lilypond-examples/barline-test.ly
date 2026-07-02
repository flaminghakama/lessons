\version "2.24.0"

% slightly larger tick bar line (divisio minima)
#(define ((make-custom-tick-bar-line x y) grob extent)
     "Draw a tick bar line."
     (let* ((staff (ly:staff-symbol-staff-space grob))
            (staff-line-thickness (ly:staff-symbol-line-thickness grob))
            (height (interval-end extent)))
         (bar-line::draw-filled-box
          (cons 0 (+ x staff-line-thickness))
          (cons (- height staff x) (+ height staff x))
          staff-line-thickness
          extent
          grob)))

#(add-bar-glyph-print-procedure "'" (make-custom-tick-bar-line 0.1 0.1))

% half bar line (divisio minor)
#(define ((make-custom-half-bar-line x y) grob extent)
     "Draw a half bar line."
     (let* ((half-staff (* 1/2 (ly:staff-symbol-staff-space grob)))
            (staff-line-thickness (ly:staff-symbol-line-thickness grob))
            (height (interval-end extent)))
         (bar-line::draw-filled-box
          (cons 0 (+ x staff-line-thickness))
          (cons (- height (* 7 half-staff) x) (- height half-staff x))
          staff-line-thickness
          extent
          grob)))

#(add-bar-glyph-print-procedure "," (make-custom-half-bar-line 0.1 0.1))

\score {
    \new Staff {
        \new Voice {
            g' g' g' g' \bar "'"
            g' g' g' g' \bar ","
        }
    }
}