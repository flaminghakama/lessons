\version "2.19.83"

titleLeft = "The Frim Fram"
titleRight = "Sauce"
title = "The Frim Fram Sauce"
composerName = "J. Ricardel"
lyricistName = "R. Evans"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm frim-fram-sauce*pdf ; lilypond ly/songs/standards/frim-fram-sauce.ly ; for file in frim-fram-sauce*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/frim-fram-sauce*
lilypond ly/songs/standards/frim-fram-sauce.ly 
mv frim-fram-sauce*pdf pdf/songs/standards
for file in pdf/songs/standards/frim-fram-sauce*pdf ; do op $file ; done 

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
    \key bf \major
    \partial 4. s4.
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*7
    }
    \alternative {
        { s1  \bar ":|]"} 
        { s1 \break }
    }
    \startSection "B"
    s1*4 \break
    s1*4 \break
    \startSection "A"
    s1*8
    \bar "|."    
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4. ||

    bf1:6 | s | c2:7 g:m7 | c1:7 |
    ef2:6 e:dim7 | bf/f g:7 | c:7 f:7 | bf:6 f:7 || bf1:6 ||

    f2:m7 bf:7 | f:m7 bf:7 | ef:6 bf:aug7 | ef1:6 |
    g2:m7 c:7 | f:maj7 fs:dim7 | g:m7 c:7 | c:m7 f:7 ||

    bf1:6 | s | c2:7 g:m7 | c1:7 |
    ef2:6 e:dim7 | bf/f g:7 | c:7 f:7 | bf:6 f:7 ||
}

melodyA = \relative c' { 
    cs8 d [ f ] ||
    bf4 g8 cs, d f4. | bf4 g8 cs, d f4. | 
    e8 g bf d ~ 4 c8 g ~ | 2 r8 d' d [ c ] |

    bf4 4 4 8 g | bf4 8 g ~ 4 8 bf | 
    d8 bf4. 4 c8 bf ~ | 2 
}
melodyEndings = \relative c' {
    r8 cs d [ f ] ||  bf2\repeatTie r4 
}
melodyBridge = \relative c'' {
    bf8 8 ||
    af8 bf4. 4 4 | af4 bf8 8 ~ 4 8 8 | 
    g8 bf4. d4 c8 g ~ | 2. r4 | 
    bf4 c4 4 8 a ~ | 2 r8 a bf [ b ] |
    c8 cf bf a ~ 4 c8 f, ~ | 2 r8
}

melodySong = \relative c' { 
    \melodyA 
    \melodyEndings
    \melodyBridge
    \melodyA r2 
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

I don't want French fried po -- ta -- toes,
red ripe to -- ma -- toes:
I'm ne -- ver sa -- tis -- fied.
I want the Frim Fram sauce with the os -- sen fay
with cha -- fa -- fa on the side.

I don't want  side.


Now a fel -- "la's" real -- ly got to eat
And a fel -- la should eat right
Five will get you ten
I'm gon -- na feed my -- self right to -- night

I don't want fish cakes and rye bread.
You heard what I said.
Wai -- ter, please serve mine fried.
I want the Frim Fram Sauce with the os -- sen fay
with cha -- fa -- fa on the side.

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }

    pork chops and ba -- con
    that won't a -- wa -- ken
    my ap -- pe -- tite in -- side.
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
  \bookOutputSuffix "in-Bb-for-C"
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
  \bookOutputSuffix "in-Bb-for-Bb"
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
  \bookOutputSuffix "in-Bb-for-Eb"
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
  \bookOutputSuffix "in-A-for-C"
    \header {
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf a <<
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
  \bookOutputSuffix "in-A-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose bf a <<
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
  \bookOutputSuffix "in-A-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose bf a <<
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


