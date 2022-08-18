
diminishedArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    fs1:dim7
}

diminishedArpeggioGMinor = \relative c' {
    \key g \minor
    \time 4/4 
    \relative c' {
        fs2.. ef8 ( |
        c8 ) ef ( fs ) a (   
        ef8 ) fs ( a ) c ( |
        fs,8 ) a ( c ) ef (   
        a,8 ) c ( ef ) fs ( | 
        c8 ) ef ( fs ) a (  
        ef8 ) fs ( a ) c ( | 
        fs,2 ) 
        fs8 a ( c ) ef ( | 
        a,8 ) c ( ef ) a, ( 
        fs2 ) 
    }
    \relative c'' { 
        fs4. a8 ( 
        ef'8 ) c ( a ) fs ( |  
        c'8 ) a ( fs ) ef (  
        a8 ) fs ( ef ) c ( |
        fs2 ) 
        fs8 ef ( c ) a ( |
        ef'8 ) c ( a ) fs ( 
        c'8 ) a ( fs ) ef ( |
        a8 ) fs ( ef ) c ( 
        fs2 ) |
    }
    \bar "||"
}

diminishedArpeggioBFlatMinor = \relative c' {
    \key bf \minor
    \time 4/4 
    \relative c'' {
        a2. gf8 ef8 ( |
        c8 ) ef ( gf ) a (   
        ef8 ) gf ( a ) c ( |
        gf8 ) a ( c ) ef (   
        a,2 ) |
        a8 c ( ef ) gf ( 
        c,8 ) ef ( gf ) a ( |  
        ef8 ) gf ( a ) c (  
        gf8 ) a ( c ) ef ( 
        a,2.. ) 
    }
    \relative c''' { 
        a8 ( ||
        ef'8 ) c ( a ) gf (  
        c8 ) a ( gf ) ef ( |
        a8 ) gf ( ef ) c (  
        gf'8 ) ef ( c ) a ( | 
        ef'8 ) c ( a ) gf ( 
        c8 ) a ( gf ) ef ( |
        a2 ) 
        a8 gf ( ef ) c ( |
        gf'8 ) ef ( c ) a' (  
        ef8 ) c ( a' ) gf ( |
        a1 ) ||
    }
    \bar "||"
}

diminishedArpeggioCSharpMinor = \relative c' {
    \key cs \minor
    \time 4/4 
    \relative c' {
        bs8 ds ( fs ) a (   
        ds,8 ) fs ( a ) bs ( |
        fs8 ) a ( bs ) ds (   
        a8 ) bs ( ds ) fs ( |
        bs,2 ) 
        bs8 ds ( fs ) a ( |  
        ds,8 ) fs ( a ) bs (  
        fs8 ) a ( bs ) ds ( | 
        a8 ) bs ( ds ) fs, ( 
        bs ) ds ( a ) fs ( |
        bs2. ) 
    }
    \relative c''' { 
        bs8 a ( ||
        ds8 ) bs ( a ) fs (  
        bs8 ) a ( fs ) ds ( |
        a'8 ) fs ( ds ) bs (  
        fs'8 ) ds ( bs ) a ( | 
        ds8 ) bs ( a ) fs ( 
        bs2 ) |
        bs8 a ( fs ) ds ( 
        a'8 ) fs ( ds ) bs ( |
        fs'8 ) ds ( bs ) a' (  
        ds,8 ) bs ( a' ) fs ( |
        bs1 ) ||
    }
    \bar "||"
}

diminishedArpeggioEMinor = \relative c' {
    \key e \minor
    \time 4/4 
    \relative c' {
        ds2.. c8 ( |
        ds8 ) fs ( a ) c ( 
        fs,8 ) a ( c ) ds ( |   
        a8 ) c ( ds ) fs ( 
        c8 ) ds ( fs ) a ( |
        ds,2 ) 
        
        ds8 fs ( a ) c ( |
        fs,8 ) a ( c ) ds (  
        a8 ) c ( ds ) fs, ( | 
        ds'2 )  
    }
    \relative c''' { 
        ds8  c ( a ) fs ( | 
        c'8 ) a ( fs ) ds ( 
        a'8 ) fs ( ds ) c ( |  
        fs8 ) ds ( c ) a (  
        ds2 ) |
        ds8  c ( a ) fs ( 
        c'8 ) a ( fs ) ds ( | 
        a'8 ) fs ( ds ) c ( 
        fs8 ) ds ( c ) a' ( |
        ds,8 ) c ( a' ) fs (  
        ds2 ) ||
    }
    \bar "||"
}



diminishedArpeggioCMinor = \relative c' {
    \key c \minor
    \time 4/4 
    \relative c' {
        b8 d ( f ) af (  
        d,8 ) f ( af ) b ( |
        f8 ) af ( b ) d (  
        af8 ) b ( d ) f ( | 
        b,2 ) 
        b8 d ( f ) af ( |   
        d,8 ) f ( af ) b (  
        f8 ) af ( b ) d ( |
        af8 ) b ( d ) f ( 
        b,2 ) |
    }
    \relative c''' { 
        r4 r8 b8 ( 
        f'8 ) d ( b ) af ( |
        d8 ) b ( af ) f ( 
        b8 ) af ( f ) d ( |
        af'8 ) f ( d ) b (  
        f'8 ) d ( b ) af ( |
        d8 ) b ( af ) f (  
        b2 ) |
        b8 af ( f ) d ( 
        af'8 ) f ( d ) b ( |
        f'8 ) d ( b ) af' (  
        d,8 ) b ( af' ) f ( |
        b,1 ) ||     
    }
    \bar "||"
}

