
minorSixthArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m6
}

minorSixthArpeggioC = \relative c' {
    \key c \minor
    \time 4/4 
    \relative c' {
        c8  ef ( g ) a  ( ef ) g ( a ) c ( |
        g8 ) a ( c ) ef (  a, ) c ( ef ) g ( | 
        c,2 ) c8  ef ( g ) a  ( |
        ef8 ) g ( a ) c (  g ) a ( c ) ef (  
        c2. ) c8 a ( |
        ef'8 ) c ( a ) g (  c ) a ( g ) ef ( |
        a8 ) g ( ef ) c (  g' ) ef ( c ) a ( |
        ef'8 ) c ( a ) g (  c2 ) |
        c8  a ( g ) ef (  a ) g ( ef ) c (  |
        g' ) ef ( c ) a' ( c2 ) |
    }
    \bar "||"
}

minorSixthArpeggioD = \relative c' {
    \key d \minor
    \time 4/4 
    \relative c'' {
        d2 (  b8 ) a (  f ) d ( |
        b8 ) d ( f ) a (  d, ) f ( a ) b (  |
        f8 ) a ( b ) d (  a ) b ( d ) f (  |
        b,8 ) d ( f ) a (  d,2 ) |
        d8 f ( a ) b (  
        f8 ) a ( b ) d ( |
        a8 ) b ( d ) f, ( 
        d'2. ~ )  
    }
    \relative c''' { 
        s2. d8 b ( | 
        f'8 ) d ( b ) a ( 
        d8 ) b ( a ) f ( | 
        b8 ) a ( f ) d (   
        a'8 ) f ( d ) b ( |
        f'8 ) d ( b ) a (  
        d2 )  |
        d8 b ( a ) f (   
        b8 ) a ( f ) d ( | 
        a'8 ) f ( d ) b (  
        f'8 ) d ( b ) a' ( | 
        d1 ) |    
    }
    \bar "||"
}

minorSixthArpeggioEFlat = \relative c' {
    \key ef \minor
    \time 4/4 
    \relative c' {
        ef2.. c8 ( |
        bf8 ) c ( ef ) gf (  c, ) ef ( gf ) bf ( |
        ef,8 ) gf ( bf ) c (  gf ) bf ( c ) ef ( | 
        bf8 ) c ( ef ) gf (  c, ) ef ( gf ) bf ( |
        ef,2) 8  gf ( bf ) c (  |
        gf8 ) bf ( c ) ef (  
        bf8 ) c ( ef ) gf, ( |
        ef'1 ) |
    }
    \relative d''' { 
        ef8 c ( bf ) gf (   c ) bf ( gf ) ef ( |
        bf'8 ) gf ( ef ) c (  gf' ) ef ( c ) bf ( 
        ef2 ) 8 c ( bf ) gf (  |
        c8 ) bf ( gf ) ef (  
        bf'8 ) gf ( ef ) c (  |
        gf' ) ef ( c ) bf ( 
        ef2 ) | 
    }
    \bar "||"
}

minorSixthArpeggioE = \relative c' {
    \key e \minor
    \time 4/4 
    \relative c' { 
        e2.. cs8 ( |
        b8 ) cs ( e ) g (  cs, ) e ( g ) b ( | 
        e,8 ) g ( b ) cs (  g ) b ( cs ) e (  |
        b8 ) cs ( e ) g (  cs, ) e ( g ) b ( |
        e,2)  8  g ( b ) cs (  |
        g8 ) b ( cs ) e ( 
        b8 ) cs ( e ) g, ( |
        e'1 )  |
    }
    \relative c''' { 
        e8 cs ( b ) g (  cs ) b ( g ) e ( |
        b'8 ) g ( e ) cs (  g' ) e ( cs ) b ( | 
        e8 ) cs ( b ) g (  cs ) b ( g ) e ( | 
        b'8 ) g ( e ) cs (  g' ) e ( cs ) b ( | 
        e1 ) |    
    }
    \bar "||"
}

minorSixthArpeggioF = \relative c' {
    \key f \minor
    \time 4/4 
    \relative c' { 
        f2..  d8 ( |
        c8 ) d ( f ) af (  
        d,8 ) f ( af ) c ( |
        f,8 ) af ( c ) d (        
        af8 ) c ( d ) f ( | 
        c8 ) d ( f ) af ( 
        d,8 ) f ( af ) c ( |
        f,2 )  8 af ( c ) d ( |        
        af8 ) c ( d ) f ( 
        c8 ) d ( f ) af, ( |
        f'1 ) |
    }
    \relative c''' { 
        f8  d ( c ) af ( 
        d8 ) c ( af ) f ( | 
        c'8 ) af ( f ) d ( 
        af'8 ) f ( d ) c ( | 
        f2 )  8  d ( c ) af ( | 
        d8 ) c ( af ) f ( 
        c'8 ) af ( f ) d ( |
        af'8 ) f ( d ) c ( 
        f8 ) d ( c ) d ( |
        f1 ) 
    }
    \bar "||"
}

