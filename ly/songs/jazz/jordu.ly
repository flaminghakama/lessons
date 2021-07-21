\version "2.19.81"

titleLeft = "Jordu"
titleRight = "Jordu"
titleFull = "Jordu"
composerName = "Duke Jordan"

%{

killPreview
rm jordu*pdf
lilypond ly/songs/jazz/jordu.ly
mv jordu*pdf pdf/songs/jazz
python ~/git/PyPDF2/Scripts/pdfcat -o jordu-very-simplified-and-full-for-Eb.pdf pdf/songs/jazz/jordu-very-simplified-for-Eb.pdf pdf/songs/jazz/jordu-for-Eb.pdf
python ~/git/PyPDF2/Scripts/pdfcat -o jordu-and-low-bridge-for-Eb.pdf pdf/songs/jazz/jordu-for-Eb.pdf pdf/songs/jazz/jordu-low-bridge-for-Eb.pdf
python ~/git/PyPDF2/Scripts/pdfcat -o jordu-simplifieds-for-Eb.pdf pdf/songs/jazz/jordu-simplified-for-Eb.pdf pdf/songs/jazz/jordu-simplified-low-bridge-for-Eb.pdf
mv jordu*pdf pdf/songs/jazz/printable
for file in pdf/songs/jazz/jordu*pdf pdf/songs/jazz/printable/jordu*pdf ; do open -a Preview $file ; done

%}

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

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

structure = \relative c' { 
    \key c \minor
    s1
    \bar "||"
  
    s1*3 \break
    s1*4 \break
    s1
    \bar "||"
    
    s1*3 \break
    s1*4 \break
    s1
    \bar "||"

    s1*3 \break
    s1*4 \break
    s1
    \bar "||"
    
    s1*3 \break
    s1*5
    \bar "|."
}

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

	s1 || 
    d2:7 g:7 | c1:m | 
    f2:7 bf:7 | ef1 |
    d2:7 g:7 | c1:m | 
    af1:7 | g:7 | 

    d2:7 g:7 | c1:m | 
    f2:7 bf:7 | ef1 |
    d2:7 g:7 | c1:m | 
    af1:7 | g:7 | 

    g2:7 c:7 | f:7 bf:7 | ef:7 af:7 | df1 | 
    f2:7 bf:7 | ef:7 af:7 | df:7 gf:7 | g1 |  

    d2:7 g:7 | c1:m | 
    f2:7 bf:7 | ef1 |
    d2:7 g:7 | c1:m | 
    af2:7 g:7 | c1:m || 
}

melodyVerySimplified = \relative c' { 
    r8 g\mp c [ d ]  ef f ( g ef ) ||
  
    gf2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    gf2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf  c8->\f |     

    r8 g\mp c [ d ]  ef f ( g ef ) ||
    
    gf2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    gf2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f |

    r2 r8 g'4->\ff 8-> ~ ||
    g4 b,8\mf ( a ) bf4 g'8 ( e ) | f4 a,8 ( g ) af4 f'8 ( d ) | 
    ef4 g,8 ( f ) gf4 e'8 ( f ~ | 2 )  r8 f4->\ff 8-> ~ | 

    f4 a,8\mf ( g ) af4 f'8 ( d ) | ef4 g,8 ( f ) gf4  ef'8 ( c ) | 
    df4 f8 ( ef8 ) ff4.\< ef8->\f |

    r8 g,\mp c [ d ]  ef f ( g ef ) ||
    
    gf2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    gf2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f | R1 || 
}

melodySimplified = \relative c' { 
    r8 g\mp c [ d ]  ef f ( g ef ) ||
  
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf  c8->\f |     

    r8 g\mp c [ d ]  ef f ( g ef ) ||
    
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f |

    r2 r8 g''4->\ff 8-> ~ ||
    g4 b,8\mf ( a ) bf4 g'8 ( e ) | f4 a,8 ( g ) af4 f'8 ( d ) | 
    ef4 g,8 ( f ) gf4 e8 ( f ~ | 2 )  r8 f'4->\ff 8-> ~ | 

    f4 a,8\mf ( g ) af4 f'8 ( d ) | ef4 g,8 ( f ) gf4  ef'8 ( c ) | 
    df4 f,8 ( ef8 ) ff4.\< ef8->\f |

    r8 g,\mp c [ d ]  ef f ( g ef ) ||
    
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f | R1 ||
}

