
dominantArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:7
}
dominantArpeggioC = \relative c' {
    \key f \major
    \time 4/4 
    \relative c'' {
        c2 ( bf8 ) g ( e ) c ( |
        bf8 ) c ( e ) g (  c, ) e ( g ) bf (  |
        e,8 ) g ( bf ) c (  g ) bf ( c ) e (  |
        bf8 ) c ( e ) g (  c, ) e ( g ) bf (  |
        e,8 ) g ( bf ) c (  g ) bf ( c ) e (  |
        bf8 ) c ( e ) g, ( c2 ) |
    }
    \relative c''' { 
        e8 c ( bf ) g (  c ) bf ( g ) e (  |
        bf'8 ) g ( e ) c (  g' ) e ( c ) bf ( |
        e8 ) c ( bf ) g (  c ) bf ( g ) e ( |
        bf'8 ) g ( e ) c (   g' ) e ( c ) bf ( | 
        e8 ) c ( bf ) g' ( c2 )
    }
    \bar "||"
}
dominantArpeggioB = \relative c' {
    \key e \major
    \time 4/4 
    \relative c'' { 
        b2 ~ 8 a ( fs ) ds ( |
        b8 ) ds ( fs ) a (  ds, ) fs ( a ) b (  |
        fs8 ) a ( b ) ds (  a ) b ( ds ) fs ( |
        b,8 ) ds ( fs ) a (  ds, ) fs ( a ) b ( |
        fs8 ) a ( b ) ds (  a ) b ( ds ) fs, ( | \noBreak
        b1 ) |
    }
    \relative c''' { 
        ds8  b ( a ) fs (  b ) a ( fs ) ds (  |
        a'8 ) fs ( ds ) b (  fs' ) ds ( b ) a ( |
        ds8 ) b ( a ) fs (  b ) a ( fs ) ds ( |
        a'8 ) fs ( ds ) b ( fs' ) ds ( b ) a' ( | 
        b1 )
    }
    \bar "||"
}

dominantArpeggioBFlat = \relative c' {
    \key ef \major
    \time 4/4 
    \relative c'' {
        bf2 ~ 8 af ( f ) d ( | 
        bf8 ) d ( f ) af (  d, ) f ( af ) bf (  |
        f8 ) af ( bf ) d (  af ) bf ( d ) f ( |
        bf,8 ) d ( f ) af (  d, ) f ( af ) bf ( |
        f8 ) af ( bf ) d (  af ) bf ( d ) f ( | \noBreak
        bf,1 ) |
    }
    \relative c''' { 
        f8 d ( bf ) af ( d ) bf ( af ) f ( |
        bf8 ) af ( f ) d (  af' ) f ( d ) bf (|
        f'8 ) d ( bf ) af (  d ) bf ( af ) f ( |
        bf8 ) af ( f ) d ( af' ) f ( d ) bf ( | 
        f'8 ) d ( bf ) af' ( bf2 ) |  
    }
    \bar "||"
}

dominantArpeggioD = \relative c' {
    \key g \major
    \time 4/4 
    \relative c'' {
        d2 ( c8 ) a ( fs ) d ( |
        c8 ) d ( fs ) a (  d, ) fs ( a ) c (  |
        fs,8 ) a ( c ) d (  a ) c ( d ) fs (  |
        c8 ) d ( fs ) a (  d, ) fs ( a ) c (  |
        fs,8 ) a ( c ) d (   a8 ) c ( d ) fs, (|  
        d'1 )  |
    }
    \relative c''' { 
        d8 c ( a ) fs (  c' ) a ( fs ) d ( |
        a'8 ) fs ( d ) c (  fs ) d ( c ) a ( | 
        d8 ) c ( a ) fs (  c' ) a ( fs ) d ( | 
        a'8 ) fs ( d ) c (  fs ) d ( c ) a' ( | 
        d1 ) |    
    }
    \bar "||"
}

dominantArpeggioEFlat = \relative c' {
    \key af \major
    \time 4/4 
    \relative c' { 
        ef2.. df8 ( |
        bf8 ) df ( ef ) g (  df ) ef ( g ) bf ( | 
        ef,8 ) g ( bf ) df (  g, ) bf ( df ) ef (  |
        bf8 ) df ( ef ) g (  df ) ef ( g ) bf ( |
        ef,8 ) g ( bf ) df (  g, ) bf ( df ) ef ( |
        bf8 ) df ( ef ) g, ( ef'2 )  |
    }
    \relative c''' { 
        ef8 df ( bf ) g (  df' ) bf ( g ) ef ( |
        bf'8 ) g ( ef ) df (  g ) ef ( df ) bf ( | 
        ef8 ) df ( bf ) g (  df' ) bf ( g ) ef ( | 
        bf'8 ) g ( ef ) df (  g ) ef ( df ) bf ( | 
        ef1 ) |    
    }
    \bar "||"
}

dominantArpeggioFSharp = \relative c' {
    \key b \major
    \time 4/4 
    \relative c' { 
        fs2. ( e8 ) cs ( |
        as8 ) cs ( e ) fs (  cs ) e ( fs ) as ( | 
        e8 ) fs ( as ) cs (  fs, ) as ( cs ) e ( |       
        as,8 ) cs ( e ) fs (  cs ) e ( fs ) as ( |
        e8 ) fs ( as ) cs (  fs, ) as ( cs ) e ( |       
        as,8 ) cs ( e ) as, ( fs2 ) |
    }
    \relative c''' { 
        e8 cs ( as ) fs (  cs' ) as ( fs ) e ( |
        as8 ) fs ( e ) cs (  fs ) e ( cs ) as ( |
        e'8 ) cs ( as ) fs (  cs' ) as ( fs ) e ( |
        as8 ) fs ( e ) cs (  fs ) e ( cs ) as ( |
        fs'1 ) 
    }
    \bar "||"
}

dominantArpeggioAFlat = \relative c' {
    \key df \major
    \time 4/4 
    \relative c'' { 
        af2. ( gf8 ) ef ( |
        c8 ) ef ( gf ) af (  ef ) gf ( af ) c ( | 
        gf8 ) af ( c ) ef (  af,2 ) |
        af8 c ( ef ) gf ( c, ) ef ( gf ) af ( |
        ef8 ) gf ( af ) c ( gf ) af ( c ) ef (  |
        af,8 ) c ( ef ) gf, ( af2 ) |
    }
    \relative c''' { 
        ef8 c ( af ) gf (   c ) af ( gf ) ef (  |
        af8 ) gf ( ef ) c (   gf'8 ) ef ( c ) af ( |
        ef' ) c ( af ) gf (   c8 ) af ( gf ) ef ( |
        af ) gf ( ef ) c (   gf' ) ef ( c ) gf' ( |
        af1 ) 
    }
    \bar "||"
}
