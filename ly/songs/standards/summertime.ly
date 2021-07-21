\version "2.19.83"

titleLeft = "Summer"
titleRight = "time"
title = "Summertime"
composerName = "G. Gershwin"
lyricistName = "D. Heyward"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm summertime*.pdf
lilypond ly/songs/standards/summertime.ly 
mv summertime*.pdf pdf/songs/standards
for file in pdf/songs/standards/summertime*.pdf ; do op $file ; done

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

strcture = \relative c' { 
    \key a \minor
    \tempo "Slowly"
    \time 4/4
    \partial 2*1 s2 
    \bar "||" 
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break  
    \bar "||" 
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4   
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s2 ||
    a1:m | s | s | a:7 | 
    d1:m | s | b:m7.5- | e:7 |
    a1:m | s | s | d2:m7 g:7 | 
    c1 | b2:m7.5- e:7 | a1:m | e:7 |

    a1:m | s | s | a:7 | 
    d1:m | s | b:m7.5- | e:7 |
    a1:m | s | s | d2:m7 g:7 | 
    c1 | b2:m7.5- e:7 | a1:m | e:7 |

}

carrChordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s2 ||
    a1:m | s | s | ef:7 | 
    d1:m | c:m | b:m7.5- | e:7 |
    a1:m | s | s | a2:m6 g:7 | 
    c1 | f2:7 e:7 | a1:m | e:7 |

    a1:m | s | s | ef:7 | 
    d1:m | c:m | b:m7.5- | e:7 |
    a1:m | s | s | a2:m6 g:7 | 
    c1 | f2:7 e:7 | a1:m | e:7 |

}

melodyForm = \relative c'' { 
    e4 c || e1 ~ | 8 r d8. c16 d8. e16 c4 | a2 e ~ | 4 r 
    e'4 c | d8 2.. | r4 c8. a16 c8. a16 c4 | b1 ~ | 2 
    r8 e4 c8 | e8 4 8 ~ 2 | r4 d8. c16 d8. e16 c4 | a2 e ~ | 2 
    r4 e4 | g e8 g a4 c | e8 ( d4. ) c2 | a1 ~ | 2 

    \tuplet 3/2 { e'4 4 c } || e4 2. | r8. e16 d8. c16 d8. ( e16 ) c4 | a2 e ~ | 2 
    e'4 c | d8 4 8 ~ 2 | r4 c8. a16 c8. ( a16 ) c4 | b1 ~ | 2 
    r8 e8 8 [ c ] | e8 2.. | r4 d8. c16 d8. e16 c4 | a2 e ~ | 2 
    r4 e4 | g e8 g a4 c | e8 ( d4. ) c2 | a1 ~ | 2 r ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Sum -- mer -- time
    an' the liv -- in' is eas -- y, 
    fish are jump -- in';
    an' the cot -- ton is high.

    Oh, yo' dad -- dy's rich 
    an' yo' ma is good look -- in' 
    so hush, lit -- tle ba -- by, 
    don' yo' cry.

    One of these morn -- in's 
    you goin' to rise  up sing -- in'
    then you'll spread yo' wings
    an' you'll take the sky.

    But 'til that morn -- in'
    there's a noth -- in' can harm you 
    with dad -- dy an' mam -- my 
    stand -- in' by.  
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
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
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
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
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
        <<
            \new ChordNames \transpose ef c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose ef c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}


\book {
  \bookOutputSuffix "in-B-minor-for-C"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose a b  { 
                \include "ly/ily/chord-names-properties.ily"
                \carrChordsForm 
            }
            \new Staff = "voice" \transpose a b { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-B-minor-for-Bb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose a b  { 
                \include "ly/ily/chord-names-properties.ily"
                \carrChordsForm 
            }
            \new Staff = "voice" \transpose a b { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-B-minor-for-Eb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    } 
    \score {
        \transpose ef c <<
            \new ChordNames \transpose a b  { 
                \include "ly/ily/chord-names-properties.ily"
                \carrChordsForm 
            }
            \new Staff = "voice" \transpose a b { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}
