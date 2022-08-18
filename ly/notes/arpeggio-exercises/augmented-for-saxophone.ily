
augmentedArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:aug7
}
augmentedArpeggioC = \relative c' {
    \key f \major
    \time 4/4 
    \relative c'' {
        c2 ( bf8 ) gs ( e ) c ( |
        bf8 ) c ( e ) gs (  c, ) e ( gs ) bf (  |
        e,8 ) gs ( bf ) c (  gs ) bf ( c ) e (  |
        bf8 ) c ( e ) gs (  c,2 ) |
        c8 e ( gs ) bf (  
        e,8 ) gs ( bf ) c ( | 
        gs8 ) bf ( c ) e (  
        bf8 ) c ( e ) gs, ( |
        c2. )
    }
    \relative c''' { 
        c8  bf ( |
        e8 ) c ( bf ) gs (  c ) bf ( gs ) e (  |
        bf'8 ) gs ( e ) c (  gs' ) e ( c ) bf ( |
        e8 ) c ( bf ) gs (  c2 ) |
        
        c8 bf ( gs ) e ( 
        bf'8 ) gs ( e ) c ( |  
        gs'8 ) e ( c ) bf ( 
        e8 ) c ( bf ) gs' ( |
        c1 )
    }
    \bar "||"
}
augmentedArpeggioB = \relative c' {
    \key e \major
    \time 4/4 
    \relative c'' { 
        b2 ~ 8 a ( fss ) ds ( |
        b8 ) ds ( fss ) a (  ds, ) fss ( a ) b (  |
        fss8 ) a ( b ) ds (  a ) b ( ds ) fss ( |
        b,2 ) b8 ds ( fss ) a (  |
        ds,8 ) fss ( a ) b ( 
        fss8 ) a ( b ) ds ( | 
        a8 ) b ( ds ) fss, (
        b2 ) |
    }
    \relative c''' { 
        r4 b8 a ( 
        ds8 ) b ( a ) fss ( | 
        b8 ) a ( fss ) ds ( 
        a'8 ) fss ( ds ) b ( | 
        fss' ) ds ( b ) a ( 
        ds8 ) b ( a ) fss ( | 
        b2 ) b8 a ( fss ) ds ( |
        a'8 ) fss ( ds ) b ( fss' ) ds ( b ) a' ( | 
        b1 )
    }
    \bar "||"
}

augmentedArpeggioBFlat = \relative c' {
    \key ef \major
    \time 4/4 
    \relative c'' {
        bf2 ~ 8 af ( fs ) d ( | 
        bf8 ) d ( fs ) af (  d, ) fs ( af ) bf (  |
        fs8 ) af ( bf ) d (  af ) bf ( d ) fs ( |
        bf,2 ) bf8 d ( fs ) af ( | 
        d, ) fs ( af ) bf ( 
        fs8 ) af ( bf ) d ( | 
        af ) bf ( d ) fs, ( 
        bf2 ) |
    }
    \relative c''' { 
        r8  bf8 ( af [ ) fs8 ] ( 
        d'8 ) bf ( af ) fs ( |
        bf8 ) af ( fs ) d (  
        af'8 ) fs ( d ) bf ( |
        fs'8 ) d ( bf ) af (  
        d8 ) bf ( af ) fs ( |
        bf2 ) 
        bf8 af ( fs ) d ( |
        af'8 ) fs ( d ) bf (
        fs'8 ) d ( bf ) af' ( | 
        d,8 ) bf ( af' ) fs ( 
        bf,2 ) |
 
    }
    \bar "||"
}

augmentedArpeggioD = \relative c' {
    \key g \major
    \time 4/4 
    \relative c' {
        d2.. c8 ( |
        as8 ) c ( d ) fs (
        c8 ) d ( fs ) as ( |
        d,8 ) fs ( as ) c (
        fs,8 ) as ( c ) d ( |
        as8 ) c ( d ) fs (  
        c8 ) d ( fs ) as ( |
        d,2 ) 
        
        d8 fs ( as ) c ( |
        fs,8 ) as ( c ) d ( 
        as8 ) c ( d ) fs, ( | 
        d'1 ) |
    }
    \relative c''' { 
        d8 c ( as ) fs (  c' ) as ( fs ) d ( |
        as'8 ) fs ( d ) c (  fs ) d ( c ) as ( | 
        d8 ) c ( as ) fs (  c' ) as ( fs ) d ( | 
        as'8 ) fs ( d ) c (  fs ) d ( c ) as ( | 
        d1 ) |    
    }
    \bar "||"
}

