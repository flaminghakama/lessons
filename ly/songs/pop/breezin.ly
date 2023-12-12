\version "2.22.1"


titleLeft = "Breezin"
titleRight = ""
title = "Breezin"
composerName = "G. Benson"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm breezin*pdf ; lilypond ly/songs/pop/breezin.ly ; for file in breezin*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/breezin*
lilypond ly/songs/pop/breezin.ly 
mv breezin*pdf pdf/songs/pop
for file in pdf/songs/pop/breezin*pdf ; do op $file ; done 

%}

\paper {

  top-margin = #2
  right-margin = #14
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #17

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

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \key d \major
    \time 3/4
    \tempo 4=132
    s2.*4 \break
    s2.*4 \break
    s2.*5 \break
    
    \startSection "Bass & Drums"
    \time 4/4
    \tempo 4=164
    s1*4 \break
    s1*4 \break

    \startSection "Guitar"
    s1*4 \break
    s1*4 \break

    \startSection "Flute"
    s1*4 \break
    \startSection "Strings"
    s1*4 \break
    s1*4 \break
    s1*3 \pageBreak s1 

    \startSection "A"
    s1*4 \break
    s1*4 \break

    s1*4 \break
    s1*4 \break

    s1*4 \break
    s1*4 \break

    s1*4 \break
    s1*4 \break


    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break

    % \startSection "A"
    % s1*4 \break
    % s1*4 \break
    % s1*4 \break
    % s1*4 \break

    % \startSection "Solo play 4X"
    % \bar "[|:"
    % s1*4 \break
    % s1*4 \break
    % s1*4 \break
    % s1*4 \break
    % \bar ":|]"

    % \startSection "B"
    % s1*4 \break

    % \startSection "A"
    % s1*4 \break
    % s1*4 \break

    % \startSection "B"
    % s1*4 \break
    % s1*4 \break
    % \bar "|."    
}

chordsIntro = \chordmode { 
    cs2.:m | e:m | gs:m | e:m | 
    cs2.:m | e:m | a | s | 
    s2. | s | s | s | s ||
}

chordsA = \chordmode { 
    d1:maj9 | b:m7 | e:m9 | a:7 | 
}
chordsLeadIn = \chordmode { 
    d1 | b:m | a:7 | s | 
}

chordsB = \chordmode { 
    d1 | b:m | a:1.4.5.7 | a:7 | 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro

    % "Bass & Drums"
    \chordsA
    \chordsA

    % "Guitar"
    \chordsA
    \chordsA

    % "Flute"
    \chordsA
    % "Strings"
    \chordsA
    \chordsA
    \chordsLeadIn

    % "A"
    \chordsA
    \chordsA

    \chordsA
    \chordsA

    \chordsA
    \chordsA

    \chordsA
    \chordsA


    \startSection "B"
    \chordsB
    \chordsB
    \chordsB
    \chordsB

    % \startSection "A"
    % \chordsA
    % \chordsA
    % \chordsA
    % \chordsA

}

melodyIntro = \relative c' {
    e16 f e8  cs'16 d cs a  e f e d |
    e16 f e8  e'16 f e c  a f e d |
    gs16 a gs8  gs'16 a gs8  b16 a gs e |
    e,16 f e8  e'16 f e c  a f e d |

    e16 f e8  cs'16 d cs a  e f e d |
    cs'16 d cs a  g f e d  cs'16 d cs a |
    d,8  \repeat tremolo 3 { <cs e>16 <d fs> } \repeat tremolo 2 { <cs e>16 <d fs> } |
    \repeat tremolo 6 { <cs e>16 <d fs> } |

    <cs e>8 <d fs>  <cs e> <d fs>  <cs e>4 ~ | 2. ~ | 2. | 
    R2.*2 ||
}
melodyBass = \relative c {
    d4-. r8 b  d e fs b, | r2 r8 fs'4. | 
    e4-. r8 b  e fs g a, | r a' r e a4 a, |
}
bassB = \relative c {
    a8 d r b d8 8 b d | r8 fs8 4 g4 4 | 
    a2. r8 a, ~ | 8 4 8 b4 a |  
}
rhythmGuitar = \relative c'' {
    <cs e>8 8 8 8  8 8 8 8-> | r <b d>4. ~ 4 r | 
    <d fs>8 8 8 8  8 8 8 8-> | r <cs e>4. ~ 4 r | 
}
strings = \relative c'' {
    a1 ~ | 1 ~ | 1 ~ | 4 b e cs8 b | 
    a1 ~ | 1 ~ | 1 ~ | \tuplet 3/2 2 { a4 b cs ~  4 e b' } |
    a1 ~ | 2. r4 |
}
fluteLeadIn = \relative c'' { 
    a4. 8 ~ 4 4 ~ | 8 4. 4 4 |
}
guitarLeadIn = \relative c'' { 
    fs4. d8 ~ 4 fs ~ | 8 d4. fs4 4 |
}


melodyAPickup = \relative c' {
    s1 | r8 a b [ cs ]  d e fs g ||
}


