
dominantArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:7
}
dominantArpeggioG = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        g8 b ( d ) f (  b, ) d ( f ) g (  |
        d8 ) f ( g ) b (  f ) g ( b ) d (  |
        g,2 )  g8 b ( d ) f (  |
        b,8 ) d ( f ) g (  d ) f ( g ) b (  |
        f8 ) g ( b ) d ( g,4. ) 
    }
    \relative c''' { 
        g8 ( |  
        d'8 ) b ( g ) f  ( b ) g ( f ) d (     
        g8 ) f ( d ) b  ( f' ) d ( b ) g (  
        d'8 ) b ( g ) f  ( b ) g ( f ) d (     
        g2 )  g8 f ( d ) b  ( |
        f'8 ) d ( b ) g (   d' ) b ( g ) f  ( |
        b8 ) g ( f ) d' (     
        g,1 )
    }
    \bar "||"
}

dominantArpeggioD = \relative c {
    \key g \major
    \time 4/4 
    \relative c' {
        d2.  ( c8 ) a ( |
        fs8 ) a ( c ) d (  a ) c ( d ) fs ( | 
        c8 ) d ( fs ) a (  d,2 ) |
        
        d8 fs ( a ) c (  fs, ) a ( c ) d (  |
        a8 ) c ( d ) fs (  c ) d ( fs ) a (  |
        d,2 ) 

        d8 fs ( a ) c ( | 
        fs,8 ) a ( c ) d (  a ) c ( d ) fs, ( | 
        d'2 ) 
    }
    \relative c''' { 
        d8 c ( a ) fs ( |
        c'8 ) a ( fs ) d (  a' ) fs ( d ) c ( |
        fs8 ) d ( c ) a (  d2 ) |
        d8 c ( a ) fs (  c' ) a ( fs ) d ( |
        a'8 ) fs ( d ) c ( fs8) d ( c ) a ( |
        d2 )  d8 c ( a ) fs ( |
        c'8 ) a ( fs ) fs' ( d2 ) 
    }
    \bar "||"
}


dominantArpeggioC = \relative c {
    \key f \major
    \time 4/4 
    \relative c' {
        c2.  ( bf8 ) g ( |
        e8 ) g ( bf ) c (  g ) bf ( c ) e ( | 
        bf8 ) c ( e ) g (  c,2 ) |
        
        c8 e ( g ) bf (  e, ) g ( bf ) c (  |
        g8 ) bf ( c ) e (  bf ) c ( e ) g (  |
        c,2 ) 

        c8 e ( g ) bf ( | 
        e,8 ) g ( bf ) c (  g ) bf ( c ) e, ( | 
        c'2 ) 
    }
    \relative c''' { 
        c8 bf ( g ) e ( |
        bf'8 ) g ( e ) c (  g' ) e ( c ) bf ( |
        e8 ) c ( bf ) g (  c2 ) |
        c8 bf ( g ) e (  bf' ) g ( e ) c ( |
        g'8 ) e ( c ) bf ( e8) c ( bf ) g ( |
        c2 )  c8 bf ( g ) e ( |
        bf'8 ) g ( e ) e' ( c2 ) 
    }
    \bar "||"
}

dominantArpeggioA = \relative c' {
    \key d \major
    \time 4/4 
    \relative c' {
        a8 cs ( e ) g (  cs, ) e ( g ) a (  |
        e8 ) g ( a ) cs (  g ) a ( cs ) e (  |
        a,2 )  a8 cs ( e ) g (  |
        cs,8 ) e ( g ) a (  e ) g ( a ) cs (  |
        g8 ) a ( cs ) e, ( a2 ) | 
    }
    \relative c''' { 
        a8  g ( e ) cs'  ( g ) e ( cs ) a' (  
        e8 ) cs ( a' ) g  ( cs ) a ( g ) e ( |
        a8 ) g ( e ) cs  ( g' ) e ( cs ) a (  |
        e'8 ) cs ( a ) g  (  cs ) a ( g ) e ( |
        a2 )   a8 g ( e ) cs  ( | 
        g'8 ) e ( cs ) a (  e' ) cs ( a ) g  ( |
        cs8 ) a ( g ) e ( a2 ) 
    }
    \bar "||"
}


