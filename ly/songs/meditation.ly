\version "2.19.81"

titleLeft = "Medi"
titleRight = "tation"
title = "Meditation"
composerName = "A. C. Jobim"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

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

\include "ly/ily/layout.ily"

strcture = \relative c' { 
    \key c \major
    \startSection "Intro"
    s1*4 \break
    s1*4 \break
    \startSection "A1"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \bar "||" \break
    \startSection "A2"
    s1*4 \break
    s1*4 \break
    s1*4 
    \pageBreak
    
    s1*4 \bar "||" \break
    \startSection "B"
    s1*4 \break
    s1*4 \bar "||" \break
    \startSection "A3"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s1 s s s
    d1:m7 g:7 c1:6 g:aug7

    c1:6 s b:1.4.5.7 b:7
    c1:6 s a:7 s 
    d1:m7 s bf:7 s 
    e1:m7 a:7.9- d:m7 g:7
        
    c1:6 s b:1.4.5.7 b:7
    c1:6 s a:7 s 
    d1:m7 s bf:7 s 
    e1:m7 a:7.9- d:m7 g:7

    f1:maj7 s bf:7 s 
    e1:m7 ef:dim7 d:m7 g:7

    c1:6 s b:1.4.5.7 b:7
    c1:6 s a:7 s 
    d1:m7 s bf:7 s 
    bf2:7 a:7.9- | af:7 g:7.9- | c1:6 | d2:m7 g:7 ||
    
}

introMelody = \transpose b e \relative c'' {
     r2 \tuplet 3/2 { r4 e fs } | g8 gf4 e8 ~ 4 ef8 d ~ | 
     d4. e8 f e d4 ~ | 2. r4 | 

     r4 c8 d \tuplet 3/2 { ef4 d c ~ } | 2 ~ 8 d4. |
     b1 | R1 | 
}

interludeMelody = \relative c'' {
     r4 r8 e fs4 g8 gf ~ | 8 e4. ~ 4 ef8 d ~ | 
     d2. e8 f ~ | 8 e d2. |

     r8 d16 df \tuplet 3/2 { c8 d ef ~ } 4 ~ | 2 ~ 8 d c d |
     b1 | R1 | 
}

melody = \relative c'' { 
    % A1
    r4 r8 a8 ~ 2 ~ | 2. g8 b ~ | 
    8 bf a2. ~ | 4 r4 r4 fs8 g ~ | 
    
    g8 a4 16 16 a8 4 16 16 ~ | 8 4. ~ 4 r | 
    r4 g8 b8 ~ 4 g8 a ~ | 4 bf8 a ~ 2 | 

    r2 f2 ~ | 2 ~ 8 e4 g8 ~ | 
    g8 gf f2. ~ | 4 r4 r r8 g8 ~ | 

    g8 8 e4 ~ 8 4 8 ~ | 16 ds8 e16 ~ 8 f ~ 8 r e f ~ |
    8 g8 ~ 16 8. ~ 16 8. ~ 8  8  ~ | 8 fs16 g ~ 8 a8 ~ 4 r4 | 

    % A2
    R1 | a2. g4 |
    b4 bf8 a ~ 2  ~| 2 r4 r8 fs8 ~ | 

    fs8 g4 a8 ~ 8 8 8 8 ~ | 8 8 8 8 ~ 8 8 r a8 | 
    b4 g8 a b8 g8 a4 ~ | 2. r4 |


    R1 | f2. e8 g8 ~ | 
    g8 gf f2. ~ | 4 r4 r r8 c8 | 

    ds8 e4 8  4.  8 ~ | 8 8 f4 ~ 4 e8 f ~ |
    8 g8 ~  8. 16  16 g8. ~ 8. fs16 ~ | 8 g a2.|  


    % B
    R1 | c2. b8 d ~  | 8 df8 c2. ~ | 2 r4 b4 | 

    d4. df8  c b4 d8 ~ | d4 df8 c ~ 4. b8 | 
    a2. r4 | r2 r4 r8 a8 ~ | 


    % A3
    a1 ~ | 2. g4 |
    b2 bf4 a ~ | 2 r4 r8 fs8 ~ |

    fs8 g a4 ~ 8 4 8 | 8. 16 4 2 | 
    r2 r8 b8 4 ~ | 8 g a b ~ 8 a4. ~ |

    a2 r  | r4 r8 f8 ~ 4 e8 g ~ | 
    g8 gf4 f8 ~ 2 ~ | 4 r4 r8 g4 8 | 

    e4. 8  \tuplet 3/2 { f4 4 8 8 ~ } | f8 d4. 8 e4 8 ~ | 
    e8 4 8 ~ 8 4 8 | c1 |   
}

melodyForm = \relative c' { 
    \introMelody
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    puh puh pa -- ya -- da ya -- da
    puh pa -- ya -- dah
    puh puh pa -- ya -- da ya -- da
    
    Quem a -- cre -- di -- tou
    No am -- o -- r, no sor -- ri -- so, na flor
    En -- tão son -- hou, son -- hou
    E per -- deu a paz
    O am -- or, sor -- riso e a flor
    Se trans -- for -- mam de -- pres -- sa de -- mais

    Quem, no co -- ra -- ção
    A -- bri -- gou a tri -- ste -- za de ve -- r
    Tu -- do isto se pe -- r -- der
    E, na so -- li -- dão
    Pro -- curou um ca -- minho e se -- guiu
    Já de -- scren -- te de um dia fe -- liz

    Quem cho -- rou, cho -- rou
    E tan -- to que seu pran -- to já se -- cou

    Quem de -- pois vol -- tou
    Ao a -- mor, ao sor -- riso e à flor
    En -- tão tudo en -- con -- trou
    Pois a pró -- pria dor
    Re -- ve -- lou ca -- min -- ho do a -- mor
    E a tri -- ste -- za a -- ca -- bou

}


\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "original"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose a e  { \chordsForm }
            \new Staff = "voice" \transpose a e { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "original-for-Eb"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose a e  { \chordsForm }
            \new Staff = "voice" \transpose a e { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

% \book {
%   \bookOutputSuffix "for-C"
%     \header {
%         subtitle = ""
%         poet = "Real Book Key"
%     }
%     \score {
%         <<
%             \new ChordNames \transpose c c  { \chordsForm }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \strcture
%                     \melodyForm
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%             % \new Lyrics \with { alignAboveContext = "staff" } {
%             %     \lyricsto "lead" { \lyricsHeadTwo } 
%             % }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "for-Eb"
%     \header {
%         subtitle = ""
%         arranger = ""
%     }
%     \score {
%         <<
%             \new ChordNames \transpose ef c  { \chordsForm }
%             \new Staff = "voice" \transpose ef, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \strcture
%                     \melodyForm
%                 >>
%             }
%         >>
%     }
% }
