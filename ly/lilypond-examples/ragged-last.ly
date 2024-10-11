\version "2.24.0"


makeStaff = #(define-music-function
    (staffName transposition clefName tweaks part)
    (string? ly:pitch? string? ly:music? ly:music?)
    #{
        \new Staff = "$staffName" { 
            \include "ly/staves/parts/staff-defaults.ily"
            \accidentalStyle modern-voice-cautionary
            \clef $clefName
            \transpose $transposition c <<
                $tweaks
                $part 
            >>
        }
    #}
)

makeChords = #(define-music-function
    (transposition changes)
    (ly:pitch? ly:music?)
    #{
        \new ChordNames \transpose $transposition c {
            \include "ly/staves/parts/chord-names-properties.ily"
            $changes
        }
    #}
)


structure = \relative c' { 
    \time 3/4

    \partial 4
    s4

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    \repeat volta 2 { 
        s2.*6 \break
        s2.*6 \break
        s2.*3
    }
    \alternative { 
        { s2. }
        { s2. \break }    
    }

    s2.*6 \break
    s2.*6 \break 
    s2.*4

    s2.*2 \break
    s2.*6 \break
    s2.*8
}

melodyACommon = \relative c'' { 
    \tuplet 3/2 { r8 a ( bes ) } ||
    ees4. bes8 \tuplet 3/2 { ges8 ( aes bes ) } | ces8 aes  r4  \tuplet 3/2 { r8 ges ( aes ) } |
    bes2 \tuplet 3/2 { ges8 ( aes a ) } | aes8 e ~ 4. d8 | 
    d8 ees bes2 ~ | 2. |
    \tuplet 3/2 { bes'8 ( ees des ) } \grace { b8 ( } aes2 ~ | 2 ) r8 bes | 

    ees4. bes8 \tuplet 3/2 { ges8 ( aes bes ) } | ces8 des  r4  \tuplet 3/2 { r8 d ( f ) } |
    f8 ges ees2 | \tuplet 3/2 { f8 ( aes f ) } des2 | 
    d8 ees ces2 | d4 f8 d r bes | 
    ees8 bes r des r 
}

melodyAEndings = \relative c'' { 
    f8 ~ 2 r8 e || f2.\repeatTie ||
}

melodyB = \relative c' { 
    ees8 f r4 r8 des | ces8. f16 ees2 | 
    des8 ees r4 \tuplet 3/2 { r8 bes ( aes ) } | g4 ees'8 des4 bes8 | 
    c4 des8 ees4 f8 | g4 aes8 bes4 g8 | 
    \tuplet 3/2 { aes8 g f ~ } 4. d8 | ees2. |
    f8 g r4 r8 ees | d g f2 | 
    ees8 f r4 r8 bes, | a2. |
    bes'8 ces r4 r8 aes | bes ees des4. ces16 des | 
    bes2. ~ | 2
}

melodyALast = \relative c'' { 
    f8 ~ | f2. ||
}

melody = \relative c'' { 
    \melodyACommon
    \melodyAEndings
    \melodyB
    \melodyACommon
    \melodyALast
}

\book {
    \score {
        <<
            \new Staff 
            \transpose c c {
                <<
                    \structure
                    \melody
                >>
            }
        >>
        \layout {
            ragged-right = ##f
            ragged-last = ##f
        }
    }
}
