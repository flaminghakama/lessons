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

    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2

    \bar "||"
    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2
    \break 

    \startSectionWithLabel "A" "4X"
    \bar "[|:"
    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2 \break

    \startSectionWithLabel "B" "Melody"
    \bar ":|][|:"
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

    \startSectionWithLabel "C" "Chorus"
    \bar ":|][|:"
    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2

    \bar "||"
    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2 \break

    \bar "||"
    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2

    \bar "||"
    \time 4/4
    s1
    \time 3/4
    s2.
    \time 2/4
    s2

    \bar ":|]"
}

chordsForm = \chordmode { 

}
chordsForFlats = \chordmode { 
    \chordsForm
}

bassANineFour = \relative c'' {
    <>^\markup \bold "Bass"
    r4 a4  cs a8 e' | r8 e,4 gs8 ~ 8 [ e ~ ] | 8 gs e'4-. |
    fs,4 d  e d8 d' | r8 e,4 gs8 ~ 8 [ e ~ ] | 8 gs e'4-. | 
}

melodyBNineFour = \relative c'' {
    % 4/4
    r4   a   cs  e8 cs8 |
    % 3/4 + 2/4
    \autoBeamOff r8 cs  b8 \autoBeamOn 4 e8 ~  | 8 fs  e4-.  |
    % 4/4
    e8 [ d8 ]  4  4  e8 d |
    % 3/4 + 2/4
    \autoBeamOff r8 cs  b8 \autoBeamOn 4 8 ~  | 2 |
}
melodyCNineFour = \relative c'' {
    % 4/4
    cs4 a2 r4 | 
    % 3/4 + 2/4
    r4 r8 b4 8 ~ | 8 a8 b4 | 

    % 4/4
    a8 fs ~ 2. | 
    % 3/4 + 2/4
    r4 r8 b4  8 ~ | 8 a8 b4 |

    % 4/4
    cs1 | 
    % 3/4 + 2/4
    r4 r8 b4 8 ~ | 8 a8 b4 | 

    % 4/4
    a8 fs ~ 2. | 
    % 3/4 + 2/4
    r4 r8 b4  8 ~ | 8 a8 b4 |

}
clicksNineFour = \relative c'' {
    % 4/4
    e4   4  4  8 8 |
    % 3/4 + 2/4
    r8 e8  r e  r e  r e  e4 |
}
kickNineFour = \relative c' {
    % 4/4
    r4 d4  r8 4. |
    % 5/4
    d4. 4. 4. 8 |
}
kickNineFourForFlats = \relative c' {
    % 4/4
    r4 ds4  r8 4. |
    % 5/4
    ds4. 4. 4. 8 |
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
                            \clicksNineFour \\
                            \kickNineFour
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
  \bookOutputSuffix "for-Bb"
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
                        << 
                            \clicksNineFour \\
                            \kickNineFour
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
  \bookOutputSuffix "for-Eb"
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
                            \clicksNineFour \\
                            \kickNineFourForFlats
                        >>
                        \melodyBNineFour
                        \melodyCNineFour
                    }
                >>
            }
        >>
    }
}
