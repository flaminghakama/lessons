\version "2.24.0"

titleLeft = "I Wish I Knew How It"
titleRight = "Would Feel To Be Free"
titleFull = "I Wish I Knew How It Would Feel To Be Free"
composerName = "B. Taylor"
lyricistName = "B. Taylor"
arranger = ""
copyright = ""

%{

killPreview ; rm i-wish-i-knew-how-it-would-feel-to-be-free*pdf ; lilypond ly/songs/standards/i-wish-i-knew-how-it-would-feel-to-be-free.ly ; for file in i-wish-i-knew-how-it-would-feel-to-be-free*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/i-wish-i-knew-how-it-would-feel-to-be-free*
lilypond ly/songs/standards/i-wish-i-knew-how-it-would-feel-to-be-free.ly 
mv i-wish-i-knew-how-it-would-feel-to-be-free*pdf pdf/songs/standards
for file in pdf/songs/standards/i-wish-i-knew-how-it-would-feel-to-be-free*pdf ; do op $file ; done 

git add . ; git commit -m"fixing chords" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #0

  % Spacing in between systems
  system-system-spacing.padding = #3

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0

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
    \tempo 4=122
    \key f \major
    \time 4/4

    \partial 4 
    s4 

    \repeat volta 2 { 
        \startRepeat
        s1*4 \break 
        s1*4 \break 
        s1*4 \break 
        s1*2
    }
    \alternative { 
        { s1*2 \endRepeat }
        { s1*2 \bar "|." }
    }
}


chordsSongIReal = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s4 
    f2 a:7 | d:m c:m7 | bf c:7 | f1 |
    f2 bf4 f/a | f2 c4/e f | c2/e g:7 | c1:7 | 
    f2 a:7 | d:m c:m7 | bf c:1.4.5.7 | f b:dim |
    f2/c cs:dim7 | d:m b:dim | f/c c:1.4.5.7 | f1 ||
    
}
chordsSongMuse = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s4 
    f2 a:7/e | d:m7 f:7 | bf:maj7 c:1.4.5.7 | f:6 c:1.4.5.7 |
    f2 bf/f| f1 | c2  g:7 | c1:7 | 
    f2 a:7/e | d:m7 f:7 | bf:maj7 c:1.4.5.7 | f:6 b:dim |
    f2/c a:7/cs | d:m7 b:dim7 | f/c c:1.4.5.7 | f/c c:1.4.5.7  ||
        f/c c:1.4.5.7 | f1 ||
}

melody = \relative c' { 
    \accidentalStyle default

    f4 || 
    c'2 a8 g4 f8 ~ | 2 d8 f4 8 ~ | 2 d8 f4 8 ~ | 2 r4 f |
    c'2 d8 c4 a8 ~ | 2 g8 a4 g8 ~ | 2 e8 d4 c8 ~ | 2 r4 f |
    c'2 a8 g4 f8 ~ | 2 d8 f4 8 ~ | 2 d8 f4 8 ~ | 4 r4 f8 4 a8 ~ |
    a2 g8 4 f8 ~ | 2 d8 4 c8 ~ | 2 f8 4 8 ~ | 2 r4 f ||
        c2 f8 4. | 2. r4 ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I wish I knew how it would feel to be free. 
    I wish I could break all these chains hold -- ing me. 
    I wish I could say all the things I should say; 
    Say 'em loud, say 'em clear for the whole world to hear. 

    I   
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 1 { \skip 1 }
    wish I could be like a bird in the sky. 
    How sweet it would be if I found I could fly. 
    I'd soar to the sun and look down at the sea. 
    Then I'd sing 'cause I know how it f 
    \repeat unfold 4 { \skip 1 }
    eels to be free.
}

lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 1 { \skip 1 }
    wish I could share all the love in my heart. 
    Re -- move all the bars that keep us a -- part. 
    I wish you could know what it means to be me.
    Then you'd see and a -- gree 
    That eve -- ry man should be free.  

    I 
}

lyricsHeadFour = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 1 { \skip 1 }
    wish I could give all I'm long -- ing to give.
    I wish I could live like I'm long -- ing to live.
    I wish I could do all the things I can do 
    Though I'm way o -- ver -- due, I'd be st
    \repeat unfold 4 { \skip 1 }
    art -- ing a -- new.
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
                \chordsSongMuse
            }
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongIReal
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadFour } 
            }
        >>
    }
}

