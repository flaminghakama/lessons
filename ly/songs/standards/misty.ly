\version "2.19.83"

titleLeft = "Misty"
titleRight = ""
title = "Misty"
composerName = "E. Garner"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm misty*pdf ; lilypond ly/songs/standards/misty.ly ; for file in misty*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/misty*
lilypond ly/songs/standards/misty.ly 
mv misty*pdf pdf/songs/standards
for file in pdf/songs/standards/misty*pdf ; do op $file ; done 

git add . ; git commit -m"fixing wrong notes" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

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
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
    \key ef \major
    \tempo "Ballad" 4=68
    \partial 4
    s4
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*6
    }
    \alternative {
        { s2  \bar ":|]"  \break } 
        { s2 }
    }
    \startSection "B"
    s1*4 \break
    s1*4 \break
    \startSection "C"
    s1*8
    \bar "|."    
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4 ||
    ef1:maj7 | bf2:m7 ef:7 | af1:maj7 | af2:m7 df:7 | 
    ef2:maj7 c:m7 | f:m7 bf:7 | g:m7 c:7 | f:m7 bf:7 ||
        ef2:6 df:9 | ef1:maj7||

    bf1:m7 | ef:7.9- | af:maj7 | s | 
    a1:m7 | d2:7 f:7 | g:m7 c:7.9- | f:m7 bf:7 ||

    ef1:maj7 | bf2:m7 ef:7 | af1:maj7 | af2:m7 df:7 | 
    ef2:maj7 c:m7 | f:m7 bf:7 | g:m7 c:7 | f:m7 bf:7 ||
}

melodyIntro = \relative c'' { 
    c8 a g a r4 r8 c | d ef d ef d4 c8 a | 
    c8 a g a r4 r8 c | d ef d ef d4 c8 a | 
    c8 a g a r2 | a8 g a2. |
    a8 g a2. | R1 || 

}
melodyHead = \relative c'' { 
    r4 a8 c r e r ef ~ || 
    ef2 e4. c8 ~ | 2 ~ 8 a4 c8 ~ | 8 a2.. | r4 a8 c r e r g ~ | 
    g2 ~ 8 a4 e8 ~ | 2 ~ 8 d4 e8 ~ | 1 | r4 a,8 c r e r ef ~ | 
    ef4. e8 ~ 4.  c8 ~ | 2 ~ 8 a4 c8 ~ | 8 a2.. | r2 r4 r8 d | 
    c8 8 r c8 ~ 8 d c b ~ | 2 a8 b4 c8 ~ | 8 b a2. | r4 a8 8 c e d4 ~ ||

    d1 ~ | 4 e8 d c a c4 ~ | 8 a8 8 8 r2 | r4 a8 8 c e d4 ~ | 
    d1 ~ | 4 e8 d c a c4 ~ | 8 a8 8 8 r2 | R1 ||
}
melodySong = \relative c' { 
    \melodyIntro
    \melodyHead
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2


    di ba duh dun  
    ba di ba di ba daa bah beh

    di ba duh dun  
    ba di ba di ba daa bah beh

    di ba duh dun  
    da bu daa
    da bu daa

    Eu quis a -- mar, mas tive m -- e -- do
    E quis sal -- var meu cor -- a -- ção
    Ma -- so a -- mor sa -- \markup { "be um" } se -- gre -- do
    O me -- do po -- de ma -- tar o seu cor -- a -- ção

    Á -- gua de be -- ber
    Á -- gua de be -- ber ca -- ma -- rá
    Á -- gua de be -- ber
    Á -- gua de be -- ber ca -- ma -- rá

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }

    Eu nun -- ca fiz coi -- sa tão cer -- ta
    En -- trei pra co -- la do per -- dão
    A min -- ha ca -- sa vive a -- ber -- ta
    \skip 1 
    Ab -- ri to -- das as por -- tas do cor -- a -- ção
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }
    \repeat unfold 38 { \skip 1 }

    Eu sempre tive uma certeza
    Que só me deu desilusão
    É que o amor é uma tristeza
    Muita mágoa demais para um coração
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
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
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
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
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
    \header {
        subtitle = ""
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
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

