\version "2.19.81"

titleLeft = "Fly Me "
titleRight = "To The Moon"
title = "Fly Me To The Moon"
composerName = "Bart Howard"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

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

\include "ly/ily/layout.ily"

toCoda = <>^\markup { \translate #'( -2 . 1.75) \huge \bold \musicglyph #"scripts.coda" }
atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	s1 || 
    d2:7 g:7 | c1:m | 
    f2:7 bf:7 | ef1 |
    d2:7 g:7 | c1:m | 
    af1 | g | 

    d2:7 g:7 | c1:m | 
    f2:7 bf:7 | ef1 |
    d2:7 g:7 | c1:m | 
    af1 | g | 

    g2:7 c:7 | f:7 bf:7 | ef:7 af:7 | df1 | 
    f2:7 bf:7 | ef:7 af:7 | df:7 gf:7 | g1 |  

    d2:7 g:7 | c1:m | 
    f2:7 bf:7 | ef1 |
    d2:7 g:7 | c1:m | 
    af1 | g | 
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

		e2:m7.5- bf:9 | a1:7.9- | 
	d:m7 | g:7.9- | c2 bf4:6 b:7 | c1 | 
}


melodyHead = \relative c' { 
    \key c \minor
    r8 g\mp c [ d ]  ef f ( g ef ) 
    \bar "||"
	
    fs2 f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2 f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf  c8->\f | \break     

    r8 g\mp c [ d ]  ef f ( g ef ) 
    \bar "||"
    
    fs2 f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2 f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f | \break

    r2 r8 g'4->\ff 8-> ~ \bar "||"
    g4 b,8\mf ( a ) bf4 g'8 ( e ) | f4 a,8 ( g ) af4 f'8 ( d ) | 
    ef4 g8 ( f ) gf4 e8 ( f ~ | 2 )  r8 f4->\ff 8-> ~ | 

    f4 a,8\mf ( g ) af4 f'8 ( d ) | ef4 g,8 ( f ) gf4  ef'8 ( c ) | 
    df4 f8 ( ef8 ) e4.\< ef8->\f | \break

    r8 g,\mp c [ d ]  ef f ( g ef ) 
    \bar "||"
    
    fs2 f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2 f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f | R1 
    \bar "|."

}

\header {
    title = "Jordu"
    composer = "Duke Jordan"
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}


\book {
	\bookOutputSuffix "for-Eb"

    \header {
        subtitle = "(simplified)"
    }

    \score {
        <<
            \new ChordNames \transpose ef c { \chordsHead }
        	\new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
            	\autoPageBreaksOff
                \melodyHead
                \noPageBreak
            }
        >>
    }
}
