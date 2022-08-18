
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
        bf8 ) c ( e ) gs (  c, ) e ( gs ) bf (  |
        e,8 ) gs ( bf ) c (  gs ) bf ( c ) e (  |
        bf8 ) c ( e ) gs, ( c2 ) |
    }
    \relative c''' { 
        e8 c ( bf ) gs (  c ) bf ( gs ) e (  |
        bf'8 ) gs ( e ) c (  gs' ) e ( c ) bf ( |
        e8 ) c ( bf ) gs (  c ) bf ( gs ) e ( |
        bf'8 ) gs ( e ) c (   gs' ) e ( c ) bf ( | 
        e8 ) c ( bf ) gs' ( c2 )
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
        b,8 ) ds ( fss ) a (  ds, ) fss ( a ) b ( |
        fss8 ) a ( b ) ds (  a ) b ( ds ) fss, ( | \noBreak
        b1 ) |
    }
    \relative c''' { 
        ds8  b ( a ) fss (  b ) a ( fss ) ds (  |
        a'8 ) fss ( ds ) b (  fss' ) ds ( b ) a ( |
        ds8 ) b ( a ) fss (  b ) a ( fss ) ds ( |
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
        bf,8 ) d ( fs ) af (  d, ) fs ( af ) bf ( |
        fs8 ) af ( bf ) d (  af ) bf ( d ) fs, ( | \noBreak
        bf2. ) 
    }
    \relative c''' { 
        bf8  fs8 ( |
        d'8 ) bf ( af ) fs ( 
        bf8 ) af ( fs ) d ( | 
        af'8 ) fs ( d ) bf (
        fs'8 ) d ( bf ) af ( | 
        d8 ) bf ( af ) fs ( 
        bf8 ) af ( fs ) d ( |
        af' ) fs ( d ) bf (  
        fs'8 ) d ( bf ) af' ( |
        bf1 ) |  
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
        ef,8 ) g ( b ) df (  g, ) b ( df ) ef ( |
        b8 ) df ( ef ) g, ( ef'2 )  |
    }
    \relative c''' { 
        ef8 df ( b ) g (  df' ) b ( g ) ef ( |
        b'8 ) g ( ef ) df (  g ) ef ( df ) b ( | 
        ef8 ) df ( b ) g (  df' ) b ( g ) ef ( | 
        b'8 ) g ( ef ) df (  g ) ef ( df ) b ( | 
        ef1 ) |    
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
        fs8 ) e ( css ) as ( 
        e'8 ) css ( as ) fs ( | 
        css' ) as ( fs ) e ( 
        as8 ) fs ( e ) css ( | 
        fs ) e ( css ) as ( 
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
        e8 c ( af ) gf (   c ) af ( gf ) e (  |
        af8 ) gf ( e ) c (   gf'8 ) e ( c ) af ( |
        e' ) c ( af ) gf (   c8 ) af ( gf ) e ( |
        af ) gf ( e ) c (   gf' ) e ( c ) gf' ( |
        af1 ) 
    }
    \bar "||"
}
