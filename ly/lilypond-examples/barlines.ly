\version "2.22.2"

\new StaffGroup<<
    \new Staff \relative c'' {
        \defineBarLine ":;|!-everywhere" #'(":;|" ":;|" ":;|")
        \defineBarLine ":;|!-notBetweenStaves" #'(":;|" ":;|" "")
        \defineBarLine ":;|!-doubleBarBetweenStaves" #'(":;|" ":;|" "||")

        <>^"prints at beginning, middle, end of line, and between staves"
        \bar ":;|!-everywhere" a1 
        \bar ":;|!-everywhere" a1  
        \bar ":;|!-everywhere" a1 \break 
        \bar ":;|!-everywhere" a1 1 1 \break

        <>^"prints at beginning, middle, end of line, but not between staves"
        \bar ":;|!-notBetweenStaves" b1 
        \bar ":;|!-notBetweenStaves" b1  
        \bar ":;|!-notBetweenStaves" b1 \break 
        \bar ":;|!-notBetweenStaves" b1 1 1 \break

        <>^"prints at beginning, middle, end of line, and prints double bar between staves"
        \bar ":;|!-doubleBarBetweenStaves" c1 
        \bar ":;|!-doubleBarBetweenStaves" c1  
        \bar ":;|!-doubleBarBetweenStaves" c1 \break 
        \bar ":;|!-doubleBarBetweenStaves" c1 1 1 \break
    }
    \new Staff \relative c'' {
        a1 1 1
        a1 1 1
        b1 1 1
        b1 1 1
        c1 1 1
        c1 1 1
    }
>>

