
halfDiminishedArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    b1:m7.5-
}

halfDiminishedArpeggioC = \relative c' {
    \key df \major
    \time 4/4 
    \relative c'' {
        c2 ( bf8 ) gf ( ef ) c ( |
        bf8 ) c ( ef ) gf (  c, ) ef ( gf ) bf (  |
        ef,8 ) gf ( bf ) c (  gf ) bf ( c ) ef (  |
        bf8 ) c ( ef ) gf (  c, ) ef ( gf ) bf (  |
        ef,8 ) gf ( bf ) c (  gf ) bf ( c ) ef (  |
        bf8 ) c ( ef ) gf, ( c2 ) |
    }
    \relative c''' { 
        ef8 c ( bf ) gf (  c ) bf ( gf ) ef (  |
        bf'8 ) gf ( ef ) c (  gf' ) ef ( c ) bf ( |
        ef8 ) c ( bf ) gf (  c ) bf ( gf ) ef ( |
        bf'8 ) gf ( ef ) c (   gf' ) ef ( c ) bf ( | 
        ef8 ) c ( bf ) gf' ( c2 )
    }
    \bar "||"
}

halfDiminishedArpeggioD = \relative c' {
    \key ef \major
    \time 4/4 
    \relative c'' {
        d2 (  c8 ) af (  f ) d ( |
        c8 ) d ( f ) af (  d, ) f ( af ) c (  |
        f,8 ) af ( c ) d (  af ) c ( d ) f (  |
        c8 ) d ( f ) af (  d, ) f ( af ) c (  |
        f,8 ) af ( c ) d ( af8 ) c ( d ) f ( |
        c8 ) d ( f ) af, ( d2 )  |
    }
    \relative c''' { 
        f8  d ( c ) af ( d ) c ( af ) f (  
        c'8 ) af ( f ) d (  
        af'8 ) f ( d ) c ( |
        f ) d ( c ) af (  
        d8 ) c ( af ) f ( | 
        c'8 ) af ( f ) d (  
        af'8 ) f ( d ) c ( | 
        f8 ) d ( c ) af' ( 
        d2 ) |    
    }
    \bar "||"
}

halfDiminishedArpeggioDSharp = \relative c' {
    \key e \major
    \time 4/4 
    \relative c'' {
        ds2 (  cs8 ) a (  fs ) ds ( |
        cs8 ) ds ( fs ) a (  ds, ) fs ( a ) cs (  |
        fs,8 ) a ( cs ) ds (  a ) cs ( ds ) fs (  |
        cs8 ) ds ( fs ) a (  ds, ) fs ( a ) cs (  |
        fs,8 ) a ( cs ) ds ( a8 ) cs ( ds ) fs, ( |
        ds'1 )  |
    }
    \relative cs''' { 
        ds8  cs ( a ) fs ( cs' ) a ( fs ) ds ( |
        a'8 ) fs ( ds ) cs ( fs ) ds ( cs ) a ( |
        ds8 ) cs ( a ) fs ( cs' ) a ( fs ) ds ( |
        a'8 ) fs ( ds ) cs ( fs ) ds ( cs ) a' ( | 
        ds1 ) |
    }
    \bar "||"
}

halfDiminishedArpeggioE = \relative c' {
    \key f \major
    \time 4/4 
    \relative c' { 
        e2.. d8 ( |
        bf8 ) d ( e ) g (  d ) e ( g ) bf ( | 
        e,8 ) g ( bf ) d (  g, ) bf ( d ) e (  |
        bf8 ) d ( e ) g (  d ) e ( g ) bf ( |
        e,8 ) g ( bf ) d (  g, ) bf ( d ) e ( |
        bf8 ) d ( e ) g, ( e'2 )  |
    }
    \relative c''' { 
        e8 d ( bf ) g (  d' ) bf ( g ) e ( |
        bf'8 ) g ( e ) d (  g ) e ( d ) bf ( | 
        e8 ) d ( bf ) g (  d' ) bf ( g ) e ( | 
        bf'8 ) g ( e ) d (  g ) e ( d ) bf ( | 
        e1 ) |    
    }
    \bar "||"
}

halfDiminishedArpeggioEFlat = \relative c' {
    \key af \major
    \time 4/4 
    \relative c' { 
        ef2.. df8 ( |
        bff8 ) df ( ef ) g (  df ) ef ( g ) bff ( | 
        ef,8 ) g ( bff ) df (  g, ) bff ( df ) ef (  |
        bff8 ) df ( ef ) g (  df ) ef ( g ) bff ( |
        ef,8 ) g ( bff ) df (  g, ) bff ( df ) ef ( |
        bff8 ) df ( ef ) g, ( ef'2 )  |
    }
    \relative c''' { 
        ef8 df ( bff ) g (  df' ) bff ( g ) ef ( |
        bff'8 ) g ( ef ) df (  g ) ef ( df ) bff ( | 
        ef8 ) df ( bff ) g (  df' ) bff ( g ) ef ( | 
        bff'8 ) g ( ef ) df (  g ) ef ( df ) bff ( | 
        ef1 ) |    
    }
    \bar "||"
}

halfDiminishedArpeggioF = \relative c' {
    \key gf \major
    \time 4/4 
    \relative c' { 
        f2..  ef8 ( |
        cf8 ) ef ( f ) af (  
        ef8 ) f ( af ) cf ( |
        f,8 ) af ( cf ) ef (        
        af,8 ) cf ( ef ) f ( | 
        cf8 ) ef ( f ) af ( 
        ef8 ) f ( af ) cf ( |
        f,8 ) af ( cf ) ef (        
        af,8 ) cf ( ef ) f ( |
        cf8 ) ef ( f ) af, ( 
        f'2 ) |
    }
    \relative c''' { 
        f8 ef ( cf ) af (
        ef'8 ) cf ( af ) f ( | 
        cf'8 ) af ( f ) ef ( 
        af8 ) f ( ef ) cf ( | 
        f8 ) ef ( cf ) af ( 
        ef'8 ) cf ( af ) f ( | 
        cf'8 ) af ( f ) ef ( 
        af8 ) f ( ef ) cf ( | 
        f8 ) ef ( cf ) ef ( 
        f2 ) | 
    }
    \bar "||"
}

