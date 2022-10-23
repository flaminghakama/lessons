\version "2.19.83"

titleLeft = "Misty"
titleRight = ""
title = "Misty"
composerName = "E. Garner"
lyricistName = "E. Garner"

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
    \key ef \major
    \tempo "Ballad" 4=68
    \partial 4
    s4
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*3 \break
        s1*3 \break
    }
    \alternative {
        { s1*2  \bar ":|]" } 
        { s1*2 }
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

melodyACommon = \relative c'' { 
   bf8 g || 
    d2. bf8 c | df c'8 8 8  8 bf g ef | 
    c2 \tuplet 3/2 4 { r8 g af  c ef g } | bf8 8 8 af  bf4. af8 | 
    g4 ~ \tuplet 3/2 4 { g8 af bf } ef,4 ~ \tuplet 3/2 4 { ef8 f g } | af8 c,4  8 \tuplet 3/2 2 { d4 ef f } | 
 }
melodyHead = \relative c'' { 
    \melodyACommon
    g1 ~ | 2. bf8 g ||
    ef1  | \tuplet 3/2 2 { r4 ef f  g bf c } ||

    df8 8 8 8 ~ 2 ~ | 4 df8 ef \tuplet 3/2 2 { ff4 ef df } |
    c8 8 8 8 ~ 2 | \tuplet 3/2 2 { r4 ef, f  af bf c } |
    d8 8 8 c  d2 ~ | 8 8 8 c \tuplet 3/2 { f4 d c } | 
    bf1 ~ | 2. 
    
    \melodyACommon
    ef,1 | R1 | 
}

melodySong = \relative c' { 
    \melodyHead
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Look at me, I'm as help -- less as a kit -- ten up a tree
    And I feel like I'm cling -- ing to a cloud, I can't un -- der -- stand
    I get mis -- ty, just hol -- ding your hand.  Walk my

    near

    You can say that you're lead -- ing me on
    But it's just what I want you to do
    Don't you no -- tice how hope -- less -- ly I'm lost
    That's why I'm fol -- low -- ing you

    On my own, would I wan -- der through this won -- der -- land a -- lone
    Ne -- ver know -- ing my right foot from my left, my hat from my glove
    I'm too mis -- ty, and too much in love.  
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 2 { \skip 1 }

    way, and a thou -- sand vi -- o -- lins be -- gin to play
    Or it might be the sound of your hel -- lo, that mu -- sic I hear
    \repeat unfold 4 { \skip 1 }
    the mo -- ment you're 
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }
    \repeat unfold 38 { \skip 1 }

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Eb-for-C"
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
  \bookOutputSuffix "in-Eb-for-Bb"
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
  \bookOutputSuffix "in-Eb-for-Eb"
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
  \bookOutputSuffix "in-Bb-for-C"
    \header {
        subtitle = "(Ula key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef bf <<
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
  \bookOutputSuffix "in-Bb-for-Bb"
    \header {
        subtitle = "(Ula key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef bf \transpose bf, c <<
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
  \bookOutputSuffix "in-Bb-for-Eb"
    \header {
        subtitle = "(Ula key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef bf \transpose ef c <<
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


