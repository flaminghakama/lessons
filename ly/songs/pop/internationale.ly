\version "2.19.83"

titleLeft = "l'Inter"
titleRight = "nationale"
title = "l'Internationale"
composerName = "P. De Geyter, arr. Elaine Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm internationale*pdf ; lilypond ly/songs/pop/internationale.ly ; for file in internationale*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/internationale*
lilypond ly/songs/pop/internationale.ly 
mv internationale*pdf pdf/songs/pop
for file in pdf/songs/pop/internationale*pdf ; do op $file ; done 

git add . ; git commit -m"layout" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

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

\layout { 
    \context {
        \Score
        \override Glissando.style = #'line
    }
}



structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \key c \major
    \tempo 2.=72
    \time 3/4
    \partial 4 
    s4 

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \startSection "Verse I"
    \bar "[|:"
    s2.*8

    \startSection ""
    s2.*8

    \break

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \startSection "Bridge"
    s2.*8

    \startSection ""
    s2.*8

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \startSection "Verse II"
    s2.*8
    \break

    \startSection ""
    s2.*8
    \break

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \startSection "Verse III"
    s2.*8
    \break

    \startSection ""
    s2.*3
    s2 s8.. \toCoda s32
    s2.*4 
    \bar ":|]"
    \pageBreak
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key c \major 
    \once \override Score.RehearsalMark #'extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \time 3/4
    s2.*8 
    \break  
    s2.*8 
    \bar "|."
}

chordsVerseI = \chordmode { 
    c2.:/g | s | f | f/e |
    g2.:7/d | s | c/g | g ||
}
chordsVerseII = \chordmode { 
    c2.:/g | s | f | f/e |
    g2.:7/d | s | c/g | s ||
}
chordsBridge = \chordmode { 
    g2./d | d | g:7/d | s | 
    d2.:1.4.5 | d:7 | g/d | d:7 ||
    g2.:7/d | s | c/g | s | 
    g2. | d:7 | g | g:7 ||
}

chordsChorusI = \chordmode { 
    c2./g | g:7 | a:m | e:7 | 
    f2. | d:7/fs | g | g:7 
}


chordsChorusII = \chordmode { 
    a2.:7 | a:7/cs | d:m | g:7/d | 
    c2.:/g | g:1.4.5 | c | s ||
}


chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4 
    \chordsVerseI
    \chordsVerseII
    \chordsBridge
    \chordsVerseI
    \chordsChorusI
    \chordsVerseII
    \chordsChorusII
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c2./g | s | s | s |
    g2.:1.4.5 | s | s | s |
    c2. | g | c | g | 
    d2.:m | g:7 | c | s |
}


melodySong = \relative c'' { 
    % Verse I
    g4 ||
    c4 ~ 4. b8 | d c4 g e8 | a2. | f4. r4 a8 | 
    d4 ~ 4. c8 | b a4 g f8 | e2. | r4 r g ||

    c4 ~ 4. b8 | d c4 g e8 | a2. | f4. d'4 c8 | 
    b4 ~ 4. d8 | f4 ~ 4. b,8 | c2. | r4 r8 e4 d8 ||

    % Bridge
    b2. | a8 b4 c a8 | b2. | g4. f4 g8 | 
    a2 4 | d2 c4 | b2. | r4 4 d ||

    d4 ~ 4. b8 | g8 4 f g8 | e'2. | r4 r8 a, b [ c ] |
    b4. d | c a | g2. | r4 e'4. d8 ||


    c2. | g4 ~ 4. f8 | a2. | g4 r8 d'4 c8 |
    b2. | a4. af | g2. | r4 r8 g4. ||

    e'2. | d4 ~ 4. a8 | c2. | b4. r4 b8 | 
    a2 g4 | a2 d4 | 2. | r4 e4. d8 ||


    c2. | g4 ~ 4. f8 | a2. | f4 r8 d'4 c8 | 
    b2. | a4 ~ 4. g8 | e'2. ~ | 4. r4 e8 ||

    g2. | f4. e | a, b8. [ c ] | e4. f | 
    e4. a, | d4 ~ 4. c8 | 2. | R2. ||
}

melodyCoda = \relative c'' { 
    e2. ~ | 2. ~ | 2. ~ | 4. a, | 
    d2. ~ | 2. ~ | 2. | r4 g,8 4 8 | 
    c4. c | d d | g4 ~ 4. e8 | c4. a' | 
    g2. ~ | 4 e8 f4 d8 | c4. c,4 8 | 4 r2 ||
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 15 { \skip 1 }


}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 15 { \skip 1 }
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 28 { \skip 1 }
    \repeat unfold 38 { \skip 1 }

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
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
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
                    \pageBreak
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                %\lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c { \chordsCoda }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose c c <<
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
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
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
                    \pageBreak
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                %\lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        \transpose bf, c <<
            \new ChordNames \transpose c c { \chordsCoda }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose c c <<
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }

}


\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        poet = "Concert Lead Sheet"
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
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
                    \pageBreak
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                %\lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        \transpose ef, c <<
            \new ChordNames \transpose c c { \chordsCoda }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" {
                    \transpose c c <<
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }

}