melodySimplifiedLowBridge = \relative c' { 
    r8 g\mp c [ d ]  ef f ( g ef ) ||
  
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf  c8->\f |     

    r8 g\mp c [ d ]  ef f ( g ef ) ||
    
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f |

    r2 r8 g'4->\ff 8-> ~ ||
    g4 b,8\mf ( a ) bf4 g'8 ( e ) | f4 a,8 ( g ) af4 f'8 ( d ) | 
    ef4 g,8 ( f ) gf4 e8 ( f ~ | 2 )  r8 f'4->\ff 8-> ~ | 

    f4 a,8\mf ( g ) af4 f'8 ( d ) | ef4 g,8 ( f ) gf4  ef'8 ( c ) | 
    df4 f,8 ( ef8 ) ff4.\< ef8->\f |

    r8 g\mp c [ d ]  ef f ( g ef ) ||
    
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 ef8 ( c ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f | R1 ||
}

melodyFirstAA = \relative c' { 
    r8 g\mp c [ d ]  ef f ( g ef ) ||
  
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 \tuplet 3/2 { ef16 ( f ef } c8 ) ef c ~ | 
    c2\< ~ 4.\xf  c8->\f |     

    r8 g\mp c [ d ]  ef f ( g ef ) ||
    
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 \tuplet 3/2 { ef16 ( f ef } c8 ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f |
}

melodyBridge = \relative c''' { 
    r2 r8 g4->\ff 8-> ~ ||
    g4 \tuplet 3/2 { b,16\mf ( c b } a8 ) bf4 g'8 ( e ) | 
    f4 \tuplet 3/2 { a,16 ( bf a } g8 ) af4 f'8 ( d ) | 
    ef4 \tuplet 3/2 { g,16 ( af g } f8 ) gf4 e8 ( f ~ | 2 )  r8 f'4->\ff 8-> ~ | 

    f4 \tuplet 3/2 { a,16\mf ( bf a } g8 ) af4 f'8 ( d ) | 
    ef4 \tuplet 3/2 { g,16 ( af g } f8 ) gf4  ef'8 ( c ) | 
    df4 \tuplet 3/2 { f,16 ( gf f } ef8 ) ff4.\< ef8->\f |
}

melodyLastA = \relative c' { 
    r8 g\mp c [ d ]  ef f ( g ef ) ||
    
    fs2-- f4. ef8 | r8 g, c [ d ]  ef f ( g bf ) | 
    a2 af4. g8 | r 8 g, c [ d ]  ef f ( g ef ) | 
    fs2-- f4. ef8 | r2 \tuplet 3/2 { ef16 ( f ef } c8 ) ef c ~ | 
    c2\< ~ 4.\xf c8->\f | R1 ||
}

melodyLowBridge = \relative c' { 
    \key c \minor
    \melodyFirstAA
    \transpose c c, \melodyBridge
    \melodyLastA
}

melody = \relative c' { 
    \key c \minor
    \melodyFirstAA
    \melodyBridge
    \melodyLastA
}

\header {
    title = \titleFull
    composer = \composerName
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "very-simplified-for-Eb"
    \header {
        subtitle = "(very simplified)"
    }
    \score {
        <<
            %\new ChordNames \transpose ef c { \chordsHead }
            \new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyVerySimplified
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "simplified-for-Eb"
    \header {
        subtitle = "(simplified)"
    }
    \score {
        <<
            \new ChordNames \transpose ef c { \chordsHead }
            \new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodySimplified
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "simplified-low-bridge-for-Eb"
    \header {
        subtitle = "(simplified, low bridge)"
    }
    \score {
        <<
            \new ChordNames \transpose ef c { \chordsHead }
            \new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodySimplifiedLowBridge
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "low-bridge-for-Eb"
    \header {
        subtitle = "(low bridge)"
    }
    \score {
        <<
            \new ChordNames \transpose ef c { \chordsHead }
            \new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyLowBridge
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c { \chordsHead }
            \new Staff = "lead" \transpose ef, c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c { \chordsHead }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

