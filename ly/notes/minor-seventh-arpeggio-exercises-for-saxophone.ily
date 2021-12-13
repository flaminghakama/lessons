
minorSeventhArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m7
}

minorSeventhArpeggioC = \relative c' {
    \key c \minor
    \time 4/4 
    \relative c'' {
        c2 ( bf8 ) g ( ef ) c ( |
        bf8 ) c ( ef ) g (  c, ) ef ( g ) bf (  |
        ef,8 ) g ( bf ) c (  g ) bf ( c ) ef (  |
        bf8 ) c ( ef ) g (  c, ) ef ( g ) bf (  |
        ef,8 ) g ( bf ) c (  g ) bf ( c ) ef (  |
        bf8 ) c ( ef ) g, ( c2 ) |
    }
    \relative c''' { 
        ef8 c ( bf ) g (  c ) bf ( g ) ef (  |
        bf'8 ) g ( ef ) c (  g' ) ef ( c ) bf ( |
        ef8 ) c ( bf ) g (  c ) bf ( g ) ef ( |
        bf'8 ) g ( ef ) c (   g' ) ef ( c ) bf ( | 
        ef8 ) c ( bf ) g' ( c2 )
    }
    \bar "||"
}

minorSeventhArpeggioD = \relative c' {
    \key d \minor
    \time 4/4 
    \relative c'' {
        d2 (  c8 ) a (  f ) d ( |
        c8 ) d ( f ) a (  d, ) f ( a ) c (  |
        f,8 ) a ( c ) d (  a ) c ( d ) f (  |
        c8 ) d ( f ) a (  d, ) f ( a ) c (  |
        f,8 ) a ( c ) d ( a8 ) c ( d ) f ( |
        c8 ) d ( f ) a, ( d2 )  |
    }
    \relative c''' { 
        f8  d ( c ) a ( d ) c ( a ) f (  
        c'8 ) a ( f ) d (  
        a'8 ) f ( d ) c ( |
        f ) d ( c ) a (  
        d8 ) c ( a ) f ( | 
        c'8 ) a ( f ) d (  
        a'8 ) f ( d ) c ( | 
        f8 ) d ( c ) a' ( 
        d2 ) |    
    }
    \bar "||"
}

minorSeventhArpeggioDSharp = \relative c' {
    \key ds \minor
    \time 4/4 
    \relative c'' {
        ds2 (  cs8 ) as (  fs ) ds ( |
        cs8 ) ds ( fs ) as (  ds, ) fs ( as ) cs (  |
        fs,8 ) as ( cs ) ds (  as ) cs ( ds ) fs (  |
        cs8 ) ds ( fs ) as (  ds, ) fs ( as ) cs (  |
        fs,8 ) as ( cs ) ds ( as8 ) cs ( ds ) fs, ( |
        ds'1 )  |
    }
    \relative cs''' { 
        ds8  cs ( as ) fs ( cs' ) as ( fs ) ds ( |
        as'8 ) fs ( ds ) cs ( fs ) ds ( cs ) as ( |
        ds8 ) cs ( as ) fs ( cs' ) as ( fs ) ds ( |
        as'8 ) fs ( ds ) cs ( fs ) ds ( cs ) as' ( | 
        ds1 ) |
    }
    \bar "||"
}

minorSeventhArpeggioE = \relative c' {
    \key e \minor
    \time 4/4 
    \relative c' { 
        e2.. d8 ( |
        b8 ) d ( e ) g (  d ) e ( g ) b ( | 
        e,8 ) g ( b ) d (  g, ) b ( d ) e (  |
        b8 ) d ( e ) g (  d ) e ( g ) b ( |
        e,8 ) g ( b ) d (  g, ) b ( d ) e ( |
        b8 ) d ( e ) g, ( e'2 )  |
    }
    \relative c''' { 
        e8 d ( b ) g (  d' ) b ( g ) e ( |
        b'8 ) g ( e ) d (  g ) e ( d ) b ( | 
        e8 ) d ( b ) g (  d' ) b ( g ) e ( | 
        b'8 ) g ( e ) d (  g ) e ( d ) b ( | 
        e1 ) |    
    }
    \bar "||"
}

minorSeventhArpeggioEFlat = \relative c' {
    \key ef \minor
    \time 4/4 
    \relative c' { 
        ef2.. df8 ( |
        bf8 ) df ( ef ) gf (  df ) ef ( gf ) bf ( | 
        ef,8 ) gf ( bf ) df (  gf, ) bf ( df ) ef (  |
        bf8 ) df ( ef ) gf (  df ) ef ( gf ) bf ( |
        ef,8 ) gf ( bf ) df (  gf, ) bf ( df ) ef ( |
        bf8 ) df ( ef ) gf, ( ef'2 )  |
    }
    \relative c''' { 
        ef8 df ( bf ) gf (  df' ) bf ( gf ) ef ( |
        bf'8 ) gf ( ef ) df (  gf ) ef ( df ) bf ( | 
        ef8 ) df ( bf ) gf (  df' ) bf ( gf ) ef ( | 
        bf'8 ) gf ( ef ) df (  gf ) ef ( df ) bf ( | 
        ef1 ) |    
    }
    \bar "||"
}

minorSeventhArpeggioF = \relative c' {
    \key f \minor
    \time 4/4 
    \relative c' { 
        f2..  ef8 ( |
        c8 ) ef ( f ) af (  
        ef8 ) f ( af ) c ( |
        f,8 ) af ( c ) ef (        
        af,8 ) c ( ef ) f ( | 
        c8 ) ef ( f ) af ( 
        ef8 ) f ( af ) c ( |
        f,8 ) af ( c ) ef (        
        af,8 ) c ( ef ) f ( |
        c8 ) ef ( f ) af, ( 
        f'2 ) |
    }
    \relative c''' { 
        f8  ef ( c ) af ( 
        ef'8 ) c ( af ) f ( | 
        c'8 ) af ( f ) ef ( 
        af8 ) f ( ef ) c ( | 
        f8 ) ef ( c ) af ( 
        ef'8 ) c ( af ) f ( | 
        c'8 ) af ( f ) ef ( 
        af8 ) f ( ef ) c ( | 
        f8 ) ef ( c ) ef ( 
        f2 ) 
    }
    \bar "||"
}

