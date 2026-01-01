\version "2.24.0"

titleLeft = "Stormy"
titleRight = "Weather"
titleFull = "Stormy Weather"
composerName = "H. Arlen"
lyricistName = "T. Koehler"
arranger = ""
copyright = ""

%{

killPreview ; rm stormy-weather*pdf ; lilypond ly/songs/standards/stormy-weather*.ly ; for file in stormy-weather*pdf ; do open -a Preview $file ; done

killPreview
rm stormy-weather*pdf
lilypond ly/songs/standards/stormy-weather*.ly
mv stormy-weather*.pdf pdf/songs/standards
for file in pdf/songs/standards/stormy-weather*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"tranposed" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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
    \key g \major

    \partial 4 
    s4  

    \startSection "A"
    s1*4 
    s1*4 \break

    \startSection ""
    s1*4 
    s1*6 \break

    \startSection "B"
    s1*4 
    s1*4 \break

    \startSection "C"
    s1*4 
    s1*6
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d4:7 ||

    g2:maj7 gs:dim7 | a:m7 d:7 | g:maj7 gs:dim7 | a:m7 d:7 | 
    g2:6 gs:dim7 | a:m7 d:aug7 | g:6 e:7.9+ | a:m7 d:7 || 

    g2:maj7 gs:dim7 | a:m7 d:7 | g:maj7 gs:dim7 | a:m7 d:7 | 
    g2:6 gs:dim7 | a:m7 d:aug7 | g:6 c:9 | b:m7 gs:dim7 |
    a2:m7 d:aug7 | g:6 g:7 ||

    c2:6 cs:dim7 | g:6/d g:7 | c:6 cs:dim7 | g:6/d g:7 |
    c2:6 cs:dim7 | g:6/d e:7 | g4:6/d ds:dim7 e2:m7 | a:7 d:7 ||

    g2:maj7 gs:dim7 | a:m7 d:7 | g:maj7 gs:dim7 | a:m7 d:7 | 
    g2:6 gs:dim7 | a:m7 d:aug7 | g:6 e:7.9+ | a:m7 d:aug7 | 
    g:6 e:7.9+ | a:m7 d:7 ||
}
chordsFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d4:7 ||

    g2:maj7 af:dim7 | a:m7 d:7 | g:maj7 af:dim7 | a:m7 d:7 | 
    g2:6 af:dim7 | a:m7 d:aug7 | g:6 e:7.9+ | a:m7 d:7 || 

    g2:maj7 af:dim7 | a:m7 d:7 | g:maj7 af:dim7 | a:m7 d:7 | 
    g2:6 af:dim7 | a:m7 d:aug7 | g:6 c:9 | b:m7 af:dim7 |
    a2:m7 d:aug7 | g:6 g:7 ||

    c2:6 df:dim7 | g:6/d g:7 | c:6 df:dim7 | g:6/d g:7 |
    c2:6 df:dim7 | g:6/d e:7 | g4:6/d ds:dim7 e2:m7 | a:7 d:7 ||

    g2:maj7 af:dim7 | a:m7 d:7 | g:maj7 af:dim7 | a:m7 d:7 | 
    g2:6 af:dim7 | a:m7 d:aug7 | g:6 e:7.9+ | a:m7 d:aug7 | 
    g:6 e:7.9+ | a:m7 d:7 ||
}

melody = \relative c'' { 
    as8 b || 
    d2 ~ 4 ~ \tuplet 3/2 { d8 as b } | d8 b d df  c4 as8 b | 
    d8 d,4. ~ 2 | a'8 8 8 8 4 ~ \tuplet 3/2 { a8 g e } | 
    g8 d4. ~ 2 | c8 e g as ~  4. 8 | 
    b8 ( g4. ~ 2 ) | r2 r4 as8 b || 

    d2 ~ 4 ~ \tuplet 3/2 { d8 as b } | d8 b d df  c4 as8 b | 
    d8 d,4. ~ 2 | a'8 8 8 8 4 ~ \tuplet 3/2 { a8 g e } | 
    g8 d4. ~ 2 | c8 e g as ~  4. 8 | 
    b8 ( g4. ~ 4 ) 4 | e8 ( d4. ~ 2 ) | 
    c8 e g as ~  4. 8 | b ( g4. ~ 2 ) || 

    e8 fs \tuplet 3/2 { g8 a g ~ } g8 8 8 8 | 4. 8 b8 g4. | 
    e8 fs \tuplet 3/2 { g8 a g ~ } g8 8 8 8 | 4. 8 e8 d4. | 
    e8 fs \tuplet 3/2 { g8 a g ~ } g8 8 8 8 | 4. 8 c8 b4. |
    d4 b8 a  g4 e | a2. as8 b ||

    d2 ~ 4 ~ \tuplet 3/2 { d8 as b } | d8 b d df  c4 as8 b | 
    d8 d,4. ~ 2 | a'8 8 8 8 4 ~ \tuplet 3/2 { a8 g e } | 
    g8 d4. ~ 2 | c8 e g as ~  4. 8 | 
    b8 ( g4. ~ 2 ) |  c8 e g as ~  4. 8 | 
    b ( g4. ~ 2 ~ | 4 ) r r2 || 
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Don't know why 
    there's no sun up in the sky, 
    Storm -- y weath -- er,  

    Since my man and I  
    ain't to -- geth -- er, 
    keeps rain -- in' all the time. 

    Life is bare, 
    gloom and mis -- 'ry ev -- 'ry where,  
    Storm -- y weath -- er,  

    Just can't get my poor 
    self to -- geth -- er,   
    I'm wear -- y all the time, the time, 
    So wear -- y all the time. 


        When he went a -- way the blues walked in and met me, 
        If he stays a -- way old rock -- in' chair will get me,  
        All I do is pray the Lord a -- bove will let me  
        walk in the sun once more.  

    Can't go on  
    ev -- 'ry thing I had is gone, 
    Storm -- y weath -- er, 
    Since my man and I ain't to -- geth -- er, 
    keeps rain -- in' all the time, 
    keeps rain -- in' all the time.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-G-for-C" 
    \header {
        subtitle = "(original key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsForm 
                            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        subtitle = "(original key)"
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFlats
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-G-for-Eb"
    \header {
        subtitle = "(original key)"
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFlats
            }
            \new Staff = "voice" \transpose ef c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}



\book {
  \bookOutputSuffix "in-Bb-for-C" 
    \header {
        subtitle = "(hipsteria key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose g bf <<
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsForm 
                            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Bb"
    \header {
        subtitle = "(hipsteria key)"
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose g bf <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm
            }
            \new Staff = "voice" \transpose bf c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Eb"
    \header {
        subtitle = "(hipsteria key)"
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose g bf <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm
            }
            \new Staff = "voice" \transpose ef c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \strcture
                    \melody
                >>
            }
        >>
    }
}
