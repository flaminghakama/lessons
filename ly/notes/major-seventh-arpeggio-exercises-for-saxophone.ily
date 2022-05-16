
majorSeventhArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7
}

majorSeventhArpeggioC = \relative c' {
    \key c \major
    \time 4/4 
    \relative c'' {
        c2 ( b8 ) g ( e ) c ( |
        b8 ) c ( e ) g (  c, ) e ( g ) b (  |
        e,8 ) g ( b ) c (  g ) b ( c ) e (  |
        b8 ) c ( e ) g (  c,2 ) |
        c8 e ( g ) b (  e, ) g ( b ) c (  |
        g8 ) b ( c ) e (  b8 ) c ( e ) g, ( 
        c1 ) |
    }
    \relative c''' { 
        e8 c ( b ) g (  c ) b ( g ) e (  |
        b'8 ) g ( e ) c (  g' ) e ( c ) b ( |
        e8 ) c ( b ) g (  c2 ) |
        c8 b ( g ) e (  b' ) g ( e ) c ( |
        g' ) e ( c ) b (  e ) c ( b ) g' ( |
        c1 )
    }
    \bar "||"
}

majorSeventhArpeggioD = \relative c' {
    \key d \major
    \time 4/4 
    \relative c'' {
        d2 (  cs8 ) a (  fs ) d ( |
        cs8 ) d ( fs ) a (  d, ) fs ( a ) cs (  |
        fs,8 ) a ( cs ) d (  a ) cs ( d ) fs (  |
        cs8 ) d ( fs ) a (  d,2 ) |
        d8 fs ( a ) cs (  
        fs,8 ) a ( cs ) d ( |
        a8 ) cs ( d ) fs, (
        d'2 )  |
    }
    \relative c''' { 
        d8 cs ( a ) fs ( 
        cs'8 ) a ( fs ) d ( |  
        a'8 ) fs ( d ) cs ( 
        fs ) d ( cs ) a ( | 
        d2 )  8 cs ( a ) fs ( |  
        cs'8 ) a ( fs ) d ( 
        a'8 ) fs ( d ) cs ( | 
        fs8 ) d ( cs ) a' ( 
        d2 ) |    
    }
    \bar "||"
}

majorSeventhArpeggioEFlat = \relative c' {
    \key ef \major
    \time 4/4 
    \relative c' {
        ef2.. d8 ( |
        bf8 ) d ( ef ) g (  d ) ef ( g ) bf ( |
        ef,8 ) g ( bf ) d (  g, ) bf ( d ) ef ( | 
        bf8 ) d ( ef ) g (  d ) ef ( g ) bf ( |
        ef,2) 8  g ( bf ) d (  |
        g,8 ) bf ( d ) ef (  
        bf8 ) d ( ef ) g, ( |
        ef'1 ) |
    }
    \relative d''' { 
        ef8 d ( bf ) g (   d' ) bf ( g ) ef ( |
        bf'8 ) g ( ef ) d (  g ) ef ( d ) bf ( 
        ef2 ) 8 d ( bf ) g (  |
        d'8 ) bf ( g ) ef (  
        bf'8 ) g ( ef ) d (  |
        g ) ef ( d ) bf ( 
        ef2 ) | 
    }
    \bar "||"
}

majorSeventhArpeggioE = \relative c' {
    \key e \major
    \time 4/4 
    \relative c' { 
        e2.. ds8 ( |
        b8 ) ds ( e ) gs (  ds ) e ( gs ) b ( | 
        e,8 ) gs ( b ) ds (  gs, ) b ( ds ) e (  |
        b8 ) ds ( e ) gs (  ds ) e ( gs ) b ( |
        e,2)  8  gs ( b ) ds (  |
        gs,8 ) b ( ds ) e ( 
        b8 ) ds ( e ) gs, ( |
        e'1 )  |
    }
    \relative c''' { 
        e8 ds ( b ) gs (  ds' ) b ( gs ) e ( |
        b'8 ) gs ( e ) ds (  gs ) e ( ds ) b ( | 
        e8 ) ds ( b ) gs (  ds' ) b ( gs ) e ( | 
        b'8 ) gs ( e ) ds (  gs ) e ( ds ) b ( | 
        e1 ) |    
    }
    \bar "||"
}

