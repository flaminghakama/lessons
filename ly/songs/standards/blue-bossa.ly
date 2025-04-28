\version "2.24.0"

titleLeft = "Blue"
titleRight = "Bossa"
titleFull = "Blue Bossa"
composerName = "K. Dorham"
lyricistName = "J. Cartwright"
arranger = ""
copyright = ""

%{

killPreview ; rm blue-bossa*pdf ; lilypond ly/songs/standards/blue-bossa.ly ; for file in blue-bossa*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/blue-bossa*
lilypond ly/songs/standards/blue-bossa.ly 
mv blue-bossa*pdf pdf/songs/standards
for file in pdf/songs/standards/blue-bossa*pdf ; do op $file ; done 

git add . ; git commit -m"adding low Bb version" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.padding = #0

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##f
  ragged-right = ##f
  ragged-last-bottom = ##f

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

structureFirst = \relative c' { 
    \key c \minor
    \partial 4 s4
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 2 )
    \startSectionNoBarline "Head"
    \bar "[|:-|"
    s1*4 \break
    s1*4 \break
    s1*4 
}
structureMiddle = \relative c' { 
    \override Staff.TimeSignature.stencil = ##f  
    \key c \minor
    s1*4 \break
    \bar ":|][|:"
}
structureLast = \relative c' { 
    \override Staff.TimeSignature.stencil = ##f  
    \key c \minor
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 2 )
    \startSectionNoBarline "Solos"
    \bar ":|][|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \bar ":|]"
}

chordsFirst = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4
    c1:m6 | s | f:m7 | s | 
    d1:m7.5- | g:aug7.9- | c:m6 | s | 
    ef1:m7 | af:7 | df:maj7 | s | 
}
chordsMiddle = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m7.5- | g:7.9- | c:m6 | g:7 || 
}
chordsLast = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:m6 | s | f:m7 | s | 
    d1:m7.5- | g:aug7.9- | c:m6 | s | 
    ef1:m7 | af:7 | df:maj7 | s | 
    d1:m7.5- | g:7.9- | c:m6 | g:7 || 
}
melodyFirst = \relative c'' { 
    g4 ||
    g'4. f8 ef d r c ~ | 2 r8 bf8 r af ~ | 2 r8 g' r f ~ | 1 | 
    f4. ef8 d c r bf ~ | 2 r8 af8 r g ~ | 2 r8 f' r ef ~ | 1 | 
    ef4. df8 c bf r af ~ | 2 r8 gf8 r gf ~ | 4. f8 bf4. af8 | 2. 4 |
}
melodyMiddle = \relative c'' { 
    \stemUp 
    \tieUp
    af4 g8 bf ~ 4. af8 | 4 g8 bf ~ 4. af8 | g1 ~ | 2. g4 
}
harmony = \relative c' { 
    f4 ef8 f ~ 4. 8 | 4 8 8 ~ 4. ef8 | d1 ~ | 2. s4
}

solos = \relative c''' { 
    g2 ~ 8 ef b c ~ | 2 ~ 8 bf a af ~ | 2 ~ 8 g e f ~ | 1 |
    f'2 ~ 8 d a bf ~ | 2 ~ 8 af fs g ~ | 2 ~ 8 f d ef ~ | 1 |
    ef'2 ~ 8 c g af ~ | 2 ~ 8 gf e f ~ | 2 ~ 8 ef c df ~ | 1 |
    g2. f8 bf ~ | 2 ~ 8 g f g ~ | 1 ~ | 1 ||
}
solosForBbLow = \relative c''' { 
    g2 ~ 8 ef b c ~ | 2 ~ 8 bf a af ~ | 2 ~ 8 g e f ~ | 1 |
    f'2 ~ 8 d a bf ~ | 2 ~ 8 af fs g ~ | 2 ~ 8 f d ef ~ | 1 |
    ef'2 ~ 8 c g af ~ | 2 ~ 8 gf e f ~ | 2 ~ 8 ef' c df ~ | 1 |
    g,2. f8 bf ~ | 2 ~ 8 g f g ~ | 1 ~ | 1 ||
}