dominantArpeggioF = \relative c {
    \key bf \major
    \time 4/4 
    \relative c {
        f8 a ( c ) ef (  a, ) c ( ef ) f (  |
        c8 ) ef ( f ) a (  ef ) f ( a ) c (  |
        f,2 )  f8 a ( c ) ef (  |
        a,8 ) c ( ef ) f (  c ) ef ( f ) a (  |
        ef8 ) f ( a ) c ( f,4. ) 
    }
    \relative c'' { 
        f8 ( |  
        c'8 ) a ( f ) ef  ( a ) f ( ef ) c (     
        f8 ) ef ( c ) a  ( ef' ) c ( a ) f (  
        c'8 ) a ( f ) ef  ( a ) f ( ef ) c (     
        f2 )  f8 ef ( c ) a  ( |
        ef'8 ) c ( a ) f (   c' ) a ( f ) ef'  ( |
        a,8 ) f ( ef' ) c ( f,2 ) 
    }
    \bar "||"
}

dominantArpeggioE = \transpose f e {
    \key bf \major
    \time 4/4 
    \relative c {
        f8 a ( c ) ef (  a, ) c ( ef ) f (  |
        c8 ) ef ( f ) a (  ef ) f ( a ) c (  |
        f,2 )  f8 a ( c ) ef (  |
        a,8 ) c ( ef ) f (  c ) ef ( f ) a (  |
        ef8 ) f ( a ) c ( f,2 ) |
        f8 a ( c ) ef (  a, ) c ( ef ) c ( | f,2 )
    }
    \relative c'' { 
        f8  ef' ( c ) a  ( | 
        ef'8 ) c ( a ) f (  c' ) a ( f ) ef  ( |
        a8 ) f ( ef ) c (  f2 )  |

        f8 ef ( c ) a  ( ef'8 ) c ( a ) f (  |
        c'8 ) a ( f ) ef  ( a ) f ( ef ) c (  |
        f2 )  f8 ef ( c ) a  ( |
        ef'8 ) c ( a ) f (  c' ) a ( f ) ef' ( |
        a,8 ) f ( ef' ) c (  f,2 ) 

    }
    \bar "||"
}

dominantArpeggioBFlat = \transpose a bf {
    \key d \major
    \time 4/4 
    \relative c' {
        a8 cs ( e ) g (  cs, ) e ( g ) a (  |
        e8 ) g ( a ) cs (  g ) a ( cs ) e (  |
        a,2 )  a8 cs ( e ) g (  |
        cs,8 ) e ( g ) a (  e ) g ( a ) cs (  |
        g8 ) a ( cs ) e, ( a2 ) | 
    }
    \relative c''' { 
        a8  g ( e ) cs'  ( g ) e ( cs ) a' (  
        e8 ) cs ( a' ) g  ( cs ) a ( g ) e ( |
        a8 ) g ( e ) cs  ( g' ) e ( cs ) a (  |
        e'8 ) cs ( a ) g  (  cs ) a ( g ) e ( |
        a2 )   a8 g ( e ) cs  ( | 
        g'8 ) e ( cs ) a (  e' ) cs ( a ) g  ( |
        cs8 ) a ( g ) e ( a2 ) 
    }
    \bar "||"
}


dominantArpeggioB = \relative c' {
    \key e \major
    \time 4/4 
    \relative c' { 
        b2.. a8 ( | 
        fs8 ) a ( b ) ds (  a ) b ( ds ) fs ( |
        b,8 ) ds ( fs ) a (  ds, ) fs ( a ) b ( |
        fs8 ) a ( b ) ds (  a ) b ( ds ) fs ( | 
        b,2 )  b8 ds ( fs ) a (  | 
        ds,8 ) fs ( a ) b (  fs ) a ( b ) ds, ( |
        a'8 ) b ( ds, ) fs ( b2 ) | 


    }
    \relative c''' { 
        b8  a ( fs ) ds (  a' ) fs ( ds ) b ( | 
        fs'8 ) ds ( b ) a (  ds ) b ( a ) fs ( | 
        b2 )  b8 a ( fs ) ds ( |
        a'8 ) fs ( ds ) b ( fs' ) ds ( b ) a ( | 
        ds8 ) b ( a ) fs (  b ) a ( fs ) ds' ( |
        b1 ) |
    }
    \bar "||"
}

