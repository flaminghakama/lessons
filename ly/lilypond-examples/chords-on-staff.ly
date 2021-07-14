\version "2.19.81"

% \layout {
%     \context {
%         \Staff
%             \accepts ChordNames 
%             \override ChordName.Y-offset = #self-alignment-interface::y-aligned-on-self 
%             \override ChordName.self-alignment-Y = #CENTER
%     }
% }

melodyHead = \relative c'' { c1 d e f }
melodyFours = \relative c'' { g8 a r g r a r4 | b8 8 r4 r2 | g8 a r g r a r4 | bes8 8 r4 r2 }
headChords = \chordmode {
    c1:maj7 | b2:m7.5- e:7 | a:m7 d:7 | g:m7 c:7 | 
}
foursChords = \chordmode {
    c1:maj7 | b2:m7.5- e:7 | a:m7 d:7 | g:m7 c:7 | 
}

chordsOnStaff = \with {
   \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
   #'((basic-distance . 0) 
      (minimum-distance . 0)
      (padding . -inf.0) 
      (stretchability . 0))
   \override ChordName.extra-offset = #'(0 . -1)
}

\book {
    \score {
        \new StaffGroup <<
            \new Staff \melodyHead
            \new ChordNames \with \chordsOnStaff { \headChords }
            \new Staff s1*4
        >>
    }
    \score {
        <<
            \new ChordNames  { \foursChords }
            \new Staff \melodyFours
        >>
    }
}
