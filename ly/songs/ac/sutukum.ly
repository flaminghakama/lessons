\version "2.24.0"

titleLeft = "Sutukum"
titleRight = ""
titleFull = "Sutukum "
composerName = "transcribed by AC"
arranger = "renotated by Elaine Paul"
copyright = ""

%{

killPreview ; rm sutukum*pdf ;  lilypond ly/songs/ac/sutukum.ly  ; for file in sutukum*.pdf ; do op $file ; done  

killPreview
rm sutukum*pdf
lilypond ly/songs/ac/sutukum.ly
mv sutukum*.pdf pdf/songs/ac
for file in pdf/songs/ac/sutukum*.pdf ; do op $file ; done  

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
    \key a \major


    \once \override Score.MetronomeMark.extra-offset = #'( -8 . 1 )
    \tempo 4=120
    \time 4/4

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    \override Score.RehearsalMark.extra-offset = #'( 2 . -2 )
    \startSection "Intro"
    \partial 4 
    s4 
    s1*9
    
    \override Score.RehearsalMark.extra-offset = #'( -4 . 0.4 )
    \startSection "A"
    s1*4

    \startSection "B"
    s1*7

    \startSection "C"
    s1*3

    \startSection "D"
    s1*10


    \startSection "C1"
    s1*3

    \startSection "D1"
    \bar "[|:"
    s1*4

    \startSectionWithLabel "A1" "guitar solo"
    \bar ":|][|:"
    s1*4

    \startSectionWithLabel "E" "Tenor solo"
    \bar ":|][|:"
    s1*4

    \startSection "F"
    \bar ":|]"
    s1*5

    \startSection "C2"
    s1*3
    
    \startSection "D2"
    s1*4

    \startSection "G" 
    s1*2
    \startSectionWithLabel "" "Vamp until cue"
    \bar "[|:"
    s1*2 

    \startSection "H"
    \bar ":|]"
    s1*4

    \startSectionWithLabel "" "Alto Solo"
    \bar "[|:"
    s1*2

    \startSectionWithLabel "" "Alto cue"
    \bar ":|]"
    s1*4

    \startSectionWithLabel "A2" "both horns solo"
    \bar "[|:"
    s1*2

    \startSectionWithLabel "" "On cue"
    \bar ":|]"
    s1*2

    \startSection "Ending"
    s1*13
    \bar "|."
}

breaksAndMarksForAlto = \relative c'' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -8 . 1 )
    \override Score.RehearsalMark.extra-offset = #'( 2 . -2 )
    % "Intro"
    s4 
    s1*9 \break
    
    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "A"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "B"
    s1*7 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 0 )
    % "C"
    s1*3 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "D"
    s1*7 
    \pageBreak
    s1*3 

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "C1"
    s1*3

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "D1"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % guitar solo"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "Tenor solo"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "F"
    s1*5

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "C2"
    s1*3 \break
    
    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "D2"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "G" 
    s1*2
    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "Vamp until cue"
    s1*2 

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "H"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Alto Solo"
    s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Alto cue"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . 1 )
    % "A2" "both horns solo"
    s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( 1 . 2 )
    % "On cue"
    s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( -6 . 2 )
    % "Ending"
    s1*13
}

breaksAndMarksForTenor = \relative c'' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -8 . 1 )
    \override Score.RehearsalMark.extra-offset = #'( 2 . -2 )
    % "Intro"
    s4 
    s1*9 \break
    
    \override Score.RehearsalMark.extra-offset = #'( -4 . 2 )
    % "A"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 2 )
    % "B"
    s1*7 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 0 )
    % "C"
    s1*3 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 0 )
    % "D"
    s1*10 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -1 )
    % "C1"
    s1*3

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "D1"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % guitar solo"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "Tenor solo"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 2 )
    % "F"
    s1*5

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "C2"
    s1*3 \break
    
    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "D2"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 2 )
    % "G" 
    s1*2
    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "Vamp until cue"
    s1*2 

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "H"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Alto Solo"
    s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "Alto cue"
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % " "both horns solo"
    s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 2 )
    % "On cue"
    s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( -6 . 2 )
    % "Ending"
    s1*13
}

chordsForm = \chordmode { 
}

