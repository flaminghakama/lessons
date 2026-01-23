\version "2.24.0"

titleLeft = "If Ever I Would"
titleRight = "Leave You"
titleFull = "If Ever I Would Leave You"
composerName = "F. Loewe"
lyricistName = "F. Loewe"
arranger = ""
copyright = ""

%{

killPreview ; rm if-ever-i-would-leave-you*pdf ; lilypond ly/songs/standards/if-ever-i-would-leave-you.ly ; for file in if-ever-i-would-leave-you*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/if-ever-i-would-leave-you*
lilypond ly/songs/standards/if-ever-i-would-leave-you.ly 
mv if-ever-i-would-leave-you*pdf pdf/songs/standards
for file in pdf/songs/standards/if-ever-i-would-leave-you*pdf ; do op $file ; done 

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

    \key bf \major
    \time 4/4

    \partial 2.
    s2. 

    \startSection "A"
    \repeat volta 2 { 
        \startRepeat
        s1*12 
        s1 
    }
    \alternative{
        { s1*3 \endRepeat }
        { s1 }
    } s1*2

    \startSection "B"
    s1*4 
    s1*4 

    \startSection "C"
    s1*4 
    s1*4 
    s1*4 
    s1*5
    \bar "||"

}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    s2.

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
        s1*12 
        s1 
        s1*3

        s1
        s1*2 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
    s1*4  
    s1*4  

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "C"
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
    s2.

    c1:m7 | f:9 | bf2:maj7 ef:maj9 | d:m7 g:9 | 
    c1:m7 | f:9 | bf:maj7 | bf2:6 bf:7 |

    ef1:maj9 | c2:m7 f:7 | bf1:maj9 | g:m7 | 
    c2:m7 g:7 | c1:7 | f:1.4.5.7.9 | f:9 || 
        c2:m7 f:7 | bf1:6 | s ||


    d2 d:aug | e:m7 a:7 | d1:maj7 | d:6 | 
    fs2 fs:aug | b e4:m7 a:7 | d2:maj7 d:6 | f1:7 ||


    c1:m7 | f:9 | bf2:maj7 ef:maj9 | d:m7 g:9 | 
    c1:m7 | f:9 | d:1.4.5.7 | d2:7 bf:7 | 

    ef1:maj7 | c2:m7 ef:m | bf1:6 | c:7 | 
    f1:1.4.5.7.9 | f:9 | bf:6 | ef | bf2:6 c4:m7 f:7 ||
}

melody = \relative c' { 
    \accidentalStyle default

    bf4  c8 d a bf || 
    c4 d2. ~ | 4 r8 bf  c d ef f | d4 f2. ~ | 2 c8 d ef f | 
    ef4 f2 g4 | a bf2 c4 | d1 ~ | 4 4 \tuplet 3/2 { d4 bf g } |
    bf2 2 ~ | 4 c \tuplet 3/2 { c4 a f } | a1 ~ | 4 bf \tuplet 3/2 { bf4 g ef } |
    g2 2 ~ | 4 c,8 d ef4 f | c1 ~ | 8 r bf4  c8 d a bf ||
        g'4\repeatTie c,8 d ef4 d | bf1 | r2 r8 a bf [ c ] ||

    d4 4 4 4 | 8 8 4 4 e | fs1 ~ | 2 r8 cs d [ e ] | 
    fs4 4 4 4 | 4 4 g8 a fs g | a1 ~ | 4 r8 bf, c d a bf ||

    c4 d2. ~ | 4 r8 bf  c d ef f | d4 f2. ~ | 2 c8 d ef f | 
    ef4 f2 g4 | a bf2 c4 | d1 ~ | 4 4 \tuplet 3/2 { d4 bf g } |
    bf2 2 ~ | \tuplet 3/2 2 { bf4 4 c  d bf gf } | bf1 ~ | 4 4 c8 d a bf | 
    c4 d2. ~ | 2 a | bf1 ~ | 1 ~ | 2 r ||

}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    If e -- ver I would leave you, 
    it would -- n't be in Sum -- mer.  

    See -- ing you in Sum -- mer 
    I ne -- ver would go.  

    Your hair streaked with sun -- light, 
    your lips red as flame,

    your face with a lus -- tre 
    that puts gold to shame.

    But if I'd e -- ver 

    \repeat unfold 1 { \skip 1 }

    and I must be there.


        And could I leave you run -- ning  
        mer -- ri -- ly through the snow?

        Or on a win -- try eve -- ning 
        when you catch the fi -- re's glow?

    If e -- ver I would leave you, 
    how could it be in spring -- time? 

    know -- ing you in Spring 
    I'm be -- witched by you so?

    Oh, no!  Not in spring -- time, 
    Sum -- mer, Win -- ter, or fall!

    No, ne -- ver could I leave you at all!    

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 7 { \skip 1 }
    it could -- n't be in Au -- tumn. 

    How I'd leave in Au -- tumn
    I ne -- ver will know.  

    I've seen how you spar -- kle
    when fall nips the air.

    I know you in Au -- tumn 

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
  \bookOutputSuffix "in-Bb-for-C"
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

