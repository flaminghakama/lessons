\version "2.19.83"

\include "english.ly"

songForm = \relative c' {

    \time 4/4
    \key bf \major

    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*3
    }
    \alternative { 
        {
            s1 \bar ":|]"
        } {
            s1 
        }
    } 

    s1*4 \break
    s1*4 \break

    s1*4 \break
    s1*4
    \bar "|."
}

songChords = \chordmode {
    fs2:7 b:7 | e:7 a:7 | d:7 g:7 | c:7 f:7 | 
    bf1:7 | bf:7 | bf:7 | bf:7 | bf:7 | 
    d:7.5- | d:7.5- | g:7.5- | g:7.5- | 
    c:7.5- | c:7.5- | f:7.5- | f:7.5- | 
    gf2:7 b:7 | e:7 a:7 | d:7 g:7 | c:7 f:7 | 
    bf1:7 | bf:7 | bf:7 | bf:7 | bf:7 | 
}


melodyA = \relative c'' {
    e8 ( ds e ) a ds,4. cs8 | d? ( cs d ) g cs,4. b8 | 
    c8 ( b c ) f b,4. a8 | bf? ( a bf ) ef a,4. r8 |
    
    r4 df8 ( c ) gf'( f ) df c  | g ( af2.. ) | 
    r4 r8 f g ( af4. ~ | 2. ) 
}

bridge = << 
    \relative c' { 
        \stemDown \tieDown c8 | d8 c d af' ~  af2 ~ | af1 | df,8 b df g f2 ~ | f2.. bf,8 |
        c bf c fs ~ fs2 ~ | fs1 | b,8 a b f' ef2 ~ | ef2..  
    } \\ 
    \relative c'' { 
        \stemUp s8 | s2 s4 s8 c | d8 c d af' ~ af2 | s1 | df,8 b df g f2 | 
        s2 s4 s8 bf, | c bf c fs ~ fs2 | s1 | b,8 a b f' ef4. 
    } 
>>

melody = \relative c'' {
    \melodyA \relative c'' { r8 ds } ||
    \relative c'' { af2. \repeatTie r8 }
    \bridge 
    \melodyA r4
}  

\book {
    \score {
        <<
            \new ChordNames \songChords
            \new Staff <<
                \songForm
                \melody
            >>
        >>
    }
}