guitarIntro = \relative c''' {
    a16 gs fs e ||
    d16 cs8 b16 ~  16 cs8 d16  e4  a16 gs fs e |
    d16 cs8 b16 ~  16 cs8 e16  a,4  a'16 gs fs e |
    d16 cs8 b16 ~  16 cs8 d16  e4  a16 gs fs e |
    d16 cs8 b16 ~  16 cs8 e16  a,4  8 b |

    cs8. 16 ~ 16 d8 fs16  e4  a16 gs fs e |
    d16 cs8 b16 ~  16 cs8 e16  a,4  8 b |
    cs8. 16 ~ 16 d8 fs16  e4  a16 gs fs e |
    d16 cs8 b16 ~  16 cs8 e16  a,4  r8 \grace { e'8 ( d } cs16 ) b | 

    a8. gs16  r fs [ gs a 
        % laissezVibrer 
        ]
}
tenorIntro = \relative c' {
    r4 ||
    R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | 
    r2
}

tenorAMelody = \relative c' {
    r8 fs gs [ as ] || 
    ds,8. cs16 ~ 8 ds ~ 8 fs gs as |
    ds,8. cs16 ~ 8 ds ~ 8 fs gs as |
    ds,8. cs16 ~ 8 ds ~ 8 fs gs as |
    ds,8. cs16 ~ 4
}
tenorA = {
    \tenorAMelody
    r2 
}

altoAMelody = \relative c'' {
    r8 as b [ cs ] || 
    fs,8. es16 ~ 8 fs ~ 8 as b cs |
    fs,8. es16 ~ 8 fs ~ 8 as b cs |
    fs,8. es16 ~ 8 fs ~ 8 as b cs |
    fs,8. es16 ~ 4
}

tenorB = \relative c'' {
    <ds b>8. <cs as>16 ~ 16 b <cs as>8 <ds b>2 | R1*3 |

    <ds b>8. <cs as>16 ~ 16 b <cs as>8 <ds b>2 | R1 |
    ds16 8.  e8 fs16 16  4  
}
altoB = \relative c'' {
    fs8 as  cs16 b8 gs16 || 
    as2 r | R1*2 | r2  fs8 as  cs16 b8 cs16 |
    as2 r | R1 | as16 8.  b8 cs16 16  4
}


tenorC = \relative c''' {
    b16-> 8-> 16-> ||
    b8-> fs16-> gs ~  16 16 fs8  r4  b,8 16 16 |
    b8 as16 b  r8 b8 8 as  gs16 as8 gs16 | 
    fs8 gs16 e ~  16 fs e fs  fs8 8 gs as | 
}
altoC = \relative c''' {
    ds16-> 8-> 16-> ||
    cs8-> 16-> b ~  16 16 as8 ~  8 r  ds,8 16 16 |
    cs8 16 b  r8 ds8  8 cs  b16 cs8 b16 | 
    as8 b16 gs ~  16 b gs as  as4  
}


tenorD = \relative c'' {
    b8 16 as ~  16 as b16 16  <ds b>8 ds  fs16 e8 16 | 
    ds8 16 cs ~  16 16 ds16 16 ~  4  r  |
    r2  b4  <fs' ds>16 <e cs>8 16 |
    <ds b>8 16 <cs as> ~  16 16 <ds b>16 16  4  r  |
    
    r2  r8 ds  fs16 e8 16 |
    ds8 16 cs ~  16 16 ds16 16  4  r | 
    r4  r8 ds ~  8 8  fs16 e8 16 |
    ds8 16 cs ~  16 <cs fs,> <ds b> b  <ds b>4  r |

    r2  ds4  r |    
    ds16 8.  e8 fs16 16  4   
}
altoD = \relative c'' {
    fs16 as8 fs16  es es fs16 16  2 | r2 r4 r8 cs16 16 |
    b16 8 gs16  b b as16 16  4 r | r2 r4 r8 cs16 16 |
    b16 8 gs16  b b as16 16  4 r | r2 r4 r8 cs16 16 |
    b16 8 gs16  b b as16 16  4 r | r2 r4 r8 cs16 16 |
    b16 8 gs16  b b as16 16  4 r | as16 8.  b8 cs16 16  4
}


tenorCOne = \relative c''' {
    b16-> 8-> 16-> ||
    b8-> fs16-> gs ~  16 16 fs8  r4  b,8 16 16 |
    b8 as16 b  r8 b8 8 as  gs16 as8 gs16 | 
    fs8 gs16 e ~  16 fs e fs  fs8 8  r4 | 
}
altoCOne = \altoC

