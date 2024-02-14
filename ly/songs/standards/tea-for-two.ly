\version "2.19.83"


titleLeft = "Tea For"
titleRight = "Two"
title = "Tea For Two"
composerName = "V. Youmans"
lyricistName = "I. Caesar"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview ; rm tea-for-two*pdf ; lilypond ly/songs/standards/tea-for-two.ly ; for file in tea-for-two*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/tea-for-two*
lilypond ly/songs/standards/tea-for-two.ly 
mv tea-for-two*pdf pdf/songs/standards
for file in pdf/songs/standards/tea-for-two*pdf ; do op $file ; done 

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
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4 \bar "||" \break
    s1*4 
    s1*4 
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 df:7 | c:m7 b:dim7 |
    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 bf:m7 | c:m7 df:maj7 |

    d2:m7 g:7 | d2:m7 g:7 | c:maj7 f:7 | e:m7 a:7 |
    d2:m7 g:7 | d2:m7 g:7 | c1:maj7 | bf:m7 ef:7 |

    bf2:m7 ef:7 | bf2:m7 ef:7 | af:maj7 df:7 | c:m7 b:dim7 |
    bf2:m7 ef:7 | bf2:m7 ef:7 | c1:m7.5- | f:7.9- |

    bf2:m7 f:7 | gf:7 f:7 | a:dim7 bf:m7 | df:maj7 gf:7 |
    af2:/c b:dim7 | bf:m7 ef:7 | af1:maj7 | s | 
}

melody = \relative c'' { 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4 r | 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | c'1 ~ | 2 r ||

    c4 8 a  b4 8 a | c4 8 a  b4 8 g | b4 8 g  a4 8 g | b4 8 g  a4 8 g | 
    c4 8 a  b4 8 a | c4 8 a  b4 g | e'1 ( | ef2. ) r4  ||

    af,4. f8 g4. f8 | af4. f8 g4. ef8 | g4. ef8 f4. ef8 | g4. ef8 f4. ef8 | 
    af4. f8 g4. f8 | af4. f8 g4. ef8 | ef'1 ~ | 2 r ||

    f4. 8 ef4. 8 | df4. 8 c4. 8 | ef4. 8 df4. 8 | c4. 8 b2 | 
    af4. f8 g4. f8 | af4. f8 g4 c | af1 ~ | 2 r ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Pic -- ture you u -- pon my knee
    Just tea for two and two for tea
    Me for you and you for me a -- lone

    No -- bo -- dy near us
    To see us or hear us
    No friends or re -- la -- tions
    On week -- end va -- ca -- tions
    We won't have it known, dear
    That we own a tel -- e -- phone 

    Day will break and you'll a -- wake
    And start to bake a su -- gar cake
    For me to take
    To all the boys to see

    Oh, we'll raise a fam -- i -- ly
    A boy for you, a girl for me
    Can't you see
    How hap -- py we would be?

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
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