diminishedArpeggioEFlatMinor = \relative c' {
    \key ef \minor
    \time 4/4 
    \relative c' {
        d2.. cf8 ( | 
        d8 ) f ( af ) cf ( 
        f,8 ) af ( cf ) d ( |  
        af8 ) cf ( d ) f (  
        cf8 ) d ( f ) af ( |
        d,2 ) 
        d8  f ( af ) cf ( |
        f,8 ) af ( cf ) d (  
        af8 ) cf ( d ) f ( | 
        cf8 ) d ( f ) af, ( 
        d2 ) | 

    }
    \relative c''' { 
        r4 d8 cf ( 
        f8 ) d ( cf ) af ( |
        d8 ) cf ( af ) f ( 
        cf'8 ) af ( f ) d ( |
        af'8 ) f ( d ) cf (  
        f8 ) d ( cf ) af ( |
        d2 ) 
        d8 cf ( af ) f ( | 
        cf'8 ) af ( f ) d ( 
        af'8 ) f ( d ) cf ( |
        f8 ) d ( cf ) af' (  
        d,2 ) ||     
    }
    \bar "||"
}

diminishedArpeggioFSharpMinor = \relative c' {
    \key fs \minor
    \time 4/4 
    \relative c' {
        es2.. d8 ( | 
        b8 ) d ( es ) gs ( 
        d8 ) es ( gs ) b ( |
        es,8 ) gs ( b ) d ( 
        gs,8 ) b ( d ) es ( | 
        b8 ) d ( es ) gs ( 
        d8 ) es ( gs ) b ( |
        es,2 ) 
        es8 gs ( b ) d ( |  
        gs,8 ) b ( d ) es (  
        b8 ) d ( es ) gs, ( |
        d'8 ) es ( gs, ) b ( 
        es2 ) |
    }
    \relative c''' { 
        es8  d ( b ) gs ( 
        d'8 ) b ( gs ) es ( | 
        b'8 ) gs ( es ) d ( 
        gs8 ) es ( d ) b ( |
        es2 ) 
        es8 d ( b ) gs ( |
        d'8 ) b ( gs ) es (  
        b'8 ) gs ( es ) d ( |
        gs8 ) es ( d ) b ( 
        es2 ) |
    }
    \bar "||"
}

diminishedArpeggioAMinor = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
        gs2. ( f8 ) d8 ( | 
        b8 ) d ( f ) gs ( 
        d8 ) f ( gs ) b ( |
        f8 ) gs ( b ) d ( 
        gs,2 ) |
        gs8 b ( d ) f ( 
        b,8 ) d ( f ) gs ( | 
        d8 ) f ( gs ) b ( 
        f8 ) gs ( b ) d ( |  
        gs,2 ) 
        gs8 b ( d ) f ( |
        b,8 ) d ( f ) gs, ( 
        d'8 ) f ( gs, ) b ( |
        f'8 ) gs, ( b ) d (   
        gs,2 ) |
    }
    \relative c''' { 
        gs8 f ( d' ) b ( 
        f'8 ) d ( b ) gs ( | 
        d'8 ) b ( gs ) f (  
        b8 ) gs ( f ) d ( |
        gs2 ) 

        gs8 f ( d ) b ( |
        f'8 ) d ( b ) gs (  
        d'8 ) b ( gs ) f ( |
        b8 ) gs ( f ) d ( 
        gs2 ) |

        gs8 f ( d ) b ( 
        f'8 ) d ( b ) gs' ( |
        d8 ) b ( gs' ) f (  
        b,8 ) gs' ( f ) d ( |
        gs1 ) ||
    }
    \bar "||"
}




diminishedArpeggioDMinor = \relative c' {
    \key d \minor
    \time 4/4 
    \relative c'' {
        cs2 ( bf8 ) g ( e ) cs ( | 
        bf8 ) cs ( e ) g (  
        cs,8 ) e ( g ) bf ( |
        e,8 ) g ( bf ) cs (  
        g8 ) bf ( cs ) e ( | 
        bf8 ) cs ( e ) g (  
        cs,2 ) |
        cs8 e ( g ) bf (  
        e,8 ) g ( bf ) cs ( |
        g8 ) bf ( cs ) e  ( cs4. ) 
    }
    \relative c''' { 
        cs8 ( | 
        e8 ) cs ( bf ) g (
        cs8 ) bf ( g ) e ( | 
        bf'8 ) g ( e ) cs ( 
        g'8 ) e ( cs ) bf ( | 
        e8 ) cs ( bf ) g ( 
        cs2 ) |
        cs8 bf ( g ) e ( 
        bf' ) g ( e ) cs ( | 
        g'8 ) e ( cs ) bf (  
        e8 ) cs ( bf ) g' ( | 
        cs1 ) ||
    }
    \bar "||"
}