tenorDOne = \relative c'' {
    r2  r8 ds  fs16 e8 16 | 
    ds8 16 cs ~  16 16 ds16 16  r2 | 
    <ds b>8. <cs as>16 ~  16 b <cs as>8  <ds b>2 |
    r2  
}
altoDOne = \relative c' {
    ds8 es ||
    fs8 16 es ~  es16 16 fs16 16  fs4  r | r2  fs'8 as  cs16 b8 gs16 |
    as2  r | r
}

tenorAOne = { 
    \tenorAMelody
}

altoAOne = \relative c' {
    \altoAMelody
    fs2 
}

tenorE = \relative c'' {
    r4 <>^\markup"Play to cue F" \tuplet 3/2 4 { r8 fs fs || 
    fs e e  e ds ds } 2 |
    r2 r4 \tuplet 3/2 4 { r8 fs fs | 
    fs e e  e ds ds } ds8 cs4 8 |
    \tuplet 3/2 4 { fs8 fs e  e e ds } ds4 r8. e16 ||
}
altoE = \relative c'' {
    r4  r8 fs16 16  8-. as-.  r4 | r  r8 fs16 16  8-. as-.  r4 | 
    r4  r8 fs16 16  8-. as-.  r4 | r  r8 fs16 16  8-. as-.   
}

tenorF = \relative c'' {
    e8 16 ds ~  16 cs ds cs ~ 4  r8. e16 | 
    e8 16 ds ~  16 cs ds b ~  8 fs'16 16  16 e8 ds16 |
    cs4  e16 ds8 cs16  b4  ds16 cs8 b16 | 
    gs8. as16 ~  8 b8  2 | 
    r2  r4 
}
altoF = \relative c'' {
    r8. b16 |
    b8 16 as ~  16 gs as gs ~  4   r8. ds''16 |
    ds16 [ r ds cs ~ ]  16 b cs as ~  8 cs16 16  16 b8 as16 |
    gs4  b16 as8 gs16  fs4  as16 gs8 fs16 |
    ds8. es16 ~  8 fs8  2 |
    as,16 8 16  b8 cs16 16 ~ 8 r 
}

tenorCTwo = \relative c''' {
    b16-> 8-> 16-> ||
    b8-> fs16-> gs ~  16 16 fs8  r4  b,8 16 16 |
    b8 as16 b  r8 b8 8 as  gs16 as8 gs16 | 
    fs8 gs16 e ~  16 fs e fs  fs8 8 gs as | 
}
altoCTwo = \relative c'' {
    \altoC
    r8 cs16 16 
}


tenorDTwo = \relative c'' {
    b8 16 as ~  16 as b16 16  b8 ds  fs16 e8 16 | 
    ds8 16 cs ~  16 16 ds16 16 ~  4  r  |
    r2  b4  <fs' ds>16 <e cs>8 16 |
    <ds b>8 16 <cs as> ~  16 16 <ds b>16 16  4  r  |
}    
altoDTwo = \relative c'' {
    b16 8 gs16  b b as16 16  4  fs | r2 r4 r8 cs'16 16 |
    b16 8 gs16  b b as16 16  4  fs | r2 r4 r8 cs'16 16 |
}    

tenorG = \relative c'' {
    R1*2  | 
    \tuplet 6/4 4 { 
        b16 as gs  b as gs  b as gs  b as gs  
        b16 as gs  b as gs  b as gs  b as gs  
        b'16 as gs  b as gs  b as gs  b as gs  
        b16 as gs  b as gs  b as gs  b as gs  
    } |
}
altoG = \relative c'' {
    b16 8 gs16  b b as16 16  4  fs | R1*2 |
    \tuplet 6/4 4 { 
        fs16 es ds  fs es ds  fs es ds  fs es ds  
        fs'16 es ds  fs es ds  fs es ds  fs es ds  
    } |
}

tenorHLick = \relative c'' {
    cs16 [ 16 r gs ]  cs16 [ 16 r gs ]  cs8 ds e fs 
    b,16 [ 16 r fs ]  b16 [ 16 r fs ]  b8 cs ds e
}
tenorH = \relative c'' {
    \tenorHLick
    \tenorHLick
    \tenorHLick
    \tenorHLick
    b16 [ 16 r fs ]  b16 [ 16 r fs ]  b8 cs ds e |
    b16 [ r8 fs16 ]  r8 b16 16  r2 | 
}
altoH = \relative c''' { 
    \transpose ef bf \tenorHLick
    \transpose ef bf \tenorHLick
    \comp #8
    cs16 16 16 ds  b b b cs  as as as b  gs gs gs as |
    fs8 es ~  \tuplet 3/2 { es8 ds es }  fs4  r16 fs es ds |
    cs16 b as gs  r [ as r cs ]  fs,4 r |
    fs'8 [ r16 cs ]  r8 fs16 16   r2 ||
}


