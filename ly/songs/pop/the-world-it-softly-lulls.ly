\version "2.24.0"

titleLeft = "The World It"
titleRight = "Softly Lulls"
titleFull = "The World It Softly Lulls"
composerName = "H. Kaiyote"
lyricistName = "H. Kaiyote"
arranger = ""
copyright = ""

%{

killPreview ; rm the-world-it-softly-lulls*pdf ; lilypond ly/songs/pop/the-world-it-softly-lulls.ly ; for file in the-world-it-softly-lulls*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/the-world-it-softly-lulls*
lilypond ly/songs/pop/the-world-it-softly-lulls.ly 
mv the-world-it-softly-lulls*pdf pdf/songs/pop
for file in pdf/songs/pop/the-world-it-softly-lulls*pdf ; do op $file ; done 

git add . ; git commit -m"fixing lyric" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"
\include "../../../../engraving/flaming-libs/flaming-roadmap.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #1

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #20

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

    \key g \minor
    \time 4/4

    \startSection "Intro"
    \tempo "Rubato"
    s1*6

    \startSection "Drums"
    \tempo 4 = 94
    s1*4

    \startSection "Bass"
    s1*8

    \startSection "Groove"
    s1*8

    \startSection "Breakdown"
    \tempo "Meno mosso"
    s1*6

    \startSection "Verse"
    \tempo 4 = 98
    s1*8

    \startSection "Chorus"
    s1*8

    \startSection "Break 2"
    s1*8

    \startSection "Solo Chorus"
    s1*8

    \startSection "Break 3"
    s1 
    \startSection ""
    s1*2

    \startSection "Bridge"
    s1*12

    \startSection "Break 4"
    s1*2

    \startSection "Verse Break"
    s1 
    \threeFour
    s2.
    \fourFour
    s1*6

    \startSection "Chorus What Up"
    s1*8

    \startSection "Woo Hoo Break"
    s1*8

    \startSection "Chorus Outro"
    s1*8

    \startSection "Skip Hop Vocalese"
    s1*8

    \startSection "Downtempo"
    \tempo 4=80
    s1*10
    \bar "|."
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key g \minor 
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s1*3 
    %\break
    s1*4
    \bar "|."
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
}

rehearsalMarkTweaksForBass = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForBb
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    % "Intro"
    d1:7 | s | s | s | s | s ||

    % "Drums"
    s1*4

    % "Bass"
    s1*8

    % "Groove"
    s1*8

    % "Breakdown"
    s1*6

    % "Verse"
    s1*8

    % "Chorus"
    s1*8

    % "Break 2"
    s1*8

    % "Solo Chorus"
    s1*8

    % "Break 3"
    s1 
    % ""
    s1*2

    % "Bridge"
    s1*12

    % "Break 4"
    s1*2

    % "Verse Break"
    s1 
    s2.
    s1*6

    % "Chorus What Up"
    s1*8

    % "Woo Hoo Break"
    s1*8

    % "Chorus Outro"
    s1*8

    % "Skip Hop Vocalese"
    s1*8

    % "Downtempo"
    s1*10
}

chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

}

chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsSong
}

bassChorus = \relative c { 
    d16 ~ || 8. g,16 ~ 8. c16 ~ 8. bf16 ~ 8. ef,16 ~ | 2..
}
guitarIntro = \relative c'' { 
    R1 | r4 r16 <f a d'> r8 r2 | 
    R1 | r4 r16 <f a d'> r8 r2 | 
    R1 | r4 r16 <f a d'> r8 r2 | 
    R1 | r4 r16 <f a d'>8. ~ 2 || 
}

bassBreakdown = \relative c { 
    d4 g, c bf | ef1 |
    d4 g, c bf | ef1 |
    d4 g, c bf | ef2 
}
pianoBreakdown = \relative c'' { 
    <fs a,>4 <g bf,> <a d,> <bf d,> | <d a g,>1
    <fs a,>4 <g bf,> <a d,> <bf d,> | <d4.. a g,>8. c32 bf <a g d,>2  
}


melody = {
}

bassLine = {
    R1*3 
    \bassIntro r2 ||
    
    \bassVerse
    \bassChorus
    \bassBridgeOne
    \bassBridge
}




lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % \repeat unfold 3 { \skip 1 }
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % \repeat unfold 42 { \skip 1 }
}

lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % \repeat unfold 3 { \skip 1 }
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
  \bookOutputSuffix "in-G-minor-for-C"
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
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }
}
