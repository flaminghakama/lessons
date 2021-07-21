\version "2.19.83"

titleLeft = "Winter"
titleRight = "Wonderland"
title = "Winter Wonderland"
composerName = "Felix Bernard"
lyricistName = "Richard B. Smith"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Cochin" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout.ily"

structure = \relative c' { 
    \key ef \major
    \partial 4 s4
    \bar "[|:"
    \repeat volta 2 { 
        s1*7
    }
    \alternative {
        \relative { 
            s1
           \bar ":|]"
        } 
        \relative { 
            s1 
            \bar "[|:"
        }
    }
    \break
    \repeat volta 2 { 
        s1*8
        \bar "||"
        s1*7
    }
    \alternative {
        \relative { 
            s1
           \bar ":|]"
        } 
        \relative { 
            s1 
            \bar "|."
        }
    }
}

structureInstrumental = \relative c' { 
    \key ef \major
    \partial 4 s4
    \bar "[|:"
    \repeat volta 2 { 
        s1*7
    }
    \alternative {
        \relative { 
            s1
           \bar ":|]"
        } 
        \relative { 
            s1 
            \bar "||"
        }
    }
    s1*8
    \bar "||"
    s1*8
    \bar "||"
    s1*8
    \bar "||"
    s1*8 
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4
    ef2:maj9 af:13 | g:m7 c:7 | 
    f1:m7 | bf:7 | 
    a2:m7 d:7 | g:m7 c:aug9 | 
    f2:7 bf:9 |
        ef4:6 c:aug7.9+ f:m7 bf:7 ||
        ef1:6||

    g2:maj7 a:m7/d | g1:maj7 | 
    g2:maj7 a:m7/d | g1:maj7 | 
    bf2:maj7 c:m7/f | bf1:maj7 | 
    c2:7 f4:7 bf:7 | bf2:sus4.9 bf:7 ||

    ef2:maj9 af:13 | g:m7 c:7 | 
    f1:m7 | bf:7 | 
    a2:m7 d:7 | g:m7 c:aug9 | 
    f2:7 bf:9 |
        ef1:6||
        ef2:6 f4:m7 bf:7 ||
}
chordsInstrumental = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4
    ef2:maj9 af:13 | g:m7 c:7 | 
    f1:m7 | bf:7 | 
    a2:m7 d:7 | g:m7 c:aug9 | 
    f2:7 bf:9 |
        ef4:6 c:aug7.9+ f:m7 bf:7 ||
        ef1:6||

    g2:maj7 a:m7/d | g1:maj7 | 
    g2:maj7 a:m7/d | g1:maj7 | 
    bf2:maj7 c:m7/f | bf1:maj7 | 
    c2:7 f4:7 bf:7 | bf2:sus4.9 bf:7 ||

    ef2:maj9 af:13 | g:m7 c:7 | 
    f1:m7 | bf:7 | 
    a2:m7 d:7 | g:m7 c:aug9 | 
    f2:7 bf:9 | ef1:6||

    g2:maj7 a:m7/d | g1:maj7 | 
    g2:maj7 a:m7/d | g1:maj7 | 
    bf2:maj7 c:m7/f | bf1:maj7 | 
    c2:7 f4:7 bf:7 | bf2:sus4.9 bf:7 ||

    ef2:maj9 af:13 | g:m7 c:7 | 
    f1:m7 | bf:7 | 
    a2:m7 d:7 | g:m7 c:aug9 | 
    f2:7 bf:9 | ef2:6 f4:m7 bf:7 
    f2:7 bf:9 | ef2:6 f4:m7 bf:7 
    f2:7 bf:9 | ef1:6 ||
}

melodyACommon = \relative c'' { 
    bf8 8 ||
    bf2. 8 8 | g4 bf2  8 8 | 2. 8 8 | af4 bf2 r8 

    bf8 | d8 8 8 c ~ 4. 8 | bf8 8 8 af ~ 2 | 

    g8 8 8 8  f8 8 8 8 | 
}
melodyAEndingOne = \relative c' { 
    ef2. bf'8 8 ||
}
melodyAEndingTwo = \relative c' { 
    ef2. r4 ||
}
melodyB = \relative c' { 
    d8 8 b'8 8 e,8 8 c'8 8 | b4 g2. |     
    d8 8 b'8 8 e,8 8 c'8 8 | b2. r4 |     
    f8 8 d'8 8 g,8 8 ef'8 8 | d4 bf2 4 | 
    d8 8 g,8 8 c8 8 f,8 8 | bf2. 
}
melodyForm = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.25)
    \melodyACommon
    \melodyAEndingOne
    \melodyAEndingTwo
    \melodyB
    \melodyACommon
    \melodyAEndingTwo
    \melodyAEndingTwo
}
melodyInstrumental = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.25)
    \transpose c c, { 
        \melodyACommon
        \melodyAEndingOne
        \melodyAEndingTwo
    }
    \melodyB
    \transpose c c, {
        \melodyACommon
        \melodyAEndingTwo
    }
    \melodyB
    \melodyACommon
    \melodyAEndingTwo
    \relative c'' {
        g8 8 8 8  f8 8 8 8 | ef2. r4 
        g,8 8 8 8  f8 8 8 8 | ef1 
    }
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Sleigh bells ring, are you lis -- t'ning?
    In the lane, snow is glis -- t'ning.
    A beau -- ti -- ful  night, we're hap -- py to -- night,
    walk -- ing in a win -- ter won -- der -- land!

        Once a
        land!

    In the mea -- dow we can build a snow -- man 
    then pre -- tend that he is Par -- son Brown.
    He'll say, 'are you mar -- ried', we'll say, 'No, man'
    But you can do the job if you're in town.

    La -- ter on, we'll con -- spi -- re 
    As we dream by the fi -- re
    To face un a -- fraid, the plans that we made 
    walk -- ing in a win -- ter won -- der -- land!
        land!
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 2 { \skip 1 }
    way is the blue -- bird, 
    here to stay is the new bird.
    He sings a love song as we go a -- long
    \repeat unfold 12 { \skip 1 }

    \repeat unfold 10 { \skip 1 }
    and pre -- tend he is a cir -- cus clown
    we'll have lots of fun with mis -- ter snow -- man, 
    un -- til the oth -- er kid -- dies knock him down.

    When it moves, ain't it thril -- lin', 
    though your nose gets a chil -- lin'?

    We'll fro -- lic and play, the Es -- ki -- mo way

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \chordsForm }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Eb"
    \paper {
        % First page spacing after header
        markup-system-spacing.padding = #6
    }
    \header {
        subtitle = ""
        arranger = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { \chordsInstrumental }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureInstrumental
                    \melodyInstrumental
                >>
            }
        >>
    }
}