tenorIPickupLick = \relative c'' {
    r16 e [ r e ]  r e8.  r16 ds [ r ds ]  r ds8. |
    r16 cs [ r cs ]  r b [ as8 ]  b4  r |
}
tenorATwo = \relative c'' {
    \comp #8
    \tenorIPickupLick
}

altoIPickupLick = \relative c'' {
    r16 fs [ r fs ]  r fs8.  r16 fs [ r fs ]  r fs8. |
    r16 es [ r es ]  r ds [ es8 ]  fs4  r |
}
altoATwo = \relative c'' {
    \comp #8
    \altoIPickupLick
}

tenorILick = \relative c''' {
    gs16 [ fs r gs ~ ]  8 r  fs16 [ e r fs ~ ]  8 r |
    e16 [ ds r e ]  r e [ ds cs ]  ds ds e fs ~  8 r |
}
tenorI = \relative c''' {
    \tenorILick
    \tenorIPickupLick
    \tenorILick
    \tenorIPickupLick
    \tenorILick
    gs16 [ fs r gs ~ ]  8 r  fs16 [ e r fs ~ ]  8 r |
    e16 [ ds r e ]  r e [ cs8 ]  r2 |
    \fermata fs1
}

altoILick = \relative c''' {
    b16 [ as r b ~ ]  8 r  as16 [ gs r as ~ ]  8 r |
    gs16 [ fs r gs ]  r gs [ fs es ]  fs fs gs as ~  8 r |
}
altoI = \relative c''' {
    \altoILick
    \altoIPickupLick
    \altoILick
    \altoIPickupLick
    \altoILick
    b16 [ as r b ~ ]  8 r  as16 [ es r as ~ ]  8 r |
    gs16 [ fs r gs ]  r fs [ es8 ]  r2 |
    \fermata fs1
}

tenor = {
    \tenorA
    \tenorB
    \tenorC
    \tenorD
    \tenorCOne
    \tenorDOne
    \tenorAOne
    \tenorE
    \tenorF
    \tenorCTwo
    \tenorDTwo
    \tenorG
    \tenorH
    \tenorATwo
    \tenorI
}


alto = {
    \altoAMelody
    \altoB
    \altoC r4
    \altoD
    \altoCOne
    \altoDOne
    \altoAOne
    \altoE
    \altoF
    \altoCTwo
    \altoDTwo
    \altoG
    \altoH
    \altoATwo
    \altoI
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
                    \transpose ef, c \structure
                    \breaksAndMarksForAlto
                    {
                        <<
                            \magnifyMusic 0.75 { \transpose ef c \guitarIntro } \\
                            \tenorIntro
                        >>
                        \alto
                    }
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "tenor-sax-in-Bb"
    \header {
        title = \title
        composer = \markup \italic { \composerName }
        arranger = \markup \italic { \arranger }
        poet = "Bb Tenor Saxophone"
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
            } \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \transpose bf, c \structure
                    \breaksAndMarksForTenor
                    {
                        <<
                                \magnifyMusic 0.75 { \transpose bf, c \guitarIntro } \\
                            \tenorIntro
                        >>
                        \tenor
                    }
                >>
            }
        >>
    }
}
