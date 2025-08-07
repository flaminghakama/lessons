\version "2.24.0"

titleLeft = "Meet Me At "
titleRight = "No Special Place"
titleFull = "Meet Me At  No Special Place"
composerName = "A. Terker, H. Pye & J. R. Robinson"
lyricistName = "A. Terker, H. Pye & J. R. Robinson"
arranger = ""
copyright = ""

%{

killPreview ; rm meet-me-at-no-special-place*pdf ; lilypond ly/songs/standards/meet-me-at-no-special-place.ly ; for file in meet-me-at-no-special-place*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/meet-me-at-no-special-place*
lilypond ly/songs/standards/meet-me-at-no-special-place.ly 
mv meet-me-at-no-special-place*pdf pdf/songs/standards
for file in pdf/songs/standards/meet-me-at-no-special-place*pdf ; do op $file ; done 

git add . ; git commit -m"lyrics" ; git push 
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

structure = \relative c' { 

    \tempo 4=92
    
    \key c \minor
    \startSection "Intro"
    s1*2

    \startSection "A"
    \repeat volta 2 { 
        \startRepeat
        s1*7
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8

    \startSection "Coda"
    s1*12
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
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

    % A 
    Ba -- by, we two can't get a -- long.
    I'm ne -- ver right, you're ne -- ver wrong.
    So meet me at no spe -- cial place
    And I'll be there at no par -- tic -- u -- lar time.

    % A
    Ba -- by, it just ain't com -- mon sense
    Mix -- in' up love with ar -- gu -- ments.
    So meet me at no spe -- cial place
    And I'll be there at no par -- tic -- u -- lar time.

    % B 
    I'm all fed up on stor -- my wea -- ther.
    I'm go -- ing where it's June.
    Here's hop -- in' I see you ne -- ver
    'cause if I do, that will be too soon.

    % A
    Now that I've put my heart on ice
    Mis -- sing you will seem par -- a -- dise
    So meet me at no spe -- cial place
    And I'll be there at no par -- tic -- u -- lar time

    % A
    instrumental

    % B
    You'd bet -- ter bring a -- long your glas -- ses
    In case I'm hard to find
    You'll wish you could see be -- fore you
    As clear -- ly as you can see be -- hind

    % A
    You can turn back in retropect
    Of the times you stuck out your neck.
    So meet me at no special place,
    And I'll be there at no particular time.

    % Coda 
    All we do is make up
    Then quarrel all over again,
    But this is it ~ the breakup
    From now on, you knew me when...

    So meet me at no special place,
    And I'll be there at no particular time!

}
lyricsHeadOneMiddle = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
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