melodyA = \relative c'' {
    
    a16 ( b a8 ~ 2. ) | R1 | 
    r4 r8 a16 ( b a2 ~ | 4 ) r8 fs  r d r b | 

    a1 | R1 | 
    a16 b a8  r a16 b  a4-.  a16 b a8 | r4 b8 cs  d e fs g | 


    a16 ( b a8 ~ 2. ) | r4 r8 <b g>  r a16 b  a4 ~ | 
    a2 r2 | r8 b r \grace { f8 ( } fs )  r d r b | 

    a1 | R1 | 
    R1 | r4 b8 cs  d e fs g | 


    a16 ( b a8 ~ 2 ) a16 ( b a8 ~ | 8 ) a16 ( b  a4 ~ \tuplet 3/2 { a4 ) d cs } | 
    a16 ( b a8 ~ 2. ) | r4 r8 \grace { f8 ( } fs )  r d r b | 

    a1 | r2 r8 <cs e> r b | 
    <cs e>4 8 <b d> r2 | r4 b8 cs  d e fs g | 

    a16 ( b a8 ~ 2 ) a16 ( b a8 ~ | 8 ) a16 ( b  a2. ) |
    r8 fs g [ b ]  a2 ~ | 4 r8 \grace { f8 ( } fs )  r d r b | 

    d1 ~ | 1 | 
    R1 | r2 
}


melodyB = \relative c'' {
    a8 b d \grace { f8 ( } fs ) ||

    r8 d r b  d4 b-. | r2  a8 b d \grace { f8 ( } fs ) |
    r8 d r d  \grace { f8 ( } fs4 ) d' | r2  a,8 b d \grace { f8 ( } e8 ~ | 

    e8 ) d r b  d8 8 b4 | r2  a8 b d \grace { f8 ( } fs ) |
    r8 d r b  d4 b-. | r2  r8 b d [ \grace { <es cs>8 ( } <fs d> ] ) |  


    r8 <d b> r <b fs> <d b>4 <b fs>-. | r2  a8 b d <f d> |
    r8 <d b> r <b fs> <d fs>4 <fs a>-. | r4 g8 f  fs b, d \grace { <es cs>8 ( } <fs d> ) |  
 

    r8 <d b> r <b fs> <d b>8 8 <b fs>4-. | r2  a8 b d <f d> |
    r8 <d b> r <b fs> <d fs>4  r | <fs a>4 
}

melody = { 
    \melodyIntro
    \clef bass 
    \melodyBass
    \melodyBass
    \clef treble
    \rhythmGuitar
    \rhythmGuitar
    \rhythmGuitar
    \strings
     << 
        << \guitarLeadIn \fluteLeadIn >> \\
        \melodyAPickup
    >>
    \melodyA
    \melodyB
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-D-for-C"
    \header {
        subtitle = ""
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \transpose c c \structure
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-C"
    \header {
        subtitle = "(Manny key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose d ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \transpose c c \structure
                    \melody
                >>
            }
        >>
    }
}