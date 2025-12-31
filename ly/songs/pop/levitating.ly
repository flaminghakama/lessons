\version "2.24.0"

titleLeft = "Levi"
titleRight = "tating"
titleFull = "Levitating"
composerName = "D. Lipa, C. Coffee Jr., S. Hudson & S. Kozmeniuk"
lyricistName = "D. Lipa, C. Coffee Jr., S. Hudson & S. Kozmeniuk"
arranger = ""
copyright = ""

%{

killPreview ; rm levitating*pdf ; lilypond ly/songs/pop/levitating.ly ; for file in levitating*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/levitating*
lilypond ly/songs/pop/levitating.ly 
mv levitating*pdf pdf/songs/pop
for file in pdf/songs/pop/levitating*pdf ; do op $file ; done 

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

    \tempo 4 = 104
    \key b \minor
    \time 4/4

    \startSection "Verse"
    s1*4
    s1*4
        
    \startSection "Chorus"
    s1*4
    s1*4
    s1*4

    \startSection "Bridge"
    s1*4

    \startSection "Breakdown"
    s1*4
    \bar "||"
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
    % "Drums"
    s1*4

}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Drums"
    s1*4

}

rehearsalMarkTweaksForEb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Drums"
    s1*4
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t



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



melodyVerse = \relative c'' { 
    \accidentalStyle default
    fs16 fs fs fs  e e e e  d d d d  cs cs cs cs | 
    b16 b b b  b8 a  b4 r8 r16 fs | 

    fs'16 fs fs fs  e e e e  d d d d  cs cs cs cs | 
    b16 16 8  8 a  b4  r  |

    b16 b b b  cs4  d16 d d d  e4 | 
    fs16 fs fs fs  fs8 a  fs4  r |

    fs16 fs fs fs  e e e e  d d d d  cs cs cs cs | 
    b16 b b b  b8 a  b4  r | 
}

melodyChorus = \relative c'' { 

    r8 r16 fs  e8 d  r8 r16 fs  e d b b | 
    r8 r16 fs'  e d b8  r8 r16 fs'  e d b b |
    r8 r16 fs'  e d b8  r 8 r16 fs'  e d b b |
    b8 b'  a g  fs4  r16 d16 8 | 

    fs4  r  e8. 16  r4 | 
    e8. 16  r4  e8. 16  r d16 8 |
    fs4  r  e8. 16  r4 | 
    e16 8 16 ~  16 d b8  r8. fs'16  e d b a |

    fs'4  r  e8. 16  r4 | 
    e8. 16  r4  e8. 16  r d16 8 |
    fs4  r  e8. 16  r4 | 
    e16 8 16 ~  16 d b8  r8. fs'16  e d b a |
}


melodyBridge = \relative c'' { 
    r4  d16 d d d  cs8. a16 ~  16 fs b8 ~ | 
    b4  d16 d d d  e r d e  r d e d ~  |
    d16 cs b8  d16 d d d  cs8 16 a16 ~  16 fs b8 | 
    b8 b'  a g  fs4  r ||
}

melodyBreakdown = \relative c'' { 
    d16 e b cs  d e b cs  d8 cs  r8 b16 cs |
    d16 e b cs  d e b cs  d8 cs  r8 r16 b |
    d16 e b cs  d e b cs  d8 cs  r4 |
    b8. cs16 ~  8 d ~  16 b'8.  4  | 
}

melody = {
    \melodyVerse
    \melodyChorus
    \pageBreak
    \melodyBridge
    \melodyBreakdown
}

melodyCoda = \relative c'' { 
    r2 r8 g fs [ ef ] ||
    <d a'>4. a'8 ~ 2 ~ | 4  r  g8. 16 ~  8 gs | 
    a4. 8 ~ 2 ~ | 4  r  g8. 16 ~  8 gs | 
    a1 | 1 ||
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    If you wan -- na run a -- way with me, I know a ga -- lax -- y
    And I can take you for a ride

    I had a pre -- mo -- ni -- tion that we fell in -- to a rhy -- thm
    Where the mu -- sic don't stop for life

    Glit -- ter in the sky, glit -- ter in my eyes
    Shi -- ning just the way I like

    If you're feel -- ing like you need a lit -- tle bit of com -- pa -- ny
    You met me at the per -- fect time


        You want me, I want you, ba -- by
        My su -- gar -- boo, I'm le -- vi -- ta -- ting

        The Mil -- ky Way, we're re -- ne -- ga -- ding
        Yeah, yeah, yeah, yeah, yeah

        I got you, moon -- light, 
        you're my star -- light

        I need you all night, 
        come on, dance with me I'm le -- vi -- ta -- ting

        You, moon -- light, you're my star -- light 
        I need you all night, come on, dance with me I'm le -- vi -- ta -- ting


            You can fly a -- way with me to -- night
            You can fly a -- way with me to -- night
            Ba -- by, let me take you for a ride
            Yeah, yeah, yeah, yeah, yeah
            I'm levitating

                Love is like a roc -- ket, watch it blast off
                And I'm fee -- ling so e -- lec -- tric, dance my arse off

                And e -- ven if I wan -- ted to, I can't stop
                Yeah, yeah, yeah, yeah, yeah
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }
}

lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }
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
  \bookOutputSuffix "for-C"
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

