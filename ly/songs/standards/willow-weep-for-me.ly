\version "2.24.0"

titleLeft = "Willow"
titleRight = "Weep For Me"
titleFull = "Willow Weep For Me"
composerName = "A. Ronell"
lyricistName = "A. Ronell"
arranger = ""
copyright = ""

%{

killPreview ; rm willow-weep-for-me*pdf ; lilypond ly/songs/standards/willow-weep-for-me.ly ; for file in willow-weep-for-me*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/willow-weep-for-me*
lilypond ly/songs/standards/willow-weep-for-me.ly 
mv willow-weep-for-me*pdf pdf/songs/standards
for file in pdf/songs/standards/willow-weep-for-me*pdf ; do op $file ; done 

git add . ; git commit -m"fixing lyric" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.padding = #0

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

    \key g \major
    \time 4/4
    \tempo 4=80

    \startSection "A"
    \repeat volta 2 { 
        s1*3 \break
        s1*3 \break
        s1
    }
    \alternative {
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "B"
    s1 \break s1*7

    \startSection "A"
    s1*8

    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
        s1*9


    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    g2:6 c:7 | g:6 c:7 | g:6 a4:m7 d:7 | 
    g4:6 a:m7 bf:dim7 g:6/b | c1:9 | a2:m7.5- d:aug7 | 
    g2:6 c:7 | g:6 d:aug7 || g2:6 d4:m7 g:7 ||

    c2:m c:m6 | g:m g:7 | c:m7 bf:7 | af:7 g:7 |
    c2:m c:m6 | g:m g:7 | c:m7 bf:7 | af:7 a4:m7 d:aug7 ||

    g2:6 c:7 | g:6 c:7 | g:6 a4:m7 d:7 | 
    g4:6 a:m7 bf:dim7 g:6/b | c1:9 | a2:m7.5- d:aug7 | 
    g2:6 c:7 | g:6 d:aug7 ||
}

melody = \relative c'' { 
    \accidentalStyle default

    d8 d,  e g16 e ~ 2 | d'8 d, e g16 e ~ 2 | 
    d'8 d,  e g16 e ~ 8 d e g16 b ~ | 8 g e g16 e ~ 2 | 

    d'8 c bf a g2 | d'8 c bf16 a8 g16 d'8 d,4 8 ~ | 1 ~ | 2 r | d2\repeatTie r ||

    g8 c d c16 ef ~ 4. c8 | bf g bf g16 b ~ 4 r8 g | 
    c8 8 d c bf c4 bf8 | af bf4 af8 g4 r | 

    g8 c d c16 ef ~ 4. c8 | bf g bf g16 b ~ 4. g8 | 
    c8 8 d c bf c4 bf8 | af bf c16 ef d8 ~ 4 4 | 

    d8 d,  e g16 e ~ 2 | d'8 d, e g16 e ~ 2 | 
    d'8 d,  e g16 e ~ 8 d e g16 b ~ | 8 g e g16 e ~ 2 | 

    d'8 c bf a g2 | d'8 c bf16 a8 g16 d'8 d,4 8 ~ | 1 ~ | 2 r ||
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Wil -- low weep for me, 
    wil -- low weep for me, 

    Bend your bran -- ches green 
    a -- long the stream that runs to sea.

    Lis -- ten to my plea, 
    lis -- ten wil -- low and weep for me.

    \repeat unfold 1 { \skip 1 }

    Whis -- per to the wind 
    and say that love has sinned 

    to leave my heart a break -- ing 
    and ma -- king a moan, 

    Mur -- mur to the night 
    to hide her star -- ry light, 

    So none will find me sigh -- ing 
    and cry -- ing all a -- lone.   

    Oh, weep -- ing wil -- low tree, 
    weep in sym -- pa -- thy, 

    Bend your bran -- ches down 
    a -- long the ground and co -- ver me, 

    When the sha -- dows fall, 
    bend oh wil -- low and weep for me. 

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Gone my lov -- er's dream, 
    love -- ly sum -- mer dream, 

    Gone and left me here 
    to weep my tears in -- to the stream.

    Sad as I can be, 
    hear me 
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-G-for-C"
    \header {
        subtitle = "(original key)"
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
                    \rehearsalMarkTweaksForC
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

\book {
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        subtitle = "(original key)"
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
                    \rehearsalMarkTweaksForBb
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

\book {
  \bookOutputSuffix "in-G-for-Eb"
    \header {
        subtitle = "(original key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
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
                    \rehearsalMarkTweaksForEb
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


\book {
  \bookOutputSuffix "in-Gb-for-C"
    \header {
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose g fs <<
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
                    \rehearsalMarkTweaksForC
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

\book {
  \bookOutputSuffix "in-Gb-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose g gf <<
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
                    \rehearsalMarkTweaksForBb
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

\book {
  \bookOutputSuffix "in-Gb-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose g gf <<
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
                    \rehearsalMarkTweaksForEb
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
