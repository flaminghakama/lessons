
halfDiminishedArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    fs1:dim7
}

halfDiminishedArpeggioGMinor = \relative c' {
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
        fs,8 ) a ( c ) ef ( 
        a,8 ) c ( ef ) a ( |
        fs1 ) 
    }
    \relative c''' { 
        ef8 c ( a ) fs (  c' ) a ( fs ) ef (  |
        a8 ) fs ( ef ) c (  fs ) ef ( c ) a ( |
        ef'8 ) c ( a ) fs (  c' ) a ( fs ) ef ( |
        a8 ) fs ( ef ) c  ( fs2 ) |
    }
    \bar "||"
}

halfDiminishedArpeggioCMinor = \relative c' {
    \key c \minor
    \time 4/4 
    \relative c' {
        b8 d ( f ) af (  
        d,8 ) f ( af ) b ( |
        f8 ) af ( b ) d (  
        af8 ) b ( d ) f ( | 
        b,8 ) d ( f ) af (  
        d,8 ) f ( af ) b ( | 
        f8 ) af ( b ) d (
        af8 ) b ( d ) f ~ | 1 | 
    }
    \relative c''' { 
        f8 d ( b ) af (
        d8 ) b ( af ) f ( | 
        b8 ) af ( f ) d ( 
        af'8 ) f ( d ) b ( | 
        f'8 ) d ( b ) af ( 
        d8 ) b ( af ) f ( | 
        b8 ) af ( f ) d ( 
        af'8 ) f ( d ) b ~ | 1 |
    }
    \bar "||"
}

halfDiminishedArpeggioDMinor = \relative c' {
    \key d \minor
    \time 4/4 
    \relative c'' {
        cs2 ( bf8 ) g ( e ) cs ( | 
        bf8 ) cs ( e ) g (  
        cs,8 ) e ( g ) bf ( |
        e,8 ) g ( bf ) cs (  
        g8 ) bf ( cs ) e ( | 
        bf8 ) cs ( e ) g (  
        cs,8 ) e ( g ) bf ( | 
        e,8 ) g ( bf ) cs (
        g8 ) bf ( cs ) e  ( | cs1 ) | 
    }
    \relative c''' { 
        e8 cs ( bf ) g (
        cs8 ) bf ( g ) e ( | 
        bf'8 ) g ( e ) cs ( 
        g'8 ) e ( cs ) bf ( | 
        e8 ) cs ( bf ) g ( 
        cs8 ) bf ( g ) e ( | 
        bf' ) g ( e ) cs ( 
        g'8 ) e ( cs ) bf ( | 
        cs1 ) |
    }
    \bar "||"
}
