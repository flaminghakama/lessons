\version "2.19.81"

titleLeft = "Chega de"
titleRight = "Saudade"
title = "Chega de Saudade"
composerName = "A. C. Jobim"
lyricistName = "J. Hendricks & J. Cavanaugh"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm chega-de-saudade*pdf
lilypond ly/songs/standards/chega-de-saudade*.ly
mv chega-de-saudade*.pdf pdf/songs/standards
for file in pdf/songs/standards/chega-de-saudade*pdf ; do open -a Preview $file ; done

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \key d \minor
    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
    \startSection "A"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \once \override Score.RehearsalMark #'extra-offset = #'( -4 . 0 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \once \override Score.RehearsalMark #'extra-offset = #'( -3 . -2 )
    \startSection "C"
    \pageBreak

    \key d \major
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \once \override Score.RehearsalMark #'extra-offset = #'( -4 . -1 )
    \startSection "D"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 
    \key d \minor
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m | d:m/c | e:7/b | s | 
    a1:aug7.9+ | s | d:m | e2:m7.5- a:7 |
    d1:m | b2:m7.5- e:7 | a1:m | s | 
    bf1:maj7 | bf:6 | a:7.9- | s ||

    d1:m | d:m/c | e:7/b | s | 
    a1:aug7.9+ | s | d:m | d:7.9- |
    g1:m | a:7 | d:m | d:m/c | 
    b:dim7 | bf:m6 | d:m | e2:m7 a:7 || 

    d1:maj7 | b:aug7/ds | e:m7 | s | 
    a:1.4.5.7.9 | a:7 | d:dim7 | d:maj7 | 
    fs1:m7 | f:dim7 | e:m7 | s | 
    e1:9 | s | g:m6 | a:7 ||

    d1:maj7 | b:m7 | e:7 | s | 
    fs1:7 | s | b2:m7 bf:m7 | a:m7 d:7 | 
    g1:maj7 | g:m7 | fs:m7 | b2:13 b:aug7 |
    e1:9 | a:1.4.5.7.9.13 | fs:m7 | b:aug7 | 
    e1:9 | a:1.4.5.7.9.13 | d:6 | b:aug7 ||
}

melody = \relative c'' { 

    f2 a, | d2 ~ 8 f4 e8 ~ | 2 b | d2 r8 e4. |
    f2 b, | cs2  r8 f4 e8 ~ | 8 d f4 e8 d4 a8 ~ | 2 r |
    f'2 a, | b2 r8 d4 c8 ~ | 2 e | r4 r8 e d c4 8 ~ | 
    c4. bf8 ~ 2 ~ | 4 f'8 8 ~8 d4 d8 ~ | 8 cs e cs ~ 8  b4. ~ | 2 r4 r8 f' ~ ||


    f2 a, | d2 f4. e8 ~ | 2 b4. d8 ~ | d2 e4. f8 ~ |
    f2 b, | cs2  r8 f4 e8 ~ | 8 d4 cs8 d4 ef ~ | 8 d4 fs8 ~ 8 a4 g8 ~ | 
    g2 b4. cs,8 ~ | 2 r8 a'4 g8 ~ | 8 f4 a8 ~ 8 g f4 | e4. d8 cs d4 f8 ~ | 
    f8 d b4 ~ 8 d4 f8 ~ | 8 cs bf4 ~ 8 f'4 d8 ~ | 1 | R1 ||


    r2 r4 fs ~ | 8 a4 g8 ~ 8 ds4 fs8 ~ | 8 e4 ds8 e4 b' ~ | 4 g8 e ~ 8 b4 d8 ~ | 
    d2 c | r8 e4 cs8 ~ 8 a4 b8 ~ | 1 | a2 r8 c4 e8 ~ | 
    e8 d4 c8 d4 f ~ | 8 gs4 cs8 ~ 8 b4 a8 ~ | 8 g4 b,8 ~ 2 | r4 b8 c ~ 8 d4 fs8 ~ | 
    fs8 e4 d8 b4 gs ~ | 8 b4 cs8 ~ 8 e4 d8 ~ | 2 cs | r2 r4 r8 fs ~ ||


    fs2 a, | b fs'4. e8 ~ | 2 b | d2 r8 e4 fs8 ~ | 
    fs2 as, | cs r8 fs4 e8 ~ | 8 d4 cs8 d4 e ~ | 8 d4 fs8 ~ 8 b4 a8 ~ | 

    a8 fs4 d8 ~ 4 r8 b | a'8 f4 d8 ~ 8 bf4 a'8 ~ | 
    a8 e4 cs8 ~ 8 a4 gs'8 ~ | 8 b4 g8 ~ 8 b4 fs8 ~ | 
    
    fs8 d4 b8 d4 fs ~ | 4 d8 b ~ 8 d4 fs8 ~ | 
    fs2 r8 fs g [ a ] | b4 a8 g ~ 8 fs4 d8 ~ | 

    d8 b4 d8 fs4 d ~ | 8 b4 d8 ~ 8 fs4 d8 ~ | 
    d1 | R || 

}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2


}
lyricsHeadTwo = \lyricmode {
}


lyricsEnglishOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    No more blues, I'm goin' back home
    No, no more blues, I pro -- mise no more to roam
    Home is where the heart is
    The fun -- ny part is my heart's been right there all a -- long

    No more tears and no more sighs
    And no more fears, I'll say no more good -- byes
    If tra -- vel beck -- ons me, I swear I'm gon -- na re -- fuse
    I'm gon -- na set -- tle down and there'll be no more blues

    Eve -- ry -- day while I am far a -- way
    My thoughts turn home -- ward, for -- ev -- er home -- ward
    
    I've trav -- eled 'round the world in search of hap -- pi -- ness
    But all the hap -- pi -- ness I've found was in my home -- town
    
    No more blues, I'm goin' back home
    No, no more dues, I'm through with all my wan -- drin' now

    I'll set -- tle down and ne -- ver roam and find a man and build a home
    When we set -- tle down, there'll be no more blues
    No -- thing but hap -- pi -- ness when we set -- tle down, there'll be no more blues
}


\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}
%{
\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
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
%}
\book {
  \bookOutputSuffix "english-for-C"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "english-for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Lead Sheet"
    }
    \score {
        \transpose bf c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "english-for-Eb"
    \header {
        subtitle = ""
        poet = "Eb Lead Sheet"
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}