diminishedArpeggioFMinor = \relative c' {
    \key f \minor
    \time 4/4 
    \relative c' {
        e2.. df8 ( | 
        bf8 ) df ( e ) g (  
        df8 ) e ( g ) bf ( |
        e,8 ) g ( bf ) df (  
        g,8 ) bf ( df ) e ( | 
        bf8 ) df ( e ) g (  
        df8 ) e ( g ) bf ( | 
        e,2 ) 
        e8 g ( bf ) df ( |
        g,8 ) bf ( df ) e  (  
        bf8 ) df ( e ) g, ( |
        e'1 ) | 
    }
    \relative c''' { 
        e8 df ( bf ) g (
        df'8 ) bf ( g ) e ( | 
        bf'8 ) g ( e ) df ( 
        g8 ) e ( df ) bf ( | 
        e2 ) 
        e8 df ( bf ) g ( |
        df'8 ) bf ( g ) e (  
        bf' ) g ( e ) df ( |
        g8 ) e ( df ) bf (  
        e8 ) df ( bf ) g' ( |
        e1 ) ||
    }
    \bar "||"
}

diminishedArpeggioBMinor = \relative c' {
    \key b \minor
    \time 4/4 
    \relative c' {
        as8  cs ( e ) g (  
        cs,8 ) e ( g ) as ( |
        e8 ) g ( as ) cs (  
        g8 ) as ( cs ) e ( | 
        as,2 ) 
        as8 cs ( e ) g ( |
        cs,8 ) e ( g ) as (  
        e8 ) g ( as ) cs ( |
        g8 ) as ( cs ) e  (  
        as,4. )
    }
    \relative c''' { 
        as8 ( |
        e'8 ) cs ( as ) g (
        cs8 ) as ( g ) e ( | 
        as8 ) g ( e ) cs ( 
        g'8 ) e ( cs ) as ( | 
        e'8 ) cs ( as ) g ( 
        cs8 ) as ( g ) e ( | 
        as2 ) 
        as8 g ( e ) cs ( |
        g'8 ) e ( cs ) as (  
        e'8 ) cs ( as ) cs ( |
        as1 ) ||
    }
    \bar "||"
}

diminishedArpeggioAFlatMinor = \relative c' {
    \key af \minor
    \time 4/4 
    \relative c'' {
        g2. ff8 df ( | 
        bf8 ) df ( ff ) g (  
        df8 ) ff ( g ) bf ( |
        ff8 ) g ( bf ) df (  
        g,2 ) |
        g8 bf ( df ) ff ( 
        bf,8 ) df ( ff ) g ( |  
        df8 ) ff ( g ) bf ( 
        ff8 ) g ( bf ) df ( |
        g,2 ) 
        g8  bf ( df ) ff  ( |
        bf,8 ) df ( ff ) g, ( 
        df'8 ) ff ( g, ) bf ( | 
        g2. )  
    }
    \relative c''' { 
        g8 bf ( | 
        ff'8 ) df ( bf ) g (
        df'8 ) bf ( g ) ff ( | 
        bf8 ) g ( ff ) df ( 
        g2 ) |
        g8  ff ( df ) bf ( 
        ff'8 ) df ( bf ) g (| 
        df'8 ) bf ( g ) ff (  
        bf8 ) g ( ff ) df ( |
        g2 ) 
        g8 ff ( df ) bf ( | 
        ff'8 ) df ( bf ) g'  (           
        df8 ) bf ( ff' ) df ( |
        g1 ) 
    }
    \bar "||"
}