lyricsHeadOneFirst = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    A place in -- side my heart is where you live
    Memo -- ries of our start, the love you give
    Days when we're a -- lone and you are in my heart
    The blue -- ness of the true -- ness of our love.

    The
}
lyricsHeadOneMiddle = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    blue -- ness of the true -- ness of our love.
    The
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    The nights of moon -- lit skies, a gen -- tle kiss
    Some -- thing in your eyes fills me with bliss
    Hold me in your arms, and then I will re -- call
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    The thought of how we met still lin -- gers on
    How could I for -- get that ma -- gic dawn?
    All the warm de -- sire, the f -- ire in your touch
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
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFirst
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureFirst 
                    \melodyFirst
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneFirst } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }
    \score {
         <<
            \new ChordNames \transpose c c  { 
                \chordsMiddle 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structureMiddle
                        \melodyMiddle
                    >> \\
                    \new Voice = "harmony" \voiceTwo <<
                        \harmony
                    >>
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneMiddle } 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
   }
    \score {
        <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsLast
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureLast 
                    \solos
                >> 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Lead Sheet"
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFirst
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureFirst 
                    \melodyFirst
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneFirst } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \chordsMiddle 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structureMiddle
                        \melodyMiddle
                    >> \\
                    \new Voice = "harmony" \voiceTwo <<
                        \harmony
                    >>
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneMiddle } 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
   }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsLast
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureLast 
                    \solos
                >> 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}


\book {
  \bookOutputSuffix "for-Bb-low"
    \header {
        subtitle = ""
        poet = "Bb Lead Sheet"
    }
    \score {
        \transpose bf c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFirst
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureFirst 
                    \melodyFirst
                >>
                \noPageBreak
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOneFirst } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadThree } 
            % }
        >>
    }
    \score {
        \transpose bf c <<
            \new ChordNames \transpose c c  { 
                \chordsMiddle 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structureMiddle
                        \melodyMiddle
                    >> \\
                    \new Voice = "harmony" \voiceTwo <<
                        % \harmony
                    >>
                >>
                \noPageBreak
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOneMiddle } 
            % }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
   }
    \score {
        \transpose bf c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsLast
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureLast 
                    \solosForBbLow
                >> 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
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
        \transpose ef c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFirst
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureFirst 
                    \melodyFirst
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneFirst } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \chordsMiddle 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structureMiddle
                        \melodyMiddle
                    >> \\
                    \new Voice = "harmony" \voiceTwo <<
                        \harmony
                    >>
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneMiddle } 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
   }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsLast
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureLast 
                    \solos
                >> 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}



\book {
  \bookOutputSuffix "in-A-minor-for-C"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Concert Pitch"
        instrumentName = \poet
    }
    \score {
        \transpose c a, <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFirst
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureFirst 
                    \melodyFirst
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneFirst } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }
    \score {
        \transpose c a, <<
            \new ChordNames \transpose c c  { 
                \chordsMiddle 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structureMiddle
                        \melodyMiddle
                    >> \\
                    \new Voice = "harmony" \voiceTwo <<
                        \harmony
                    >>
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneMiddle } 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
   }
    \score {
        \transpose c a, <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsLast
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureLast 
                    \solos
                >> 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-A-minor-for-Bb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c a, \transpose bf, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFirst
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureFirst 
                    \melodyFirst
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneFirst } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }
    \score {
        \transpose c a, \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \chordsMiddle 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structureMiddle
                        \melodyMiddle
                    >> \\
                    \new Voice = "harmony" \voiceTwo <<
                        \harmony
                    >>
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneMiddle } 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
    \score {
        \transpose c a, \transpose bf, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsLast
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureLast 
                    \solos
                >> 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}


\book {
  \bookOutputSuffix "in-A-minor-for-Eb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c a, \transpose ef, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsFirst
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureFirst 
                    \melodyFirst
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneFirst } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }
    \score {
        \transpose c a,  \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \chordsMiddle 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \new Voice = "lead" <<
                        \structureMiddle
                        \melodyMiddle
                    >> \\
                    \new Voice = "harmony" \voiceTwo <<
                        \harmony
                    >>
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneMiddle } 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
    \score {
        \transpose c a, \transpose ef, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsLast
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureLast 
                    \solos
                >> 
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}