majorSeventhArpeggioF = \relative c' {
    \key f \major
    \time 4/4 
    \relative c' { 
        f2..  e8 ( |
        c8 ) e ( f ) a (  
        e8 ) f ( a ) c ( |
        f,8 ) a ( c ) e (        
        a,8 ) c ( e ) f ( | 
        c8 ) e ( f ) a ( 
        e8 ) f ( a ) c ( |
        f,2 )  8 a ( c ) e ( |        
        a,8 ) c ( e ) f ( 
        c8 ) e ( f ) a, ( |
        f'1 ) |
    }
    \relative c''' { 
        f8  e ( c ) a ( 
        e'8 ) c ( a ) f ( | 
        c'8 ) a ( f ) e ( 
        a8 ) f ( e ) c ( | 
        f2 )  8  e ( c ) a ( | 
        e'8 ) c ( a ) f ( 
        c'8 ) a ( f ) e ( |
        a8 ) f ( e ) c ( 
        f8 ) e ( c ) e ( |
        f1 ) 
    }
    \bar "||"
}

majorSeventhArpeggioFSharp = \relative c' {
    \key fs \major
    \time 4/4 
    \relative c' { 
        fs2. ( es8 ) cs ( |
        as8 ) cs ( es ) fs ( 
        cs8 ) es ( fs ) as ( | 
        es8 ) fs ( as ) cs ( 
        fs,8 ) as ( cs ) es ( |        
        as,8 ) cs ( es ) fs (  
        cs8 ) es ( fs ) as ( |
        es8 ) fs ( as ) cs ( 
        fs,2 ) |
        fs8 as ( cs ) es (         
        as,8 ) cs ( es ) fs, ( | 
        cs'8 ) es ( fs, ) as ( 
        es ) fs, ( as ) cs ( | 
        fs1 ) 
    }
    \relative cs'' { 
        fs8 es' ( cs ) as (  es' ) cs ( as ) fs ( | 
        cs'8 ) as ( fs ) es (  as ) fs ( es ) cs ( | 
        fs2 ) 8 es ( cs ) as (  |
        es'8 ) cs ( as ) fs (  
        cs'8 ) as ( fs ) es (  |
        as8 ) fs ( es ) cs ( 
        fs8 ) es ( cs ) as ( |
        fs'1 ) | 
    }
    \bar "||"
}

majorSeventhArpeggioG = \relative c' {
    \key g \major
    \time 4/4 
    \relative c'' { 
        g2. ( fs8 ) d ( |
        b8 ) d ( fs ) g (  d ) fs ( g ) b ( | 
        fs8 ) g ( b ) d (  g,2 ) |
        g8 b ( d ) fs ( b, ) d ( fs ) g ( |
        d8 ) fs ( g ) b ( fs ) g ( b ) d (  |
        g,2. )  
    }
    \relative c''' { 
        g8 fs ( 
        d' ) b ( g ) fs (  b ) g ( fs ) d (  
        g8 ) fs ( d ) b (  fs' ) d ( b ) g ( |
        d'8 ) b ( g ) fs (  b ) g ( fs ) d (  
        g8 ) fs ( d ) b (  fs' ) d ( b ) d ( |
        g1 ) 
    }
    \bar "||"
}

majorSeventhArpeggioAFlat = \relative c' {
    \key af \major
    \time 4/4 
    \relative c'' { 
        af2. ( g8 ) ef ( |
        c8 ) ef ( g ) af (  ef ) g ( af ) c ( | 
        g8 ) af ( c ) ef (  af,2 ) |
        af8 c ( ef ) g ( c, ) ef ( g ) af ( |
        ef8 ) g ( af ) c ( g ) af ( c ) ef (  |
        af,8 ) c ( ef ) g, ( af2 ) |
    }
    \relative c''' { 
        ef8 c ( af ) g (   c ) af ( g ) ef (  |
        af8 ) g ( ef ) c (   g'8 ) ef ( c ) af ( |
        ef' ) c ( af ) g (   c8 ) af ( g ) ef ( |
        af ) g ( ef ) c (   g' ) ef ( c ) g' ( |
        af1 ) 
    }
    \bar "||"
}

majorSeventhArpeggioBFlat = \relative c' {
    \key bf \major
    \time 4/4 
    \relative c'' {
        bf2 ~ 8 a ( f ) d ( | 
        bf8 ) d ( f ) a (  d, ) f ( a ) bf (  |
        f8 ) a ( bf ) d (  a ) bf ( d ) f ( |
        bf,2 ) 8 d ( f ) a (  |
        d, ) f ( a ) bf ( 
        f8 ) a ( bf ) d (  |
        a8 ) bf ( d ) f ( 
        bf,2 ) |
    }
    \relative c''' { 
        f8 d ( bf ) a ( d ) bf ( a ) f ( |
        bf8 ) a ( f ) d (  a' ) f ( d ) bf (|
        f'8 ) d ( bf ) a (  d ) bf ( a ) f ( |
        bf2 ) 8  a ( f ) d ( |
        a'8 ) f ( d ) bf (  
        f'8 ) d ( bf ) a' ( |
        bf1 ) |  
    }
    \bar "||"
}


majorSeventhArpeggioB = \relative c' {
    \key b \major
    \time 4/4 
    \relative c'' { 
        b2  ( as8 ) fs ( ds ) b ( |
        as8 ) b ( ds ) fs (  b, ) ds ( fs ) as ( |
        ds,8 ) fs ( as ) b (  fs ) as ( b ) ds (  
        as8 ) b ( ds ) fs (  b,2 ) |
        b8 ds ( fs ) as (  
        ds,8 ) fs ( as ) b (  |
        fs8 ) as ( b ) ds (  
        as8 ) b ( ds ) fs, ( | \noBreak
        b1 ) |
    }
    \relative c''' { 
        ds8  b ( as ) fs (  b ) as ( fs ) ds (  |
        as'8 ) fs ( ds ) b (  fs' ) ds ( b ) as ( |
        ds8 ) b ( as ) fs (  b2 ) |
        b8 as ( fs ) ds ( 
        as'8 ) fs ( ds ) b ( |
        fs'8 ) ds ( b ) as ( 
        ds8 ) b ( as ) fs' ( |
        b1 ) 
    }
    \bar "||"
}

