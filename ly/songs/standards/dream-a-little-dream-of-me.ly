\version "2.24.0"

titleLeft = "Dream A Little"
titleRight = "Dream Of Me"
titleFull = "Dream A Little Dream Of Me"
composerName = "G. Kahn & W. Schwandt"
lyricistName = "G. Kahn & W. Schwandt"
arranger = ""
copyright = ""

%{

killPreview ; rm dream-a-little-dream-of-me*pdf ; lilypond ly/songs/standards/dream-a-little-dream-of-me*.ly ; for file in dream-a-little-dream-of-me*pdf ; do open -a Preview $file ; done

killPreview
rm dream-a-little-dream-of-me*pdf
lilypond ly/songs/standards/dream-a-little-dream-of-me*.ly
mv dream-a-little-dream-of-me*.pdf pdf/songs/standards
for file in pdf/songs/standards/dream-a-little-dream-of-me*pdf ; do open -a Preview $file ; done

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
    \key d \major
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 \bar "||"
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1 | bf2:7 a:7 | d1 | b2:7 fs:m7.5- |
    e2:m e:m7 | g1:m6 | d2 e:9 | a1:7 ||

    d1 | bf2:7 a:7 | d1 | b2:7 fs:m7.5-|
    e2:m e:m7 | g1:m6 | d2 g4:m7 a:7 | d2 f:7 || 

    bf1 | f:7 | bf | f4:7 fs:dim f2:7 | 
    bf1 | f:7 | bf | a:7 ||

    d1 | bf2:7 a:7 | d1 | b2:7 fs4:m7.5- b:7 |
    e1:m | g1:m6 |  d2 g4:m6 a:7 | d2 f:7 || 

}
chordsRealBook = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:6 | bf2:7 a:7 | d1:6 | b2:7 fs4:m7.5- b:7 |
    e2:m e:m7 | e:m7.5- c:9 | d2 b:m7 | e:m7 a:7  ||

    d1:6 | bf2:7 a:7 | d1:6 | b2:7 fs4:m7.5- b:7 |
    e2:m e:m7 | e:m7.5- c:9 | d2 bf4:7 a:7 | d2:6 c4:m7 f:7 || 

    bf2:6 g:m7 | c:m7 f:7 | bf:6 g:m7 | c:m7 f2:7 | 
    bf2:6 g:m7 | c:m7 f:7 | bf2:6 g:m7 | e:m7 a:7 ||

    d1:6 | bf2:7 a:7 | d1:6 | b2:7 fs4:m7.5- b:7 |
    e2:m e:m7 | e:m7.5- c:9 | d2 bf4:7 a:7 | d2:6 bf4:7 a:7 || 

}
chordsFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1 | bf2:7 a:7 | d1 | b2:7 fs:m7 |
    e2:m e:m7 | g1:m6 | d2 e:9 | a1:7 || 

    d1 | bf2:7 a:7 | d1 | b2:7 fs:m7 |
    e2:m e:m7 | g1:m6 | d2 g4:m7 a:7 | d2 f:7 || 

    bf1 | f:7 | bf | f4:7 fs:dim f2:7 | 
    bf1 | f:7 | bf | a:7 ||

    d1 | bf2:7 a:7 | d1 | b2:7 fs4:m7 b:7 |
    e1:m | g1:m6 |  d2 g4:m6 a:7 | d2 f:7 || 
}

melody = \relative c' { 
    d2 cs8 d cs b | d2 cs | d2 cs8 d cs b | \tuplet 3/2 { ds4 fs ds } c4 b | 
    e2 d8 e d b | \tuplet 3/2 { e4 d bf } d2 | a8 b d e fs4 b | a1 || 

    d,2 cs8 d cs b | d2 cs | d2 cs8 d cs b | \tuplet 3/2 { ds4 fs ds } c4 b | 
    e2 d8 e d b | \tuplet 3/2 { e4 d bf } d2 | b8 8 d e f4 e | d2. r4 ||


    bf'2 \tuplet 3/2 2 { g4 bf g | f d f } g,4 a | bf'2 \tuplet 3/2 2 { g4 bf g } | f1 | 
    bf2 \tuplet 3/2 2 { g4 bf g | f d f } g,4 a | bf'2 f4 g | a1 || 


    d,2 cs8 d cs b | d2 cs | d2 cs8 d cs b | \tuplet 3/2 { ds4 fs ds } c4 b | 
    e2 d8 e d b | \tuplet 3/2 { e4 d bf } d2 | a8 b d e f4 e | d2. r4 || 
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Stars shin -- ing bright a -- bove you, 
    Night breez -- es seem to whis -- per "\"I" Love "You,\""
    Birds sing -- ing in the syc -- a -- more tree, 
    "\"Dream" A Lit -- tle Dream Of "Me.\""

    Say "\"night" -- ie "night\"" and kiss me, 
    Just hold me tight and tell me you'll miss me;
    While  I'm a -- lone and blue as can be, 
    "\"Dream" A Lit -- tle Dream Of "Me.\""

    Stars fad -- ing, but I lin -- ger on, dear,  
    Still crav -- ing your kiss; 
    I'm long -- in to lin -- ger 'til dawn, dear, 
    Just say -- ing this: 

    Sweet dreams 'til sun -- beams find you, 
    Sweet dreams that leave all wor -- ries be -- hind you, 
    But in your dreams what ev -- er they be, 
    Dream A Lit -- tle Dream Of Me.

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

