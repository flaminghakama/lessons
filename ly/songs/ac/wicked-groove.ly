\version "2.19.81"

titleLeft = "Wicked"
titleRight = "Groove"
title = "Wicked Groove"
composerName = "Orchéstre Baka de Gbiné"

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

    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \bar "||"

    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \break 

    \startSectionWithLabel "A" "2X"
    \bar "[|:"
    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \bar "||"

    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \break

    \startSectionWithLabel "B" "Melody"
    \bar ":|][|:"
    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \bar "||"

    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1


    \bar "||"
    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \bar "||"

    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \break 

    \startSectionWithLabel "C" "Chorus"
    \bar ":|][|:"
    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \bar "||"

    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1

    \bar "||"
    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \bar "||"

    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \bar ":|]"
}

chordsCell = \chordmode { 
    a1*5/4 | e1 |
    d1*5/4 | e1 | 
}

chordsForm = \chordmode { 
    s1*5/4 | s1 |
    s1*5/4 | s1 |

    % "A" "4X"
    \chordsCell

    % "B" "Melody"
    \chordsCell

    % "C" "Chorus"
    \chordsCell
    \chordsCell

}
chordsForFlats = \chordmode { 
    \chordsForm
}

bassANineFour = \relative c'' {
    <>^\markup \bold "Bass"
    r4 a4  cs a8 e' r e,8 ~ | 8 gs8 ~ 8 [ e ~ ] 8 gs e'4-. |
    fs,4 d  e d8 d' r8 e,8 ~ | 8 gs8 ~ 8 [ e ~ ] 8 gs e'4-. | 
}

melodyBNineFour = \relative c'' {
    % 5/4
    r4   a   cs  e8 [ cs8 ] r cs |
    % 4/4
    b8  4 e8 ~  8 fs  e4-.  |
    % 5/4
    e8 d8   4  4  e8 d r cs |
    % 4/4
    b8  4 8 ~  2 |


    r4   a   cs  e8 [ cs8 ] r cs |
    % 4/4
    b8  4 e8 ~  8 fs  e4-.  |
    % 5/4
    e8 d8   4  4  e8 d r cs |
    % 4/4
    b8  4 8 ~  4 a8 b |
}
melodyCNineFour = \relative c'' {
    % 5/4
    cs2. r2 | 
    % 4/4
    r8 b4 8 ~ 8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r2 |
    % 4/4
    r8 b4  8 ~  8 a8 b4 |

    % 5/4
    cs1 r4 | 
    % 4/4
    r8 b4 8 ~  8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r2 | 
    % 4/4
    r8 b4  8 ~  8 a8 b4 |

}
clicksNineFour = \relative c'' {
    % 5/4
    e4   4  4  8 8  r e |
    % 4/4
    r8 e  r e  r e  e4 |
}
kickNineFour = \relative c' {
    % 5/4
    r4 d4  r8 4. 4 |
    % 4/4
    r8 4. 4. 8 |
}
kickNineFourForFlats = \relative c' {
    % 5/4
    r4 ds4  r8 4. 4 |
    % 4/4
    r8 ds4. 4. 8 |
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
  \bookOutputSuffix "lead-sheet-for-C"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(Kopolo)"
    }
    \score {
        \transpose c bf, <<
            % \new ChordNames \transpose e e { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsForm
            % }
            \new Staff \with { 
                % instrumentName = "Melody"
            } \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \bassANineFour
                        \transpose bf, c << 
                            {
                                \clicksNineFour
                                \clicksNineFour
                            } \\ {
                                \kickNineFour
                                \kickNineFour
                            }
                        >>
                        \melodyBNineFour
                        \melodyCNineFour
                    }
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "lead-sheet-for-Bb"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Kopolo)"
    }
    \score {
        <<
            % \new ChordNames \transpose e e { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsForm
            % }
            \new Staff \with { 
                % instrumentName = "Melody"
            } \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \bassANineFour
                        \transpose bf bf << 
                            {
                                \clicksNineFour
                                \clicksNineFour
                            } \\ {
                                \kickNineFour
                                \kickNineFour
                            }
                        >>
                        \melodyBNineFour
                        \melodyCNineFour
                    }
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "lead-sheet-for-Eb"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Kopolo)"
    }
    \score {
        \transpose ef bf, <<
            % \new ChordNames \transpose e e { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsForm
            % }
            \new Staff \with { 
                % instrumentName = "Melody"
            } \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    { 
                        \transpose bf, bf \bassANineFour
                        \transpose bf, ef << 
                            {
                                \clicksNineFour
                                \clicksNineFour
                            } \\ {
                                \kickNineFourForFlats
                                \kickNineFourForFlats
                            }
                        >>


                        \melodyBNineFour
                        \melodyCNineFour
                    }
                >>
            }
        >>
    }
}