minorSeventhArpeggioFSharp = \relative c' {
    \key fs \minor
    \time 4/4 
    \relative c' { 
        fs2..  e8 ( |
        cs8 ) e ( fs ) a (  
        e8 ) fs ( a ) cs ( |
        fs,8 ) a ( cs ) e (        
        a,8 ) cs ( e ) fs ( | 
        cs8 ) e ( fs ) a ( 
        e8 ) fs ( a ) cs ( |
        fs,8 ) a ( cs ) e (        
        a,8 ) cs ( e ) a, ( |
        fs1 ) |
    }
    \relative cs''' { 
        e8 cs ( a ) fs (  cs' ) a ( fs ) e ( |
        a8 ) fs ( e ) cs (  fs ) e ( cs ) a ( |
        e'8 ) cs ( a ) fs (  cs' ) a ( fs ) e ( |
        a8 ) fs ( e ) cs (  fs ) e ( cs ) e ( |
        fs1 ) 
    }
    \bar "||"
}

minorSeventhArpeggioG = \relative c' {
    \key g \minor
    \time 4/4 
    \relative c'' { 
        g2. ( f8 ) d ( |
        bf8 ) d ( f ) g (  d ) f ( g ) bf ( | 
        f8 ) g ( bf ) d (  g,2 ) |
        g8 bf ( d ) f ( bf, ) d ( f ) g ( |
        d8 ) f ( g ) bf ( f ) g ( bf ) d (  |
        g,8 ) bf ( d ) f ( bf, ) d ( f ) bf, ( |
        g1 )  
    }
    \relative bf''' { 
        f8 d ( bf ) g ( 
        d'8 ) bf ( g ) f ( |
        bf8 ) g ( f ) d ( 
        g8 ) f ( d ) bf ( |  
        f'8 ) d ( bf ) g ( 
        d' ) bf ( g ) f ( |  
        bf8 ) g ( f ) d ( 
        g ) f ( d ) bf ( |  
        f'8 ) d ( bf ) f' ( 
        g2 ) | 
    }
    \bar "||"
}

minorSeventhArpeggioGSharp = \relative c' {
    \key gs \minor
    \time 4/4 
    \relative c'' { 
        gs2. ( fs8 ) ds ( |
        b8 ) ds ( fs ) gs (  ds ) fs ( gs ) b ( | 
        fs8 ) gs ( b ) ds (  gs,2 ) |
        gs8 b ( ds ) fs ( b, ) ds ( fs ) gs ( |
        ds8 ) fs ( gs ) b ( fs ) gs ( b ) ds (  |
        gs,8 ) b ( ds ) fs, ( gs2 ) |
    }
    \relative b'' { 
        ds8 b ( gs ) fs (   b ) gs ( fs ) ds (  |
        gs8 ) fs ( ds ) b (   fs'8 ) ds ( b ) gs ( |
        ds' ) b ( gs ) fs (   b8 ) gs ( fs ) ds ( |
        gs ) fs ( ds ) b (   fs' ) ds ( b ) fs' ( |
        gs1 ) 
    }
    \bar "||"
}

minorSeventhArpeggioBFlat = \relative c' {
    \key bf \minor
    \time 4/4 
    \relative c'' {
        bf2 ~ 8 af ( f ) df ( | 
        bf8 ) df ( f ) af (  df, ) f ( af ) bf (  |
        f8 ) af ( bf ) df (  af ) bf ( df ) f ( |
        bf,8 ) df ( f ) af (  df, ) f ( af ) bf ( |
        f8 ) af ( bf ) df (  af ) bf ( df ) f ( | \noBreak
        bf,1 ) |
    }
    \relative c''' { 
        f8 df ( bf ) af ( df ) bf ( af ) f ( |
        bf8 ) af ( f ) df (  af' ) f ( df ) bf (|
        f'8 ) df ( bf ) af (  df ) bf ( af ) f ( |
        bf8 ) af ( f ) df ( af' ) f ( df ) bf ( | 
        f'8 ) df ( bf ) af' ( bf2 ) |  
    }
    \bar "||"
}


minorSeventhArpeggioB = \relative c' {
    \key b \minor
    \time 4/4 
    \relative c'' { 
        b2 ~ 8 a ( fs ) d ( |
        b8 ) d ( fs ) a (  d, ) fs ( a ) b (  |
        fs8 ) a ( b ) d (  a ) b ( d ) fs ( |
        b,8 ) d ( fs ) a (  d, ) fs ( a ) b ( |
        fs8 ) a ( b ) d (  a ) b ( d ) fs, ( | \noBreak
        b1 ) |
    }
    \relative c''' { 
        d8  b ( a ) fs (  b ) a ( fs ) d (  |
        a'8 ) fs ( d ) b (  fs' ) d ( b ) a ( |
        d8 ) b ( a ) fs (  b ) a ( fs ) d ( |
        a'8 ) fs ( d ) b ( fs' ) d ( b ) a' ( | 
        b1 )
    }
    \bar "||"
}