minorSixthArpeggioFSharp = \relative c' {
    \key fs \minor
    \time 4/4 
    \relative c' { 
        fs2 (  
        cs8 ) ds ( fs ) a ( | 
        ds,8 ) fs ( a ) cs ( 
        fs8  a ( cs ) ds ( | 
        a8 ) cs ( ds ) fs (   
        cs8 ) ds ( fs ) a ( |
        ds,8 ) fs ( a ) cs (  
        fs,2 ) |
        fs8 a ( cs ) ds (   
        a8 ) cs ( ds ) a ( | 
        fs,1 ) | 
    }
    \relative cs'' { 
        fs8 ds' ( cs ) a (  ds ) cs ( a ) fs ( |
        cs'8 ) a ( fs ) ds (  a' ) fs ( ds ) cs ( | 
        fs2 )  8  ds ( cs ) a (  |
        ds8 ) cs ( a ) fs ( 
        cs'8 ) a ( fs ) ds ( | 
        a'8 ) fs ( ds ) cs (  
        fs8 ) ds ( cs ) a' ( |
        fs1 )
    }
    \bar "||"
}

minorSixthArpeggioG = \relative c' {
    \key g \minor
    \time 4/4 
    \relative c'' { 
        g2. ( e8 ) d ( |
        bf8 ) d ( e ) g (  d ) e ( g ) bf ( | 
        e,8 ) g ( bf ) d (  g,2 ) |
        g8 bf ( d ) e ( bf ) d ( e ) g ( |
        d8 ) e ( g ) bf ( e, ) g ( bf ) d (  |
        g,1 )  
    }
    \relative c''' { 
        g8  e' ( d ) bf (  e ) d ( bf ) g ( |
        d'8 ) bf ( g ) e (  bf' ) g ( e ) d (  
        g2 ) g8 e ( d ) bf ( |
        e8 ) d ( bf ) g (  d' ) bf ( g ) e (  |
        bf'8 ) g ( e ) d ( g ) e ( d ) bf ( |
        e ) d ( bf ) g' ( d ) bf ( g' ) e ( |
        g1 ) 
    }
    \bar "||"
}

minorSixthArpeggioAFlat = \relative c' {
    \key af \minor
    \time 4/4 
    \relative c'' { 
        af2. ( f8 ) ef ( |
        cf8 ) ef ( f ) af (  ef ) f ( af ) cf ( | 
        f,8 ) af ( cf ) ef (  af,2 ) |
        af8 cf ( ef ) f ( cf ) ef ( f ) af ( |
        ef8 ) f ( af ) cf ( f, ) af ( cf ) ef (  |
        af,8 ) cf ( ef ) f ( af,2 ~ |
    }
    \relative c''' { 
        af2. ) r8 af ( | 
        ef'8 ) cf ( af ) f (   cf' ) af ( f ) ef (  |
        af8 ) f ( ef ) cf (   f ) ef ( cf ) af ( |
        ef'8 ) cf ( af ) f (   cf' ) af ( f ) ef ( |
        af8 ) f ( ef ) cf (   f ) ef ( cf ) f ( |
        af1 ) 
    }
    \bar "||"
}

minorSixthArpeggioA = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' { 
        a2. ( fs8 ) e ( |
        c8 ) e ( fs ) a (  e ) fs ( a ) c ( | 
        fs,8 ) a ( c ) e (  a,2 ) |
        a8 c ( e ) fs ( c ) e ( fs ) a ( |
        e8 ) fs ( a ) c ( fs, ) a ( c ) e (  |
        a,8 ) c ( e ) fs, ( a2 ~ |
    }
    \relative c''' { 
        a2. ) r8 a ( | 
        e'8 ) c ( a ) fs (   c' ) a ( fs ) e (  |
        a8 ) fs ( e ) c (   fs ) e ( c ) a ( |
        e'8 ) c ( a ) fs (   c' ) a ( fs ) e ( |
        a8 ) fs ( e ) c (   fs ) e ( c ) fs ( |
        a1 ) 
    }
    \bar "||"
}

minorSixthArpeggioBFlat = \relative c' {
    \key bf \minor
    \time 4/4 
    \relative c'' {
        bf2 ~ 8 g ( f ) df ( | 
        bf8 ) df ( f ) g (  df ) f ( g ) bf (  |
        f8 ) g ( bf ) df (  g, ) bf ( df ) f ( |
        bf,2 ) 8 df ( f ) g (  |
        df ) f ( g ) bf ( 
        f8 ) g ( bf ) df (  |
        g,8 ) bf ( df ) f (  bf, ) df ( f ) g, ( | 
        bf2.. ) 
    }
    \relative c''' { 
        bf8 ( |
        f'8 ) df ( bf ) g ( df' ) bf ( g ) f ( |
        bf8 ) g ( f ) df (  g ) f ( df ) bf (|
        f'8 ) df ( bf ) g (  df' ) bf ( g ) f ( |
        bf2 ) 8  g ( f ) df ( |
        g8 ) f ( df ) bf (  
        f'8 ) df ( bf ) g' ( |
        bf1 ) |  
    }
    \bar "||"
}


minorSixthArpeggioB = \relative c' {
    \key b \minor
    \time 4/4 
    \relative c'' { 
        b,8 d ( fs ) gs (  d ) fs ( gs ) b ( | 
        fs8 ) gs ( b ) d (  gs, ) b ( d ) fs (  
        b,2 )  b8 d ( fs ) gs ( |  
        d8 ) fs ( gs ) b (  fs ) gs ( b ) d ( |
        gs,8 ) b ( d ) fs, ( b2 ~ | \noBreak
        b2. ) 8 gs ( |
    }
    \relative c''' { 
        d8 ) b ( gs ) fs (  b ) gs ( fs ) d (  |
        gs8 ) fs ( d ) b (  fs' ) d ( b ) gs ( |
        d'8 ) b ( gs ) fs (  b2 ) |
        b8 gs ( fs ) d (  gs) fs ( d ) b ( |
        fs'8 ) d ( b ) gs' (  b2 ) | 
    }
    \bar "||"
}

