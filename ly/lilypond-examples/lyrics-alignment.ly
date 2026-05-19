%%% Start snippet 

\version "2.24.0"

\paper {
  % Add space for instrument names
  indent = 18\mm
  short-indent = 10\mm
}

global = {
  \key g \major
  \time 3/4
  s2. 
  \time 4/4
  s1*7
  \time 3/4
  s2.*6
}

alto = \relative c'' {
 r2 g4 ^\mf \time 4/4
 << {  
      \voiceOne b2(a4)a |a2(g)
    } \\
    \new Voice = "alto1" {  
      \voiceTwo g2. g4 | g1
    }
  >> |
  \oneVoice

  g2 \tuplet 3/2 { g2 g4 } |
  g4 g2 g4 ^\f |

  << { \voiceOne b2(a4) a
     } \\
     \new Voice = "alto1" { 
       \voiceTwo g2. g4
     }
  >>
  \oneVoice

  a2(g)
  <g e> \tuplet 3/2 { <g~ es(>4 <g d)> <g c,> } \time 3/4
  <a d,><g d>2
  R2.*2
  r4 g ^\mp g fis
  fis(e8)g~~g2 \fermata
}

altoAligner = \relative c'' {
  r2 g4 ||
  b2(a4)a | a2(g) |
  g2 \tuplet 3/2 { g2 g4 } |
  g4 g2 g4 |
  b2(a4) a | a2(g) |
  g2 \tuplet 3/2 { g4 ~ 4 4 } 
  a4 g2 |
  R2.*2 |
  r4 g g fis
  fis(e8)g ~ g2
}

altoVerse = \lyricmode {
    Mag -- ni -- fi -- 
    cat a -- ni -- ma me -- a,
    Mag ni --
    fi -- cat a -- ni -- ma me -- a,
    an cil -- lae su -- ae.  
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Alt"
    shortInstrumentName = "A."
  } <<

    \new Voice = "alto" <<
      \global 
      \alto
    >>
    \new NullVoice = "aligner" \altoAligner
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "aligner" \altoVerse
  >>
>>

\score {
  <<
    \choirPart
  >>
  \layout {\override Score.BarNumber.break-visibility = #end-of-line-invisible
                }
}

%%%% End snippet