dominantArpeggioEFlat = \relative c' {
    \key af \major
    \time 4/4 
    \relative c' { 
        ef2. ( df8 ) bf ( |
        g8 ) bf ( df ) ef (  bf ) df ( ef ) g ( | 
        df8 ) ef ( g ) bf (  ef,2 ) |
        ef8 g ( bf ) df (  g, ) bf ( df ) ef ( | 
        bf8 ) df ( ef ) g (  df ) ef ( g ) bf ( | 
        ef,2 )  ef8 g ( bf ) df ( |
        g,8 ) bf ( df ) ef, (  bf' ) df ( ef, ) g ( | 
        ef2 )  
    }
    \relative c'' { 
        ef8 df' ( bf ) g (  | 
        df'8 ) bf ( g ) ef (  bf' ) g ( ef ) df ( |
        g8 ) ef ( df ) bf ( ef2 ) | 
        ef8 df ( bf ) g ( df' ) bf ( g ) ef ( | 
        bf' ) g ( ef ) df (  g ) ef ( df ) bf ( |
        ef2 ) ef8 df ( bf ) g (  | 
        df'8 ) bf ( g ) ef' (  bf ) g ( df' ) g ( |
        ef1 ) |

    }
    \bar "||"
}

dominantArpeggioFSharp = \transpose f fs {
    \key bf \major
    \time 4/4 
    \relative c {
        f8 a ( c ) ef (  a, ) c ( ef ) f (  |
        c8 ) ef ( f ) a (  ef ) f ( a ) c (  |
        f,2 )  f8 a ( c ) ef (  |
        a,8 ) c ( ef ) f (  c ) ef ( f ) a (  |
        ef8 ) f ( a ) c ( f,4. ) 
    }
    \relative c'' { 
        f8 ( |  
        c'8 ) a ( f ) ef  ( a ) f ( ef ) c (     
        f8 ) ef ( c ) a  ( ef' ) c ( a ) f (  
        c'8 ) a ( f ) ef  ( a ) f ( ef ) c (     
        f2 )  f8 ef ( c ) a  ( |
        ef'8 ) c ( a ) f (   c' ) a ( f ) ef  ( |
        a8 ) f ( ef ) c' ( f,2 ) 
    }
    \bar "||"
}

dominantArpeggioAFlat = \transpose g af {
    \key c \major
    \time 4/4 
    \relative c' {
        g8 b ( d ) f (  b, ) d ( f ) g (  |
        d8 ) f ( g ) b (  f ) g ( b ) d (  |
        g,2 )  g8 b ( d ) f (  |
        b,8 ) d ( f ) g (  d ) f ( g ) b (  |
        f8 ) g ( b ) d, ( g4. ) 
    }
    \relative c''' { 
        g8 (  |
        d8 ) b' ( g ) f  ( b ) g ( f ) d (   | 
        g2 )  g8 f ( d ) b  ( |
        f'8 ) d ( b ) g (  d' ) b ( g ) f ( |
        b8 ) g ( f ) d (  g2 ) | 
        g8 f ( d ) b  (  f' ) d ( b ) g ( |  
        d'8 ) b ( g ) f  (  b ) g ( f ) d' ( |     
        g,1 )
    }
    \bar "||"
}


dominantArpeggioCSharp = \relative c {
    \key fs \major
    \time 4/4 
    \relative c' {
        cs2.  ( b8 ) gs ( |
        es8 ) gs ( b ) cs (  gs ) b ( cs ) es ( | 
        b8 ) cs ( es ) gs (  cs,2 ) |
        
        cs8 es ( gs ) b (  es, ) gs ( b ) cs (  |
        gs8 ) b ( cs ) es (  b ) cs ( es ) gs (  |
        cs,2 ) 

        cs8 es ( gs ) b ( | 
        es,8 ) gs ( b ) cs (  gs ) b ( cs ) es, ( | 
        cs'2 ) 
    }
    \relative b'' { 
        cs8 b ( gs ) es ( |
        b'8 ) gs ( es ) cs (  gs' ) es ( cs ) b ( |
        es8 ) cs ( b ) gs (  cs2 ) |
        cs8 b ( gs ) es (  b' ) gs ( es ) cs ( |
        gs'8 ) es ( cs ) b ( es8) cs ( b ) gs ( |
        cs2 )  cs8 b ( gs ) es ( |
        b'8 ) gs ( es ) es' ( cs2 ) 
    }
    \bar "||"
}

