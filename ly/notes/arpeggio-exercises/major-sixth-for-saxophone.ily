
majorSixthArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:6
}

majorSixthArpeggioC = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8  e ( g ) a  ( e ) g ( a ) c ( |
        g8 ) a ( c ) e (  a, ) c ( e ) g ( | 
        c,2 ) c8  e ( g ) a  ( |
        e8 ) g ( a ) c (  g ) a ( c ) e (  
        c2. ) c8 a ( |
        e'8 ) c ( a ) g (  c ) a ( g ) e ( |
        a8 ) g ( e ) c (  g' ) e ( c ) a ( |
        e'8 ) c ( a ) g (  c2 ) |
        c8  a ( g ) e (  a ) g ( e ) c (  |
        g' ) e ( c ) a' ( c2 ) |
    }
    \bar "||"
}

majorSixthArpeggioD = \relative c' {
    \key d \major
    \time 4/4 
    \relative c'' {
        d2 (  b8 ) a (  fs ) d ( |
        b8 ) d ( fs ) a (  d, ) fs ( a ) b (  |
        fs8 ) a ( b ) d (  a ) b ( d ) fs (  |
        b,8 ) d ( fs ) a (  d,2 ) |
        d8 fs ( a ) b (  
        fs8 ) a ( b ) d ( |
        a8 ) b ( d ) fs, (
        d'2 )  |
    }
    \relative c''' { 
        d8 b ( a ) fs ( 
        b8 ) a ( fs ) d ( |  
        a'8 ) fs ( d ) b ( 
        fs'8 ) d ( b ) a ( | 
        d2 )  8 b ( a ) fs ( |  
        b8 ) a ( fs ) d ( 
        a'8 ) fs ( d ) b ( | 
        fs'8 ) d ( b ) a' ( 
        d2 ) |    
    }
    \bar "||"
}

majorSixthArpeggioEFlat = \relative c' {
    \key ef \major
    \time 4/4 
    \relative c' {
        ef2.. c8 ( |
        bf8 ) c ( ef ) g (  c, ) ef ( g ) bf ( |
        ef,8 ) g ( bf ) c (  g ) bf ( c ) ef ( | 
        bf8 ) c ( ef ) g (  c, ) ef ( g ) bf ( |
        ef,2) 8  g ( bf ) c (  |
        g8 ) bf ( c ) ef (  
        bf8 ) c ( ef ) g, ( |
        ef'1 ) |
    }
    \relative d''' { 
        ef8 c ( bf ) g (   c ) bf ( g ) ef ( |
        bf'8 ) g ( ef ) c (  g' ) ef ( c ) bf ( 
        ef2 ) 8 c ( bf ) g (  |
        c8 ) bf ( g ) ef (  
        bf'8 ) g ( ef ) c (  |
        g' ) ef ( c ) bf ( 
        ef2 ) | 
    }
    \bar "||"
}

majorSixthArpeggioE = \relative c' {
    \key e \major
    \time 4/4 
    \relative c' { 
        e2.. cs8 ( |
        b8 ) cs ( e ) gs (  cs, ) e ( gs ) b ( | 
        e,8 ) gs ( b ) cs (  gs ) b ( cs ) e (  |
        b8 ) cs ( e ) gs (  cs, ) e ( gs ) b ( |
        e,2)  8  gs ( b ) cs (  |
        gs8 ) b ( cs ) e ( 
        b8 ) cs ( e ) gs, ( |
        e'1 )  |
    }
    \relative c''' { 
        e8 cs ( b ) gs (  cs ) b ( gs ) e ( |
        b'8 ) gs ( e ) cs (  gs' ) e ( cs ) b ( | 
        e8 ) cs ( b ) gs (  cs ) b ( gs ) e ( | 
        b'8 ) gs ( e ) cs (  gs' ) e ( cs ) b ( | 
        e1 ) |    
    }
    \bar "||"
}

majorSixthArpeggioF = \relative c' {
    \key f \major
    \time 4/4 
    \relative c' { 
        f2..  d8 ( |
        c8 ) d ( f ) a (  
        d,8 ) f ( a ) c ( |
        f,8 ) a ( c ) d (        
        a8 ) c ( d ) f ( | 
        c8 ) d ( f ) a ( 
        d,8 ) f ( a ) c ( |
        f,2 )  8 a ( c ) d ( |        
        a8 ) c ( d ) f ( 
        c8 ) d ( f ) a, ( |
        f'1 ) |
    }
    \relative c''' { 
        f8  d ( c ) a ( 
        d8 ) c ( a ) f ( | 
        c'8 ) a ( f ) d ( 
        a'8 ) f ( d ) c ( | 
        f2 )  8  d ( c ) a ( | 
        d8 ) c ( a ) f ( 
        c'8 ) a ( f ) d ( |
        a'8 ) f ( d ) c ( 
        f8 ) d ( c ) d ( |
        f1 ) 
    }
    \bar "||"
}

