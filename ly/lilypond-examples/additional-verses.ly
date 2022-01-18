\version "2.19.83"

\header{
  title = "Hello World"
}

\score {
  \relative {
    \time 2/4
    \clef treble
    \key a \major
    cis''2 | a4 fis \bar "|."
  }
  \addlyrics { 
    He -- | llo world
  }
  \addlyrics { 
    How | are you?
  }
  \layout { }
  \midi { }
}
