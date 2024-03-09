\version "2.24.0"

titleLeft = "Ganesh"
titleRight = "Dancing"
titleFull = "Ganesh Dancing"
composerName = "Dr Clock"
arranger = "renotated by Elaine Paul"
copyright = ""

%{

killPreview ; rm ganesh-dancing*pdf ;  lilypond ly/songs/ac/ganesh-dancing.ly  ; for file in ganesh-dancing*.pdf ; do op $file ; done  

killPreview
rm ganesh-dancing*pdf
lilypond ly/songs/ac/ganesh-dancing.ly
mv ganesh-dancing*.pdf pdf/songs/ac
for file in pdf/songs/ac/ganesh-dancing*.pdf ; do op $file ; done  

git add . ; git commit -m"adding alto part" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"


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
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \key f \minor
    \tempo 4=120
    \time 12/8

    s1.*4 
    \bar "S"    
    s1.*2 

    \startSection "A"    
    s1.*8

    \startSection "B"
    s1.*13

    \pageBreak

    \startSection "C"
    s1.*4

    \startSection "D"
    s1.*6 s2. <>_\markup \huge \bold "Fine" s2.

    \startSection "E"
    s1.*5 
    s2. <>_\markup \huge \bold "D.S al Fine" s2.

    \bar "|."
}

breaksAndMarksForAlto = \relative c'' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -8 . 2 )
    s1.*4 \break
    s1.*2

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"    
    s1.*4 \break
    s1.*4 

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
    s1.*13

    \override Score.RehearsalMark.extra-offset = #'( -2 . 2 )
    % "C"
    s1.*4

    \override Score.RehearsalMark.extra-offset = #'( -2 . 2 )
    % "D"
    s1.*7

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "E"
    s1*6
}


chordsForm = \chordmode { 
}

altoIntro = \relative c'' {
    R1. | c4.\mp  r8 g bf  g'4.  r8 g f | 
    c4.\< r8 g bf  g'4.  r8 g f | c4. r8 g bf  g'4.  r8 g f\xf |  
    g1.\f ~ | 2.\< c8\xff r8 r r4. |
}
altoA = \relative c'' {
    R1.*2 | 

    e2.\p \< df | e df2.*5/6 \xf s8 | 

    g16->\f g g g g-> r  g-> g g g g r  g-> g g g g-> r  g-> g g g g r | 
    g16-> g g g g-> r  g-> g g g g r  g-> g g g g-> r  g-> g g g g r | 

    g'16-> g g g g-> r  g-> g g g g r  g-> g g g g-> r  g-> g g g g r | 
    g16-> g g g g-> r  g-> g g g g r  g-> g g g g-> r  g4\ff r8 ||
}
altoB = \relative c'' { 
    c4\f r8  e4 r8  df4 r8  c4 r8 | c4 r8  e4 r8  c4 r8  r4. |
    g8 8 f  g r r  af g f  e r r | g af f  af bf df  g, af f  e4 f8 | 
    r8 f f  f r r  c'4 r8  f,4 df'8 | r f, f  f r r  c'4 r8  df4 c8 | 
    r8 f, f  f r r  c'4 r8  f,4 r8 | r f f  f r r  c4 df8 ~  4 ef8 | 
    <>\xp r2. r4. g\f | c'1. | 
    g1.\startTrillSpan | e1.\stopTrillSpan \startTrillSpan | 
    df8. \stopTrillSpan e16 f8  e f e  g8. af16 bf8  c4. |  
}

altoC = \relative c'' {
    <>\xp R1.*2 | 

    c16 [ c' r ef r df ]  c [ r ef r df c ]  r [ df r ef r df ]  c [ r bf r af bf ] |
    c,16 [ c' r ef r df ]  c [ r ef r df c ]  r [ df r ef r df ]  c [ r bf r af bf ] |
}

altoD = \relative c'' {
    c8 c g  c r r  c c g  c r r | c8 c g  c r r  c df bf  c r r | 
    c8 c g  c r r  c c g  c r r | c c g  c r r  c df bf  c r r | 

    c8 c'4->\f  bf,8-> bf'4->  c,8 c'4->  bf,8-> bf'4-> | 
    g16 bf af g f' e  df c e df c bf  df c bf c bf af  bf af g af g f | 

    e2. \glissando c'8 r r r4. ||
}

altoE = \relative c'' {
    c8 df e  f g af  bf b c  df e c | e f g  af, bf g  f e df  c4. ~ | 
    c8 r r  r4. r g8 af b | c16 e c e c e  f4 f'8  r4. f16 df c bf af g |
    r2. df8 bf df  b c b | c4. ~ 8 r r r2. ||
}

alto = {
    \altoIntro
    \altoA
    \altoB
    \altoC
    \altoD
    \altoE
}


\book {
  \bookOutputSuffix "alto-sax-in-Eb"
    \header {
        title = \title
        composer = \markup \italic { \composerName }
        arranger = \markup \italic { \arranger }
        poet = "Eb Alto Saxophone"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        <<
            % \new ChordNames \transpose e e { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsForm
            % }
            \new Staff \with { 
                % instrumentName = "Melody"
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \transpose c c \structure
                    \breaksAndMarksForAlto
                    {
                        \alto
                    }
                >>
            }
        >>
    }
}

