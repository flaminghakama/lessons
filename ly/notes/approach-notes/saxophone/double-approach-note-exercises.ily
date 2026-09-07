
approachNoteChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7
}
scaleDoubleChromaticDescendingAscendingOne = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ds
        e8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d df c as 
        b8 c d f  e d df b 
        c1 || \break
    }
    \relative c'' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ds
        e8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d df c as 
        b8 c d f  e d df b 
        c1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds gf e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingOneFlats = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ds cs 
        d?8 e f a  g fs f ds
        e8 f g b  a g fs e 
        f8 g a c  b a gs fs 
        g8 a b d  c b as gs 
        a8 b c e  d cs c as 
        b8 c d f  e d cs b 
        c?1 || \break
    }
    \relative c'' {
        c8 d e g  f e ds cs 
        d?8 e f a  g fs f ds
        e8 f g b  a g fs e 
        f8 g a c  b a gs fs 
        g8 a b d  c b as gs 
        a8 b c e  d cs c as 
        b8 c d f  e d cs b 
        c?1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c as 
        b8 a g e  f g as gs 
        a8 g f d  e f gs fs 
        g8 f e c  d ds fs e  
        f8 e d b  c d f ds 
        e8 d c a  b c ds cs 
        d8 c b g  a as cs b 
        c?1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingOneSharps = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ef
        e?8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf af 
        a?8 b c e  d df c bf 
        b?8 c d f  e d df b 
        c1 || \break
    }
    \relative c'' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ef
        e?8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf af 
        a?8 b c e  d df c bf 
        b?8 c d f  e d df b 
        c1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c bf 
        b?8 a g e  f g bf af 
        a?8 g f d  e f af fs 
        g8 f e c  d ef gf e  
        f8 e d b  c d f ef 
        e?8 d c a  b c ef cs 
        d8 c b g  a bf df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingOneSharpsSharps = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef df 
        d?8 e f a  g gf f ef
        e?8 f g b  a g gf ff 
        f?8 g a c  b a af fs 
        g8 a b d  c b bf af 
        a?8 b c e  d df c bf 
        b?8 c d f  e d df b 
        c1 || \break
    }
    \relative c'' {
        c8 d e g  f e ef df 
        d?8 e f a  g gf f ef
        e?8 f g b  a g gf ff 
        f?8 g a c  b a af fs 
        g8 a b d  c b bf af 
        a?8 b c e  d df c bf 
        b?8 c d f  e d df b 
        c1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c bf 
        b?8 a g e  f g bf af 
        a?8 g f d  e f af gf 
        g?8 f e c  d ef gf e  
        f8 e d b  c d f ef 
        e?8 d c a  b c ef df 
        d?8 c b g  a bf df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingTwo = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ds
        e8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d df c as 
        b8 c d f  e d df b 
        c1 || \break
    }
    \relative c'' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds gf e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingTwoFlats = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g fs f ds
        e8 f g b  a g fs e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d cs c as 
        b8 c d f  e d cs b 
        c?1 || \break
    }
    \relative c'' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds fs e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as cs b 
        c?1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingTwoFlatsFlats = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ds cs 
        d8 e f a  g fs f ds
        e8 f g b  a g fs e 
        f8 g a c  b a gs fs 
        g8 a b d  c b bf gs 
        a8 b c e  d cs c as 
        b8 c d f  e d cs b 
        c?1 || \break
    }
    \relative c'' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f gs fs 
        g8 f e c  d ds fs e  
        f8 e d b  c d f ds 
        e8 d c a  b c ds cs 
        d8 c b g  a as cs b 
        c?1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingTwoSharps = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ds
        e8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d df c bf 
        b?8 c d f  e d df b 
        c1 || \break
    }
    \relative c'' { 
        c8 b a f  g a c bf 
        b?8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds gf e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a bf df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingTwoSharpsSharps = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef df 
        d?8 e f a  g gf f ef
        e?8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf af 
        a?8 b c e  d df c bf 
        b?8 c d f  e d df b 
        c1 || \break
    }
    \relative c'' { 
        c8 b a f  g a c bf 
        b?8 a g e  f g bf af 
        a?8 g f d  e f af fs 
        g8 f e c  d ef gf e  
        f8 e d b  c d f ef 
        e?8 d c a  b c ef df 
        d?8 c b g  a bf df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingThree = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ds
        e8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d df c as 
        b8 c d f  e d df b 
        c1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds gf e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as df b 
        c1 || \break
    }
    \relative c'' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds gf e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingThreeFlats = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g fs f ds
        e8 f g b  a g fs e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d df c as 
        b8 c d f  e d df b 
        c1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds fs e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as df b 
        c1 || \break
    }
    \relative c'' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds fs e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingThreeSharps = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ef
        e?8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d df c bf 
        b?8 c d f  e d df b 
        c1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c bf 
        b?8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ef gf e  
        f8 e d b  c d f ef 
        e?8 d c a  b c ef cs 
        d8 c b g  a bf df b 
        c1 || \break
    }
    \relative c'' { 
        c8 b a f  g a c bf 
        b?8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ef gf e  
        f8 e d b  c d f ef 
        e?8 d c a  b c ef cs 
        d8 c b g  a bf df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingFour = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g gf f ds
        e8 f g b  a g gf e 
        f8 g a c  b a af fs 
        g8 a b d  c b bf gs 
        a8 b c e  d df c as 
        b8 c d f  e d df b 
        c1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f af fs 
        g8 f e c  d ds gf e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as df b 
        c1 \bar "|."
    }
}
scaleDoubleChromaticDescendingAscendingFourFlats = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e g  f e ef cs 
        d8 e f a  g fs f ds
        e8 f g b  a g fs e 
        f8 g a c  b a gs fs 
        g8 a b d  c b bf gs 
        a8 b c e  d cs c as 
        b8 c d f  e d cs b 
        c1 || \break
    }
    \relative c''' { 
        c8 b a f  g a c as 
        b8 a g e  f g bf gs 
        a8 g f d  e f gs fs 
        g8 f e c  d ds fs e  
        f8 e d b  c d f ds 
        e8 d c a  b c ef cs 
        d8 c b g  a as cs b 
        c1 \bar "|."
    }
}