majorSixthArpeggioFSharp = \relative c' {
    \key fs \major
    \time 4/4 
    \relative c' { 
        fs2. ( ds8 ) cs ( |
        as8 ) cs ( ds ) fs ( 
        cs8 ) ds ( fs ) as ( | 
        ds,8 ) fs ( as ) cs ( 
        fs,2 ) |
        fs8  as ( cs ) ds ( 
        as8 ) cs ( ds ) fs ( |  
        cs8 ) ds ( fs ) as ( 
        ds,8 ) fs ( as ) cs ( | 
        fs,2 ) 
        fs8 as ( cs ) ds ( |  
        as8 ) cs ( ds ) fs, (  
        cs'8 ) ds ( fs, ) as ( | 
        ds ) fs, ( as ) cs ( 
        fs,2 ) | 
    }
    \relative cs'' { 
        fs8 ds' ( cs ) as (  ds ) cs ( as ) fs ( |
        cs'8 ) as ( fs ) ds (  as' ) fs ( ds ) cs ( | 
        fs2 )  8  ds ( cs ) as (  |
        ds8 ) cs ( as ) fs ( 
        cs'8 ) as ( fs ) ds ( | 
        as'8 ) fs ( ds ) cs (  
        fs8 ) ds ( cs ) as (  |
        ds8 ) cs ( as ) cs ( 
        fs2 )
    }
    \bar "||"
}

majorSixthArpeggioG = \relative c' {
    \key g \major
    \time 4/4 
    \relative c'' { 
        g2. ( e8 ) d ( |
        b8 ) d ( e ) g (  d ) e ( g ) b ( | 
        e,8 ) g ( b ) d (  g,2 ) |
        g8 b ( d ) e ( b ) d ( e ) g ( |
        d8 ) e ( g ) b ( e, ) g ( b ) d (  |
        g,1 )  
    }
    \relative c''' { 
        g8  e' ( d ) b (  e ) d ( b ) g ( |
        d'8 ) b ( g ) e (  b' ) g ( e ) d (  
        g2 ) g8 e ( d ) b ( |
        e8 ) d ( b ) g (  d' ) b ( g ) e (  |
        b'8 ) g ( e ) d ( g ) e ( d ) b ( |
        e ) d ( b ) g' ( d ) b ( g' ) e ( |
        g1 ) 
    }
    \bar "||"
}

majorSixthArpeggioAFlat = \relative c' {
    \key af \major
    \time 4/4 
    \relative c'' { 
        af2. ( f8 ) ef ( |
        c8 ) ef ( f ) af (  ef ) f ( af ) c ( | 
        f,8 ) af ( c ) ef (  af,2 ) |
        af8 c ( ef ) f ( c ) ef ( f ) af ( |
        ef8 ) f ( af ) c ( f, ) af ( c ) ef (  |
        af,8 ) c ( ef ) f ( af,2 ~ |
    }
    \relative c''' { 
        af2. ) r8 af ( | 
        ef'8 ) c ( af ) f (   c' ) af ( f ) ef (  |
        af8 ) f ( ef ) c (   f ) ef ( c ) af ( |
        ef'8 ) c ( af ) f (   c' ) af ( f ) ef ( |
        af8 ) f ( ef ) c (   f ) ef ( c ) f ( |
        af1 ) 
    }
    \bar "||"
}

majorSixthArpeggioBFlat = \relative c' {
    \key bf \major
    \time 4/4 
    \relative c'' {
        bf2 ~ 8 g ( f ) d ( | 
        bf8 ) d ( f ) g (  d ) f ( g ) bf (  |
        f8 ) g ( bf ) d (  g, ) bf ( d ) f ( |
        bf,2 ) 8 d ( f ) g (  |
        d ) f ( g ) bf ( 
        f8 ) g ( bf ) d (  |
        g,8 ) bf ( d ) f (  bf, ) d ( f ) g, ( | 
        bf2.. ) 
    }
    \relative c''' { 
        bf8 ( |
        f'8 ) d ( bf ) g ( d' ) bf ( g ) f ( |
        bf8 ) g ( f ) d (  g ) f ( d ) bf (|
        f'8 ) d ( bf ) g (  d' ) bf ( g ) f ( |
        bf2 ) 8  g ( f ) d ( |
        g8 ) f ( d ) bf (  
        f'8 ) d ( bf ) g' ( |
        bf1 ) |  
    }
    \bar "||"
}


majorSixthArpeggioB = \relative c' {
    \key b \major
    \time 4/4 
    \relative c'' { 
        b,8 ds ( fs ) gs (  ds ) fs ( gs ) b ( | 
        fs8 ) gs ( b ) ds (  gs, ) b ( ds ) fs (  
        b,2 )  b8 ds ( fs ) gs ( |  
        ds8 ) fs ( gs ) b (  fs ) gs ( b ) ds ( |
        gs,8 ) b ( ds ) fs, ( b2 ~ | \noBreak
        b2. ) 8 gs ( |
    }
    \relative c''' { 
        ds8 ) b ( gs ) fs (  b ) gs ( fs ) ds (  |
        gs8 ) fs ( ds ) b (  fs' ) ds ( b ) gs ( |
        ds'8 ) b ( gs ) fs (  b2 ) |
        b8 gs ( fs ) ds (  gs) fs ( ds ) b ( |
        fs'8 ) ds ( b ) gs' (  b2 ) | 
    }
    \bar "||"
}

