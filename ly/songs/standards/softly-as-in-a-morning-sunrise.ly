\version "2.19.83"

titleLeft = "Softly, As In"
titleRight = "A Morning Sunrise"
title = "Softly, As In A Morning Sunrise"
composerName = "S. Romberg"
lyricistName = "O. Hammerstein II"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm softly-as-in-a-morning-sunrise*pdf ; lilypond ly/songs/standards/softly-as-in-a-morning-sunrise.ly ; for file in softly-as-in-a-morning-sunrise*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/softly-as-in-a-morning-sunrise*
lilypond ly/songs/standards/softly-as-in-a-morning-sunrise.ly 
mv softly-as-in-a-morning-sunrise*pdf pdf/songs/standards
for file in pdf/songs/standards/softly-as-in-a-morning-sunrise*pdf ; do op $file ; done 

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
    \key c \minor
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
    s1*4 \break 
    s1*4
    \bar "|."    
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    c1:m7 | d2:m7.5- g:7 | c1:m7 | f:m7 | 
    c1:m7 | d2:m7.5- g:7 | c1:m7 | d2:m7.5- g:7 || f2:m7 bf:7 ||

    ef1:maj7 | s | c:7.9- | s |
    f1:m7 | fs:dim7 | g:1.4.5.7 | g:7 ||

    c1:m7 | d2:m7.5- g:7 | c1:m7 | f:m7 | 
    c1:m7 | d2:m7.5- g:7 | c1:m7 | d2:m7.5- g:7 ||
}

melodyA = \relative c'' { 
    c2 g | r8 f g [ f ] g4 f | c'2 ef, | r8 d ef [ d ] ef4 d | 
    g2 c, | r8 g' af [ g ] ef4 d | c1 |
}
melodyEndings = \relative c' {
     R1 || 
}
melodyBridge = \relative c' {
     \tuplet 3/2 2 { r4 d ef f g af } ||
     bf2 ef, | r4 c'8 bf c4 bf | 
     bf2 e, | \tuplet 3/2 2 { r4 e f  g af bf } |
     c2 f, | r8 c' d [ c ] d4 c | 
     d1 | ef4 d c b ||
}

melodySong = \relative c' { 
    \melodyA 
    \melodyEndings
    \melodyBridge
    \melodyA 
    R1
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Soft -- ly as in a mor -- ning sun -- rise
    the light of love comes steal -- ing
    in -- to a new -- born day.


    For the pas -- sions that thrill love,
    lift you high to hea -- ven,
    are the pas -- sions that kill love
    and lead ya down to hell.
    Same old sto -- ry:

    soft -- ly as in an eve -- nin' sun -- set,
    the light that gave you glo -- ry
    will take it all a -- way.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Flam -- ing with all the glow of sun -- rise
    a bur -- ning kiss is seal -- ing
    the vow that all be -- tray.
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