halfDiminishedArpeggioFSharp = \relative c' {
    \key g \major
    \time 4/4 
    \relative c' { 
        fs2..  e8 ( |
        c8 ) e ( fs ) a (  
        e8 ) fs ( a ) c ( |
        fs,8 ) a ( c ) e (        
        a,8 ) c ( e ) fs ( | 
        c8 ) e ( fs ) a ( 
        e8 ) fs ( a ) c ( |
        fs,8 ) a ( c ) e (        
        a,8 ) c ( e ) a, ( |
        fs1 ) |
    }
    \relative c''' { 
        e8 c ( a ) fs (  c' ) a ( fs ) e ( |
        a8 ) fs ( e ) c (  fs ) e ( c ) a ( |
        e'8 ) c ( a ) fs (  c' ) a ( fs ) e ( |
        a8 ) fs ( e ) c (  fs ) e ( c ) e ( |
        fs1 ) 
    }
    \bar "||"
}

halfDiminishedArpeggioG = \relative c' {
    \key af \major
    \time 4/4 
    \relative c'' { 
        g2. ( f8 ) df ( |
        bf8 ) df ( f ) g (  df ) f ( g ) bf ( | 
        f8 ) g ( bf ) df (  g,2 ) |
        g8 bf ( df ) f ( bf, ) df ( f ) g ( |
        df8 ) f ( g ) bf ( f ) g ( bf ) df (  |
        g,8 ) bf ( df ) f ( bf, ) df ( f ) bf, ( |
        g1 )  
    }
    \relative bf''' { 
        f8 df ( bf ) g ( 
        df'8 ) bf ( g ) f ( |
        bf8 ) g ( f ) df ( 
        g8 ) f ( df ) bf ( |  
        f'8 ) df ( bf ) g ( 
        df' ) bf ( g ) f ( |  
        bf8 ) g ( f ) df ( 
        g ) f ( df ) bf ( |  
        f'8 ) df ( bf ) f' ( 
        g2 ) | 
    }
    \bar "||"
}

halfDiminishedArpeggioGSharp = \relative c' {
    \key a \major
    \time 4/4 
    \relative c'' { 
        gs2. ( fs8 ) d ( |
        b8 ) d ( fs ) gs (  d ) fs ( gs ) b ( | 
        fs8 ) gs ( b ) d (  gs,2 ) |
        gs8 b ( d ) fs ( b, ) d ( fs ) gs ( |
        d8 ) fs ( gs ) b ( fs ) gs ( b ) d (  |
        gs,8 ) b ( d ) fs, ( gs2 ) |
    }
    \relative b'' { 
        d8 b ( gs ) fs (   b ) gs ( fs ) d (  |
        gs8 ) fs ( d ) b (   fs'8 ) d ( b ) gs ( |
        d' ) b ( gs ) fs (   b8 ) gs ( fs ) d ( |
        gs ) fs ( d ) b (   fs' ) d ( b ) fs' ( |
        gs1 ) 
    }
    \bar "||"
}

halfDiminishedArpeggioB = \relative c' {
    \key c \major
    \time 4/4 
    \relative c'' { 
        b2 ~ 8 a ( f ) ds ( |
        b8 ) ds ( f ) a (  ds, ) f ( a ) b (  |
        f8 ) a ( b ) ds (  a ) b ( ds ) f ( |
        b,8 ) ds ( f ) a (  ds, ) f ( a ) b ( |
        f8 ) a ( b ) ds (  a ) b ( ds ) f, ( | \noBreak
        b1 ) |
    }
    \relative c''' { 
        ds8  b ( a ) f (  b ) a ( f ) ds (  |
        a'8 ) f ( ds ) b (  f' ) ds ( b ) a ( |
        ds8 ) b ( a ) f (  b ) a ( f ) ds ( |
        a'8 ) f ( ds ) b ( f' ) ds ( b ) a' ( | 
        b1 )
    }
    \bar "||"
}

halfDiminishedArpeggioBFlat = \relative c' {
    \key cf \major
    \time 4/4 
    \relative c'' {
        bf2 ~ 8 af ( ff ) df ( | 
        bf8 ) df ( ff ) af (  df, ) ff ( af ) bf (  |
        ff8 ) af ( bf ) df (  af ) bf ( df ) ff ( |
        bf,8 ) df ( ff ) af (  df, ) ff ( af ) bf ( |
        ff8 ) af ( bf ) df (  af ) bf ( df ) ff ( | \noBreak
        bf,1 ) |
    }
    \relative c''' { 
        ff8 df ( bf ) af ( df ) bf ( af ) ff ( |
        bf8 ) af ( ff ) df (  af' ) ff ( df ) bf (|
        ff'8 ) df ( bf ) af (  df ) bf ( af ) ff ( |
        bf8 ) af ( ff ) df ( af' ) ff ( df ) bf ( | 
        ff'8 ) df ( bf ) af' ( bf2 ) |  
    }
    \bar "||"
}