% \book {
%   \bookOutputSuffix "in-D-for-C" 
%     \header {
%         subtitle = "(original key)"
%         instrumentName = "Concert Lead Sheet"
%         poet = \instrumentName
%     }
%     \score {
%         <<
%             \new ChordNames \transpose c c  { 
%                                 \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
%                                 \chordsForm 
%                             }
%             \new Staff = "voice" \transpose c c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \strcture
%                     \melody
%                 >>
%             }
%             \new Lyrics \with { alignAboveContext = "staff" } {
%                 \lyricsto "lead" { \lyricsHeadOne } 
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-D-for-Bb"
%     \header {
%         subtitle = "(original key)"
%         arranger = ""
%         instrumentName = "Bb Lead Sheet"
%         poet = \instrumentName
%     }
%     \score {
%         <<
%             \new ChordNames \transpose bf c  { 
%                 \include "ly/ily/chord-names-properties.ily" 
%                 \chordsForm 
%             }
%             \new Staff = "voice" \transpose bf, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \strcture
%                     \melody
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-D-for-Eb"
%     \header {
%         subtitle = "(original key)"
%         arranger = ""
%         instrumentName = "Eb Lead Sheet"
%         poet = \instrumentName
%     }
%     \score {
%         <<
%             \new ChordNames \transpose ef c  { 
%                 \include "ly/ily/chord-names-properties.ily" 
%                 \chordsForm 
%             }
%             \new Staff = "voice" \transpose ef c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \strcture
%                     \melody
%                 >>
%             }
%         >>
%     }
% }


\book {
  \bookOutputSuffix "in-C-for-C" 
    \header {
        subtitle = "(soprano key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose d, c <<
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsRealBook 
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
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        subtitle = "(soprano key)"
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose d c <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsRealBook 
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
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        subtitle = "(soprano key)"
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose d c <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsRealBook 
            }
            \new Staff = "voice" \transpose ef, c { 
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
  \bookOutputSuffix "in-F-for-C" 
    \header {
        subtitle = "(tenor key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose d f <<
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
  \bookOutputSuffix "in-F-for-C" 
    \header {
        subtitle = "(tenor key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose d f <<
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsForm 
                            }
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsRealBook 
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

% \book {
%   \bookOutputSuffix "in-F-for-Bb"
%     \header {
%         subtitle = "(tenor key)"
%         arranger = ""
%         instrumentName = "Bb Lead Sheet"
%         poet = \instrumentName
%     }
%     \score {
%         \transpose d f  <<
%             \new ChordNames \transpose bf c  { 
%                 \include "ly/ily/chord-names-properties.ily" 
%                 \chordsFlats 
%             }
%             \new Staff = "voice" \transpose bf, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \strcture
%                     \melody
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "in-F-for-Eb"
%     \header {
%         subtitle = "(tenor key)"
%         arranger = ""
%         instrumentName = "Eb Lead Sheet"
%         poet = \instrumentName
%     }
%     \score {
%         \transpose d f  <<
%             \new ChordNames \transpose ef c  { 
%                 \include "ly/ily/chord-names-properties.ily" 
%                 \chordsFlats
%             }
%             \new Staff = "voice" \transpose ef, c { 
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 \new Voice = "lead" <<
%                     \strcture
%                     \melody
%                 >>
%             }
%         >>
%     }
% }


\book {
  \bookOutputSuffix "in-A-for-C" 
    \header {
        subtitle = "(real book key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose d a <<
            \new ChordNames \transpose c c  { 
                                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                                \chordsRealBook 
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
  \bookOutputSuffix "in-A-for-Bb"
    \header {
        subtitle = "(real book key)"
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose d a  <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsRealBook
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
  \bookOutputSuffix "in-A-for-Eb"
    \header {
        subtitle = "(real book key)"
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose d a  <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsRealBook
            }
            \new Staff = "voice" \transpose ef, c { 
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
