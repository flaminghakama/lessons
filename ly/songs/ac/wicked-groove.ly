\version "2.19.81"

titleLeft = "Wicked"
titleRight = "Groove"
title = "Wicked Groove"
composerName = "Kopolo"

%{

killPreview ; rm wicked-groove-*.pdf ; lilypond ly/songs/ac/wicked-groove.ly ; for file in wicked-groove-*pdf ; do op $file ; done

killPreview
rm wicked-groove*pdf
lilypond ly/songs/ac/wicked-groove.ly 
mv wicked-groove-*pdf pdf/songs/ac
for file in pdf/songs/ac/wicked-groove-*pdf ; do op $file ; done  

git add . ; git commit -m"renotating" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"
\include "../../../../scores/flaming-libs/flaming-voltas.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

structure = \relative c'' { 
    \tempo 4=120
    \key a \major
    
    \startSection "Quarter Notes"
    \bar "[|:"
    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2
    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2
    \break 

    \startSection "Dotted Quarter Notes"
    \bar ":|][|:" 
    \time 9/8
    s1*9/8*4
    \break 

    \startSection \markup \center-column {
        "Dotted Quarter Notes"
        "Aligned with Kick"
    }
    \bar ":|][|:" 
    \time 9/8
    s1*9/8*4
    \bar ":|]" \break 

}

chordsForm = \chordmode { 

    % "Drum Solo"
    s1*16
    
    % "Add Bass"
    s1*16

    % A
    e1:m7 | s | fs:7/e | s | 
    b1:7.13- | s | ef:7.9+.11+ | s2 f:9 ||
    
    % B
    c1:13 | s | b:7 | s | s | s || f:9 | c:m7.5-/f ||

    % A
    e1:m7 | s | fs:7/e | s | 
    b1:7.13- | s | ef:7.9+.11+ | s2 f:9 ||
        
    % B
    c1:13 | s | b:7 | s | s | s || f:9 | c:m7.5-/f ||

    % A
    e1:m7 | s | fs:7/e | s | 
    b1:7.13- | s | ef:7.9+.11+ | s2 f:9 ||

    % "Coda"
    e1:m | s | s | s ||
}
chordsForFlats = \chordmode { 
    \chordsForm
}

melodyAFiveFour = \relative c'' {

    % 4/4
    r4   a   cs  e8 cs8 ~  |
    % 5/4
    cs8 [ 8 ]  b8 4 e8 ~  | 8 fs  e4  |
    % 4/4
    e8 [ d8 ]  4  4  e8 d ~ |
    % 5/4 
    d8 [ cs ]  b8 4 8 ~  4  r4 |
}
clicksAFiveFour = \relative c''' {
    % 4/4
    a4   4  4  8 8 |
    % 5/4
    r8 a8  r a  r a  r a  a4 |
    % 4/4
    a4  4  4  8 8 |
    % 5/4
    r8 a8  r a  r a  r a  a4 |
}
kickAFiveFour = \relative c' {
    % 4/4
    a4\repeatTie  4 ~ 8 4. |
    % 5/4
    a4. 4. 4. 8 ~ |
    % 4/4
    a4  4 ~ 8 4. |
    % 5/4 
    a4. 4. 4. 8\laissezVibrer|
}

melodyANineEight = \relative c'' {

    r4 a8 ~  8 cs4  e8 cs4  |
    cs8 b8 8 ~ 8 e4  fs8  e4  |

    e8 d8 8 ~  8 4  e8 d4  |
    cs8 b8 8 ~  8 4 ~ 4. |
}
clicksANineEight = \relative c''' {
    % a8 [ r a ]  r [ a r ]  a [ a r ]  |
    % a8 [ r a ]  r [ a r ]  a [ a r ]  |
    % a8 [ r a ]  r [ a r ]  a [ a r ]  |
    % a8 [ r a ]  r [ a r ]  a [ a r ]  |

    a4 a8  r a4  a8 a4  |
    a4 a8  r a4  a8 a4
    a4 a8  r a4  a8 a4  |
    a4 a8  r a4  a8 a4
}
kickANineEight = \relative c' {
    a4\repeatTie 8 ~  4 8 ~  4 8 ~ |
    a4 8 ~  4 8 ~  4 8 ~ |
    a4 8 ~  4 8 ~  4 8 ~ |
    a4 8 ~  4 8 ~  4 8\laissezVibrer|
}

melodyANineEightRealigned = \relative c'' {

    a4 cs8 ~  8 e cs ~  8 8 b | 
    b4 e8 ~  8 fs e  ~ 8 8 d | 

    d4 8 ~  8 e d ~  8 cs b  |
    b8 4  4. r |
}
clicksANineEightRealigned = \relative c''' {
    % a8 [ r a ]  r [ a a ]  r [ a r ] |
    % a8 [ r a ]  r [ a a ]  r [ a r ] |
    % a8 [ r a ]  r [ a a ]  r [ a r ] |
    % a8 [ r a ]  r [ a a ]  r [ a r ] |

    a4 8  r [ a a ]  r8 a4 |
    a4 8  r [ a a ]  r8 a4 |
    a4 8  r [ a a ]  r8 a4 |
    a4 8  r [ a a ]  r8 a4 |

}
kickANineEightRealigned = \relative c' {
    a4. 4. 4. | 
    a4. 4. 4. | 
    a4. 4. 4. | 
    a4. 4. 4. | 
}



melodyB = \relative c''' {
}

melody = {
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            % \new ChordNames \transpose e e { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsForm
            % }
            \new Staff = "lead" \with {
                instrumentName = "Clicks"
            } \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \clicksAFiveFour
                        \clicksANineEight
                        \clicksANineEightRealigned
                    }
                >>
            }
            \new Staff \with { 
                instrumentName = "Melody"
            } \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \melodyAFiveFour
                        \melodyANineEight
                        \melodyANineEightRealigned
                    }
                >>
            }
            \new Staff \with { 
                instrumentName = "Kick"
            } \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \kickAFiveFour
                        \kickANineEight
                        \kickANineEightRealigned
                    }
                >>
            }
        >>
    }
}
