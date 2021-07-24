\version "2.19.83"

titleLeft = "Agua de"
titleRight = "Beber"
title = "Agua de Beber"
composerName = "A. C. Jobim"
lyricistName = "V. de Moraes"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm agua-de-beber*pdf ; lilypond ly/songs/standards/agua-de-beber.ly ; for file in agua-de-beber*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/agua-de-beber*
lilypond ly/songs/standards/agua-de-beber.ly 
mv agua-de-beber*pdf pdf/songs/standards
for file in pdf/songs/standards/agua-de-beber*pdf ; do op $file ; done 

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
    \key a \minor
    \tempo "Bossa" 4=168
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*7
    }
    \alternative {
        { s1  \bar ":|]"  \break } 
        { s1 }
    }
    \startSection "B"
    s1*3 \break
    s1*4 \break
    s1*4 \break
    s1*4  \break s1
    \startSection "C"
    s1*8
    \bar "|."    
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    a1:m7 | b2:7.9+ e:aug7 | a1:m7 | b2:7.9+ e:aug7 | 
    a1:m7 | f:maj7 | a:m7 | e:m7.5- || a:m7 ||

    b1:7.9- | e:aug7 | a:m7 | s | 
    d1:m7 | g:7 | c:maj7 | s | 
    b2:7 bf:7.5- | a:m7 af:dim7 | c1:9/g | b1:7.9+/fs | 
    b1:7.9- | e:1.4.5.7.9 | a:m7 | s ||

    d1:7 | d:m7 | a:m7 | s | 
    d1:7 | d:m7 | a:m7 | s || 
}

melodyIntro = \relative c'' { 
    d8 a g a r4 r8 c | d ef d ef d4 c8 a | 
    d8 a g a r4 r8 c | d ef d ef d4 c8 a | 
    d8 a g a r2 | a8 g a2. |
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

