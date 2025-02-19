\defineBarLine ":|][|:" #'(":|]" "[|:" " .|.")

endLine = \break
voltaStartBar = \bar "[|:"
voltaBothBar = \bar ":|][|:"
voltaEndBar = \bar ":|]"

boxMark =
#(define-music-function
 (parser location mark)
 (markup?)
 #{
 \mark \markup { \box #mark }
 #})

\header {
  title = "Demo"
}

\paper {
  indent = 0\mm
}

\score {
  <<
    \new Voice="Voice" {
      \key c \major
      \time 4/4
      \numericTimeSignature

      \boxMark "A"
      \voltaStartBar
      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r2 |
      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r2 | \endLine

      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r4 r8 g'8~ |
      g'1~ |
      g'2 r2 | \voltaBothBar \endLine

      \boxMark "B"
      b'2 c''2 |
      d''2 c''2 |
      b'2 c''2 |
      d''2 c''2 | \endLine

      b'2 c''2 |
      e''2 b'2 |
      c''1~ |
      c''2 r2 |
      \voltaEndBar \endLine

      \boxMark "A"
      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r2 |
      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r2 | \endLine

      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r4 r8 g'8~ |
      g'1~ |
      g'2 r2 | \endLine
    }
  >>
}
