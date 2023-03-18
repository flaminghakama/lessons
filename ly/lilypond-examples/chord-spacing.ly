\version "2.19.81"

chordsSong = \chordmode {    
    e1:m7 a:7 fis:m7 b:7
}
melody = \relative c'' {
    \key d \major
    r2 fis4-.\f e8 a-> ~ | 2. r4 |
    r2 gis4-. fis8 b-> ~ | 2. r4 |
}

<< 
    \new ChordNames  {
       \chordsSong 
    }
    \new Staff {
        <>^"Default"
        \melody
    }
>> 

<< 
    \new ChordNames  {
       \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 7
       \chordsSong 
    }
    \new Staff {
        <>^"padding 7"
        \melody
    }
>> 

<< 
    \new ChordNames  {
       \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 20
       \chordsSong 
    }
    \new Staff {
        <>^"padding 20"
        \melody
    }
>> 


