
grandArpeggioMajorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c2 g:7 | c2 r |
    c2 g:7 | c2 r |
}
grandArpeggioMajor = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
        \tuplet 3/2 4 { c8 e g  c e g  f d b  g f d } | c1 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { c8 g e  c g e  g b d   f g b   } | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorTwo = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
        \tuplet 3/2 4 { c8 e g  c e g  f d b  g f d } | c1 | 
    }
    \relative c'' { 
        \tuplet 3/2 4 { c8 g e  c g e  g b d   f g b   } | c1 | 
        \bar "||"
    }
}

grandArpeggioMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a2:m e:7 | a:m r | 
    a2:m e:7 | a:m r | 
}
grandArpeggioMinor = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
        \tuplet 3/2 4 { a8 c e  a c e  d b gs  e d b } | a1 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { a8 e c  a e c  e gs b  d e gs  } | a1 | 
        \bar "||"
    }
}
grandArpeggioMinorTwo = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
        \tuplet 3/2 4 { a8 c e  a c e  d b gs  e d b } | a1 | 
    }
    \relative c'''' { 
        \tuplet 3/2 4 { a8 e c  a e c  e gs b  d e gs  } | a1 | 
        \bar "||"
    }
}


grandArpeggioMinorDiminishedChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a2:m gs:dim7 | a:m r | 
    a2:m gs:dim7 | a:m r | 
}
grandArpeggioMinorDiminishedChordsTwo = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a2:m af:dim7 | a:m r | 
    a2:m af:dim7 | a:m r | 
}
grandArpeggioMinorDiminished = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
        \tuplet 3/2 4 { a8 c e  a c e  d b gs  f d b } | a1 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { a8 e c  a e c  f gs b d f gs } | a1 | 
        \bar "||"
    }
}
grandArpeggioMinorDiminishedTwo = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
        \tuplet 3/2 4 { a8 c e  a c e  d b gs  f d b } | a1 | 
    }
    \relative c'''' { 
        \tuplet 3/2 4 { a8 e c  a e c  f gs b  d f gs  } | a1 | 
        \bar "||"
    }
}


grandArpeggioMajorSixthChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:6 | g:7 | c:6 |
    c1:6 | g:7 | c:6 |
}
grandArpeggioMajorSixth = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a  b g f d  b g f d  | c1 | 
    }
    \relative c''' { 
         c8 a g e  c a g e  d f g b  d f g b    | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthTwo = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a  g f d b  g f d b | c1 | 
    }
    \relative c''' { 
         c8 a g e  c a g e  f g b d  f g b d | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthThree = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a | b g f d  b g f d | c1 | 
    }
    \relative c'' { 
         c8 a g e   c a g e  | f g b d  f g b d | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthFour = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a | g f d b  g f d b | c1 | 
    }
    \relative c'' { 
         c8 g' e c  a g e c | b d f g  b d f g | e8 ( c2.. ) | 
        \bar "||"
    }
}
grandArpeggioMajorSixthFive = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e, g a  c e g a | b g f d  b g f d | c'1 | 
    }
    \relative c'' { 
         c8 a g e   c a g e  | f g b d  f g b d | e8 ( c'2.. ) | 
        \bar "||"
    }
}
grandArpeggioMajorSixthSix = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a  g f d b  g f d b | c1 | 
    }
    \relative c''' { 
         c8 a g e  c a g e  d b d f  g b d f  | e2 ( c' ) | 
        \bar "||"
    }
}
grandArpeggioMajorSixthSeven = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 g a c  e g a c  d b g f  d b g f | g a' g e c2 | 
    }
    \relative c'' { 
         c8 a g e  c a g a  b d f g  b d f g  | a8 ( af16 g fs8. g16  c2 ) | 
        \bar "||"
    }
}
grandArpeggioMajorSixthEight = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a  g f d b  g f d b | c1 | 
    }
    \relative c'' { 
         c8 a g e  c a c e  f g b d  f g b d | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthNine = \relative c' {
    \key c \major
    \time 4/4 
    \relative c'' { 
         c8 e g a  c e g e  d b g f  d b g f | e ( c'2.. ) | 
    }
    \relative c''' { 
         c8 a g e  c a g e  f g b d  f g b d | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthTen = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a | g f d b  g f d b | c1 | 
    }
    \relative c'' { 
         c8 a' g e   c a g e  | d b g f  g b d f | e8 ( c'2.. ) | 
        \bar "||"
    }
}

grandArpeggioMinorSeventhDiminishedChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m | gs:dim7 | a:m | 
    a1:m | gs:dim7 | a:m | 
}
grandArpeggioMinorSeventhDiminished = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
         a8 c e g  a c e g  f d b gs  f d b gs | a1 | 
    }
    \relative c''' { 
         a8 g e c   a g e c  d f gs b  d f gs b | a1 | 
        \bar "||"
    }
}
grandArpeggioMinorSeventhDiminishedTwo = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
         a8 c e g  a c e g  f d b gs  f d b gs | a1 | 
    }
    \relative c''' { 
         a8 g e c   a g e c  d f gs b  d f gs b | a1 | 
        \bar "||"
    }
}
