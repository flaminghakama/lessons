\version "2.22.2"

%  The problem does not exist with stems down, inside the staff
%  Using Stem.length-fraction since it exists in my score, 
%  and it exaggerates the difference in stem height so the issue is clearer
\relative c''' {
    \override Stem.length-fraction = #(magstep 1.03) 
    r16 g8. 8. 16 ~ 8 8 ~ 16 8. 
}

%  The problem exists when stems are up
\relative c''' {
    \override Stem.length-fraction = #(magstep 1.03) 
    \stemUp
    r16 g8. 8. 16 ~ 8 8 ~ 16 8. 
}

%  This is more like my real-world example, where stems are up because of multiple voices
\relative c''' {
    <<
      {
          \override Stem.length-fraction = #(magstep 1.03) 
          r16 g8. 8. 16 ~ 8 8 ~ 16 8. 
      } \\
      { g,1 }   
    >>
}

% Stem length does not apply to beamed stems
\relative c''' {
    <<
      {
          \override Stem.length-fraction = #(magstep 1.03)
          \override Stem #'length = #10
          r16 g8. 8. 16 ~ 8 8 ~ 16 8. 
      } \\
      { g,1 }   
    >>
}

% I tried a few incantations of the Stem properties 
%     beamed-extreme-minimum-free-lengths
%     beamed-minimum-free-lengths
%     beamed-lengths
% but these yeild errors like: 
% warning: cannot find property type-check for `beamed-extreme-minimum-free-lengths' (backend-type?)
\relative c''' {
    <<
      {
          \override Stem.length-fraction = #(magstep 1.03)
          \override Stem.beamed-extreme-minimum-free-lengths = #'(10 10 10)
          r16 g8. 8. 16 ~ 8 8 ~ 16 8. 
      } \\
      { g,1 }   
    >>
}

\relative c''' {
    <<
      {
          \override Stem.length-fraction = #(magstep 1.03)
          \override Stem.beamed-minimum-free-lengths = #'(10 10 10)
          r16 g8. 8. 16 ~ 8 8 ~ 16 8. 
      } \\
      { g,1 }   
    >>
}

\relative c''' {
    <<
      {
          \override Stem.length-fraction = #(magstep 1.03)
          \override Stem.beamed-lengths = #'(10 10 10)
          r16 g8. 8. 16 ~ 8 8 ~ 16 8. 
      } \\
      { g,1 }   
    >>
}






