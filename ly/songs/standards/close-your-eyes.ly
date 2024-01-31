\version "2.19.83"

titleLeft = "Close Your"
titleRight = "Eyes"
title = "Close Your Eyes"
composerName = "B. Petker"
lyricistName = "B. Petker"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm close-your-eyes*pdf ; lilypond ly/songs/standards/close-your-eyes.ly ; for file in close-your-eyes*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/close-your-eyes*
lilypond ly/songs/standards/close-your-eyes.ly 
mv close-your-eyes*pdf pdf/songs/standards
for file in pdf/songs/standards/close-your-eyes*pdf ; do op $file ; done 

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
    \partial 2 s2
    \startSection "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*4 \break
        s1
    }
    \alternative {
        { s1*3 \bar ":|]" }
        { s1*3 \break }
    }
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -1 )
    \startSection "B"
    s1*4 \break
    s1*4 \break
    \startSection "A"
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsFull = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s2
    f1:m7.5- | bf:7.9- | f1:m7.5- | bf:aug7.9- | 
    ef2:m6 c:7.9+.13- | f:m7.5- bf:7.9- | ef1:m6 | s ||

    f1:m7.5- | bf:7.9- | f1:m7.5- | bf:aug7.9- | 
    ef2:m6 c:7.9+.13- | f:m7.5- bf:7.9- | ef1:maj7.9 | s ||

    bf1:m7 | ef:7 | bf:m7 | ef:7 | 
    af1:7 | s | cf:7 | bf:7.9- ||

    f1:m7.5- | bf:7.9- | f1:m7.5- | bf:aug7.9- | 
    ef2:m6 c:7.9+.13- | f:m7.5- bf:aug7 | ef1:m6 | s ||
}
chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s2
    f1:m7.5- | bf:7.9- | f1:m7.5- | bf:aug7.9- | 
    ef2:m6 c:7.9+.13- | f:m7.5- bf:7.9-.13- | ef1:m6 | s ||
        | f2:m7.5- bf:7.9- | ef1:maj7.9 | s ||

    bf1:m7 | ef:7 | bf:m7 | ef:7 | 
    af1:7 | s | cf:7 | bf:7.9- ||

    f1:m7.5- | bf:7.9- | f1:m7.5- | bf:aug7.9- | 
    ef2:m6 c:7.9+.13- | f:m7.5- bf:aug7 | ef1:m6 | s ||
}

melodyFull = \relative c'' { 
    bf4. f8 ||
    af1 ~ | 2 bf4. f8 | \tuplet 3/2 2 { af4 bf af  f af f } | d2 gf4. d8 | 
    ef1 ~ | 4 4 \tuplet 3/2 { f4 gf af } | bf1 ~ | 4 r bf4. f8 ||

    af1 ~ | 2 bf4. f8 | \tuplet 3/2 2 { af4 bf af  f af f } | d2 gf4. d8 | 
    ef1 ~ | 4 4 \tuplet 3/2 { f4 g? af } | bf1 ~ | 4 r ef4. bf8 ||

    df1 ~ | 2 ef4. bf8 | \tuplet 3/2 2 { df4 ef df  bf df bf | g bf g  ef f ef } |
    \tuplet 3/2 { gf4 ef gf } ef2 ~ | 2 \tuplet 3/2 { ef4 f ef } | gf2 ef | f 

        bf4. f8 ||
    af1 ~ | 2 bf4. f8 | \tuplet 3/2 2 { af4 bf af  f af f } | d2 gf4. d8 | 
    ef1 | \tuplet 3/2 { f4 gf af } bf4 4 | 1 | R1 ||
}
melodyHead = \relative c'' { 
    bf4. f8 ||
    af1 ~ | 2 bf4. f8 | \tuplet 3/2 2 { af4 bf af  f af f } | d2 gf4. d8 | 
    ef1 ~ | 4 4 \tuplet 3/2 { f4 gf af } | bf1 ~ | 4 r bf4. f8 ||
        | ef4\repeatTie 4 \tuplet 3/2 { f4 g? af } | bf1 ~ | 4 r ef4. bf8 ||

    df1 ~ | 2 ef4. bf8 | \tuplet 3/2 2 { df4 ef df  bf df bf | g bf g  ef f ef } |
    \tuplet 3/2 { gf4 ef gf } ef2 ~ | 2 \tuplet 3/2 { ef4 f ef } | gf2 ef | f 

        bf4. f8 ||
    af1 ~ | 2 bf4. f8 | \tuplet 3/2 2 { af4 bf af  f af f } | d2 gf4. d8 | 
    ef1 | \tuplet 3/2 { f4 gf af } bf4 4 | 1 | R1 ||
}

melodySong = \relative c' { 
    \melodyHead
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Close your eyes.
    Rest your head on my shoul -- der and sleep.
    Close your eyes 
    and I will close mine.  Close your

    \repeat unfold 1 { \skip 1 }
    Oh, this is di -- vine

    Mu -- sic play
    some -- thing dream -- y for danc -- ing 
    while we're here ro -- manc -- ing.
    It's love's hol -- i -- day
    and love will be our guide.

    Close your eyes.
    When you o -- pen them, dear, I'll be near, 
    by your side, 
    so won't you close your eyes. 
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }
    Let's pre -- tend that we're both count -- in sheep.
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }
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
        subtitle = "(Sher key)"
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

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Eb-for-Bb"
    \header {
        subtitle = "(Sher key)"
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

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Eb-for-Eb"
    \header {
        subtitle = "(Sher key)"
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
        subtitle = "(real book key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef bf, <<
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
        subtitle = "(real book key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose ef bf, <<
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
        subtitle = "(real book key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose ef bf, <<
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
  \bookOutputSuffix "in-C-for-C"
    \header {
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
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

\book {
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose ef c <<
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
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose ef c <<
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

