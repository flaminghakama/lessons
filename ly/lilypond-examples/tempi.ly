
\version "2.19.83"

rit = \markup {\italic "rit." }
atempo = \markup {\italic "a tempo" }

tempos = {
s2^\atempo
s2^\rit
\once \textLengthOn
s2^\atempo
s2^\rit
}

othertempos = {
\hideNotes{r8^\atempo r r r}
s2^\rit
\hideNotes{r8^\atempo r r r}
s2^\rit
}

notes = \relative c'{
c2. d8 b
c2. g8 b
}

othernotes = \relative c'{
e8 f g a g2 c2 b
}

%solution with textLengthOn

\score {
  <<
  \new Staff <<\tempos \notes >>
  \new Staff {\othernotes}
  >>
}

\score {
\new Staff <<\tempos \notes>>
}

\score {
\new Staff <<\tempos \othernotes>>
}

%solution with hidden rests
\score {
  <<
  \new Staff <<\othertempos \notes >>
  \new Staff {\othernotes}
  >>
}

\score {
\new Staff <<\othertempos \notes>>
}

\score {
\new Staff <<\othertempos \othernotes>>
}

rit = \markup {\italic "rit." }
atempo = \markup {\italic "a tempo" }

tempos = {
  \tempo \atempo
  s2
  \tempo \rit
  s2
  \tempo \atempo
  s2
  \tempo \rit
  s2
}

notes = \relative c'{
  c2. d8 b
  c2. g8 b
}


\score {
  <<
  \new Staff <<\tempos \notes >>
  >>
}

