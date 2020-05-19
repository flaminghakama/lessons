\version "2.19.81"

titleLeft = "Wabash"
titleRight = "Avenue"
title = "Wabash Avenue"
composerName = "G. Fishman"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm wabash*pdf
lilypond ly/songs/wabash.ly

mv wabash-for-C.pdf pdf/songs
mv wabash-transposed-for-Eb.pdf pdf/songs

for file in pdf/songs/wabash*pdf ; do open -a Preview $file ; done

echo git add pdf/songs/wabash* ly/songs/wabash.ly

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #12

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #19

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #15

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    %\override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key ef \major
    \time 4/4
    \mark \markup \box "A"
    \repeat volta 2 {
        s1*8
        \bar "||"
        \mark \markup \box "B"
        s1*8
        \bar "||"
        \mark \markup \box "C" 
        \key e \major
        s1*8
        \bar "||"
        \mark \markup \box "D" 
        \key ef \major
        s1*7
    }
    \alternative {
        { 
            s1  
            \bar ":|]"
        }
        {
            s1 
            \bar "|."
        }
    }
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f2:m7 c:7.9- | f:m7 bf:aug7 | 
    ef2:maj7 af:7 | g:m7 gf:dim7 | 
    f2:m7 f:m/ef | d:m7 g:7.9- |
    c4:m7 f:7 f:m7 bf:aug7 | ef2:maj7 c:aug7.9- | 

    f32:m7  \appoggiatura { s8 } s4... c2:7.9- | f2:m7 b4:m7 e:7 | 
    ef2:maj7 f:m7 | g:m7 gf:dim7 | 
    f2:m7 ef:m7 | d:m7.5- g:7.9- |
    c2:m7 f4:m7 bf:7 | ef2:maj7 b:13 | 

    e2:maj7 fs:m7 | gs:m7 a4:m7 d:7 | 
    gs4:m7 cs:m7 fs:m7 e:1.3-.5.7+/b | e1:maj7 |
    e2:m7 a:aug7 | d:maj7 f:dim7 | 
    e2:m7 a:7 | d4:7 df:7 c:7 gf:7 |

    f2:m7 e:dim7 | f:m7 b4:m7 e:7 | 
    ef2:maj7 f:m7 | g:m7 gf:dim7 | 
    f2:m7 f:m/ef | d:m7.5- g:7.9- |
    c4:m7 f:7 b:m7 e:7 | 

        ef2:maj7 c:aug7.9- | 
        ef2:maj7 c4..:7.9- f16:m7
}

melodyPhraseOne = \relative c' { 
    r8 f16 g  af bf g f  e8-- \tuplet 3/2 { g16 bf df } c8-- \tuplet 3/2 { e16 g bf } |
    af16-- f-. r8 r4 
}
melodyPhraseTwo = \relative c'' { 
        \tuplet 3/2 { r8 d-> bf } \tuplet 3/2 { fs8 d d'-> } |
    bf4-- 
}
melodyPhraseThree = \relative c'' { 
        r16 g'8. gf4-- r16 d ef f ~ | 
    f8. d16  bf8-- g16 gf ~ 16 d'8. ~ 8. c16 | 
    ef8. c16 ~ 4  r16 bf'32 a af16 g  f ef d c | 
    b8. d16
}
melodyPhraseFour = \relative c'' { 
        af16 d,16 fs g ~ 4. r8 | 
}
melodyPhraseFive = \relative c'' { 
    r16 g ~ \tuplet 3/2 { g16 a b } c16 d ef f ~ 8 \tuplet 3/2 { d16 c bf } fs'8-- \tuplet 3/2 { d16 c bf } |
    g'16 8. ~ 4 \tuplet 3/2 { r8 ef' \glissando c } \tuplet 3/2 { af8 e c } ||

    s32 \appoggiatura { fs8 ( } g4.*11/12 ) r8 r16 gs8. e16 [ c r g' ~ ] |
    g8. f32 ef  d8-- c16 cs ~ 8. b16 fs8-- gs16 bf ~ | 
    bf4 r16 d b c ~ 4 r16 ef df d ~ | 
    d8. bf16 r4 r16 d ef b ~ 16 d ef c ~ | 

    c4 \tuplet 3/2 { r8 af' g } gf16 [ af r f ] ~ 8 ef16 e ~ | 
    e8 ~ \tuplet 3/2 { e16 d c } b8-- g16 bf ~ 8 a16 af ~ 8 r | 
    r16 g \tuplet 3/2 { a16 b d } c16 d ef f ~ 16 e f gf ~ 16 f gf g ~ | 
    g4 ~ 16 fs g gs ~ 8. fs16 ds8 cs16 b ~ || \pageBreak

    b8. gs'16 ~ 8 c,16 cs r a'8. ~ 8 d,16 ds | 
    r16 b'8. ~ 8 d16 c r g \tuplet 3/2 { e16 c a } fs'8-- e16 gs | 
    r16 b,8. ~ 8. gs16 a fs a cs bf g \tuplet 3/2 { ds'?32 e ds } cs16 |
    b2 r16 b cs ds  fs8-- ds16 e | 

    r16 b'8. ~ 4 r16 cs32 b a16 f cs a a' fs |
    r16 cs'8. ~ 8 b16 e r d [ r d, ] f cs' b d ~ | 
    d8 ~ \tuplet 3/2 { d16 b g } e16 b d cs ~ 4 \tuplet 3/2 { r8 a' g } |
    fs16 fs, c' fs  f f, b f'  e g bf ef ~ 8 c16 af ~ ||
    
    af4 r r16 \grace { c16 } df16 \grace { a16 } bf16 \grace { fs16 } g16 ~ 4 | 
    r16 c, f g  af bf c cs ~ 16 b \tuplet 3/2 { fs16 d b } gs'8-- fs16-- g-. | 
    r8. ef,16-> bf'-- [ g'^^ r af^^ ] r8. f,16-> c'-- [ af'^^ r16 bf^^ ] | 
    r16 g [ \tuplet 3/2 { r16 f ef ] } d16 ef gf a d b c f ~ 8 ef16 af, ~ | 

    af4 r16 g,32 af \tuplet 3/2 { c16 ef g } bf8 af16 g ~ 8 f16 d | 
    r8. af16 c8-- d16 b r16 bf'32 a af16 b, \grace { fs'16 } g8-- [ d16 ( \grace { ds16 e } f16-. ] ) |
    r16 d ef c ~ 4 r16 as b32 d \tuplet 3/2 { fs32 as cs } b8-. c16 bf ~ | 

        bf2 \comp #2
        bf4\repeatTie r16 ef d df ~ \tuplet 3/2 { df16 bf g } f16 e ~ 8 df16 c^^
}
melody = \relative c' { 
    \melodyPhraseOne
    \melodyPhraseTwo
    \melodyPhraseThree
    \melodyPhraseFour
    \melodyPhraseFive
}
melodyForEb = \relative c' { 
    \transpose c c, \melodyPhraseOne
    \melodyPhraseTwo
    \transpose c c, \melodyPhraseThree
    \melodyPhraseFour
    \transpose c c, \melodyPhraseFive
}


\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \chordsSong }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }

}


\book {
  \bookOutputSuffix "transposed-for-Eb"
    \header {
        poet = "    Eb Alto Sax"
        subtitle = "(Transposed to Body & Soul Key, Concert Db)"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef bf  { \chordsSong }
            \new Staff \transpose ef bf { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodyForEb
                    \noPageBreak
                >>
            }
        >>
    }

}
%}
