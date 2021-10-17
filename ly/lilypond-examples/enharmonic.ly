\version "2.19.83"

melodySharpOne = \relative c' {
  \clef treble
  c8 d ees f g4 r4 
  cis,8 dis e fis gis4 r4 \bar "||"
}
melodyFlatTwo = \relative c' {
  \clef treble
  c8 d ees f g4 r4 
  des8 ees fes ges aes4 r4 \bar "||"
}

harmonySharpOne = \chordmode {
  c1:m7 cis1:m7
}
harmonyFlatTwo = \chordmode {
  c1:m7 des1:m7
}

<<
  \new ChordNames {
    \transpose c c \harmonySharpOne
    \transpose c cis \harmonyFlatTwo
    \transpose c d \harmonyFlatTwo
    \transpose c dis \harmonyFlatTwo
    \transpose c ees \harmonySharpOne
  }
  \new Staff {
    \transpose c c \melodySharpOne
    \transpose c cis \melodyFlatTwo
    \transpose c d \melodyFlatTwo
    \transpose c dis \melodyFlatTwo
    \transpose c ees \melodySharpOne
  }
>>



