\version "2.19.81"

titleLeft = "Jardiance"
titleRight = ""
title = "Jardiance"
composerName = "Boehringer Ingelheim Pharmaceuticals, Inc."

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"

%{

killPreview ; rm jardiance*pdf ; lilypond ly/songs/pop/jardiance.ly ; for file in jardiance*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/jardiance*
lilypond ly/songs/pop/jardiance.ly 
mv jardiance*pdf pdf/songs/pop
for file in pdf/songs/pop/jardiance*pdf ; do op $file ; done 

%}

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

\include "ly/ily/layout.ily"

structure = \relative c' { 
    \key e \major
    
    \mark \markup \box "Verse"
    \time 4/4
    \partial 4 
    s4 
    \bar "||"
    s1*7
    \bar "||"
    \time 3/4 
    s2. \break

    \bar "||"
    \mark \markup \box "Chorus"
    \time 4/4 
    s1*4 \break

    \bar "[|:"
    \mark \markup \box "Bridge"
    s1*4 \break

    \bar ":|]"
    \mark \markup \box "Coda"
    s1 
    \bar "||"
    \time 2/4
    s2
    \bar "||"
    \time 4/4
    s1*3
    \bar "|."
}

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    % "Verse"
    s4
    e1 | a | b:7 | cs:m7 | 
    fs2:m7 e:maj7 | a1:maj7.11+ | s |     
    b2.:7 ||

    % "Chorus"
    \time 4/4 
    e1 | cs:m7 | fs:m7 | b:13 ||

    % "Bridge"
    e1 | cs:m7 | fs:m7 | b:13 ||

    % "Coda"
    e1 | cs2:m7 | fs1:m7 | b:13 | e  ||
}

melodyVerseOne = \relative c'' { 
    b8 a ||
    gs8 8 8 a  b8 8 8 8 | a8 8 b cs ~  4 cs8 c | 
    b8 8 4  8 fs'8 4 | e8 8 8 gs ~ 4 r8 fs |

    e4 4 4 4 | 4 ds8 cs ~ 4 r |
    r4 e8 cs ~ 8 e4 fs8 ~ | 2. ||   
}
melodyChorus = \relative c'' { 
    r8 b b [ b ]  4 e,8 8 | 8 ds e gs ( ~ 4 fs ) | 
    r8 a a [ a ]  4 gs8 ( e ) | fs8 4 gs8 ( ~ 4 fs ) | 
}
melodyBridge = \relative c'' {
    \comp #16
}
melodyCoda = \relative c'' { 
    r4 b8 8  4 e, | ds8 e4 gs8 | 
    r8 a a [ a ]  4 gs8 e | fs4 gs fs4 8 e ~ | 4 r r2 || 
}

melodyHead = \relative c' { 
    \melodyVerseOne
    \melodyChorus
    \melodyBridge
    \melodyCoda
}
melodyHeadForEb = \relative c' { 
    \melodyHead
}


lyricsHead = \lyricmode {

    % \repeat unfold 43 { \skip 1 }

    I have type "2" Di -- a -- bet -- es 
    but I man -- age it well.

    It's a lit -- tle pill 
    with a big sto -- ry to tell. 

    I take one dai -- ly Jar -- di -- ance
    at each day start.


    As time went on 
    it was ea -- sy to see:

    I'm low -- er -- ing my A "1" c.


    Jar -- di -- ance is real -- ly swell.
    The lit -- tle pill 
    with a big sto -- ry to tell! 
}

\book {
    \bookOutputSuffix "for-C"

    \header {
        title = \title
        composer = \composerName
        poet = "Concert Pitch"
    }

    \score {
        <<
            \new ChordNames \transpose c c { \chordsHead }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose c c <<
                        \structure
                        \melodyHead
                    >>
                    \noPageBreak
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHead } 
            }
        >>
    }

}