augmentedArpeggioEFlat = \relative c' {
    \key af \major
    \time 4/4 
    \relative c' { 
        ef2.. df8 ( |
        b8 ) df ( ef ) g (  df ) ef ( g ) b ( | 
        ef,8 ) g ( b ) df (  g, ) b ( df ) ef (  |
        b8 ) df ( ef ) g (  df ) ef ( g ) b ( |
        ef,2 ) 
        ef8 g ( b ) df ( | 
        g,8 ) b ( df ) ef ( 
        b8 ) df ( ef ) g, ( |
        ef'1 )  
    }
    \relative c''' { 
        ef8 df ( b ) g ( df' ) b ( g ) ef ( |
        b'8 ) g ( ef ) df (  g ) ef ( df ) b ( | 
        ef2 ) ef8 df ( b ) g (  |
        df'8 ) b ( g ) ef ( 
        b'8 ) g ( ef ) df ( | 
        g ) ef ( df ) b ( 
        ef2 ) |    
    }
    \bar "||"
}

augmentedArpeggioFSharp = \relative c' {
    \key b \major
    \time 4/4 
    \relative c' { 
        fs2. ( e8 ) css ( |
        as8 ) css ( e ) fs (  css ) e ( fs ) as ( | 
        e8 ) fs ( as ) css (  fs,2 ) |
        
        fs8 as ( css ) e (        
        as,8 ) css ( e ) fs ( |
        css8 ) e ( fs ) as ( 
        e8 ) fs ( as ) css ( | 
        fs,2 ) 
        fs8 as ( css ) e ( |       
        as,8 ) css ( e ) as, ( fs2 ) |
    }
    \relative c'' { 
        r4 fs8 as ( 
        e'8 ) css ( as ) fs ( | 
        css'8 ) as ( fs ) e ( 
        as8 ) fs ( e ) css ( | 
        fs2 ) fs8 e ( css ) as ( |
        e'8 ) css ( as ) fs ( 
        css' ) as ( fs ) e ( |
        as8 ) fs ( e ) css (  
        fs ) e ( css ) as ( |
        fs'2 ) 
    }
    \bar "||"
}

augmentedArpeggioAFlat = \relative c' {
    \key df \major
    \time 4/4 
    \relative c'' { 
        af2. ( gf8 ) e ( |
        c8 ) e ( gf ) af (  e ) gf ( af ) c ( | 
        gf8 ) af ( c ) e (  af,2 ) |
        af8 c ( e ) gf ( c, ) e ( gf ) af ( |
        e8 ) gf ( af ) c ( gf ) af ( c ) e (  |
        af,8 ) c ( e ) gf, ( af2 ) |
    }
    \relative c''' { 
        r4 r8 af ( 
        e'8 ) c ( af ) gf ( |  
        c ) af ( gf ) e (  
        af8 ) gf ( e ) c ( |  
        gf'8 ) e ( c ) af (
        e' ) c ( af ) gf ( |  
        c8 ) af ( gf ) e ( 
        af2 ) | 
        af8  gf ( e ) c (   
        gf'8 ) e ( c ) af' ( |
        e ) c ( af' ) gf ( 
        c,8 ) af' ( gf ) e ( | 
        af1 ) 
    }
   \bar "||"
}
