\version "2.19.81"

titleLeft = "Bésame"
titleRight = "Mucho"
title = "Bésame Mucho"
composerName = "C. Velázquez"
lyricistName = "C. Velázquez & S. Skylar"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm besame-mucho*pdf
lilypond ly/songs/standards/besame-mucho*.ly
mv besame-mucho*.pdf pdf/songs/standards
for file in pdf/songs/standards/besame-mucho*pdf ; do open -a Preview $file ; done

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
    \key c \minor
    \repeat volta 2 { 
        \bar "[|:"
        \startSectionNoBarline "A"
        s1*6 
        s1*2 
        \startSection "B"
        s1*4 
        s1*4 \break
    }
    \bar ":|]"
    \startSectionNoBarline "C"
    s1*2  
    s1*6 \break
    \startSection "A"
    s1*6 
    s1*2
    \startSection "B"
    s1*4 
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:m | s | f:m | s |
    f1:m | s2 g:7 | c1:m | s ||

    c1:7 | s | f:m | s | 
    c1:m | d2:7 g:7 | c1:m | s ||

    f1:m | c:m | g:7 | c:m |
    f1:m | c:m | d2:7 af:7 | g1:7 || 

    c1:m | s | f:m | s |
    f1:m | s2 g:7 | c1:m | s ||

    c1:7 | s | f:m | s | 
    c1:m | d2:7 g:7 | c1:m | s ||

}

melody = \relative c' { 
    c4. 8 2 ~ | 2 \tuplet 3/2 { c4 d ef } | g2 f ~ | 2. r4 | 
    \tuplet 3/2 2 { f4 f f g g g | a a a b c d } | g,1 ~ | 2. r4 |

    c4. 8 2 ~ | 2 \tuplet 3/2 { 4 bf af } | g2 f ~ | 2. r4 | 
    \tuplet 3/2 2 { c'4 g ef  g ef c | ef d c  d c b } | c1 ~ | 2 r ||

    f4 8 8 \tuplet 3/2 { f4 ef d } | ef4 8 8 \tuplet 3/2 { ef4 d c } | 
    d4. 8 8 8 ef f | g1 | 

    f4 8 8 \tuplet 3/2 { f4 ef d } | ef4 8 8 \tuplet 3/2 { ef4 d c } | 
    d4 8 8 \tuplet 3/2 { ef4 f ef } | d1 ||

    c4. 8 2 ~ | 2 \tuplet 3/2 { c4 d ef } | g2 f ~ | 2. r4 | 
    \tuplet 3/2 2 { f4 f f g g g | a a a b c d } | g,1 ~ | 2. r4 |

    c4. 8 2 ~ | 2 \tuplet 3/2 { 4 bf af } | g2 f ~ | 2. r4 | 
    \tuplet 3/2 2 { c'4 g ef  g ef c | ef d c  d c b } | c1 ~ | 2 r ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Bé -- sa -- me, bé -- sa -- me mu -- cho
    Co -- mo si fue -- \markup { "ra es" } -- ta no -- che
    la úl -- ti -- ma vez

    Bé -- sa -- me, bé -- sa -- me mu -- cho
    Que ten -- go mie -- do per -- der -- te
    per -- der -- te des -- pués

    Quie -- ro te -- ner -- te muy cer -- ca
    mi -- rar -- \markup { "me en" } tus ojos
    ver -- te jun -- to a mi
    
    Pien -- sa que tal vez ma -- ña -- na
    yo es -- ta -- ré le -- jos
    muy le -- jos de aquí

    Bé -- sa -- me, bé -- sa -- me mu -- cho
    Co -- mo si fue -- \markup { "ra es" } -- ta no -- che
    la úl -- ti -- ma vez

    Bé -- sa -- me, bé -- sa -- me mu -- cho
    que ten -- go mie -- do per -- der -- te
    per -- der -- te des -- pués
    
    Bé -- sa -- me, (Bé -- sa -- me) bé -- sa -- me mu -- cho (Bé -- sa -- me mu -- cho)
    Que ten -- go mie -- do per -- der -- te
    Per -- der -- te des -- pués
    Que tengo mie -- do a per -- der -- te
    Per -- der -- te des -- pués
    Per -- der -- te des -- pués

}
lyricsHeadTwo = \lyricmode {
}


lyricsEnglishOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Bé -- sa -- me, bé -- sa -- me mu -- cho
    Each time I cling to your kiss, I hear mu -- sic di -- vine

    Bé -- sa -- me, bé -- sa -- me mu -- cho
    Hold me my dar -- ling and say that you'll al -- ways be mine

    This joy is some -- thing new, my arms en -- fol -- ding you
    Ne -- ver knew this thrill be -- fore
    Who ev -- er thought I'd be hol -- ding you close to me
    Whis -- pering; it's you I a -- dore

    Dear -- est one, if you should leave me,
    Each lit -- tle dream would take wing, and my life would be through

    Bé -- sa -- me, bé -- sa -- me mu -- cho
    Love me for -- ev -- er and make all my dre -- ams come true

    % Bé -- sa -- me
    % Bé -- sa -- me mu -- cho

    %Love me forever and make all my dreams come true
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
        poet = "Concert Pitch"
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
  \bookOutputSuffix "english-for-C"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
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
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "english-in-A-minor-for-C"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Concert Pitch"
    }
    \score {
        \transpose c a <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "english-in-A-minor-for-Bb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
    }
    \score {
        \transpose bf, c \transpose c a <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}


\book {
  \bookOutputSuffix "english-in-A-minor-for-Eb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Eb Lead Sheet"
    }
    \score {
        \transpose ef c \transpose c a <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsEnglishOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}
