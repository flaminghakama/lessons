\version "2.19.83"

titleLeft = "Black"
titleRight = "Orpheus"
title = "Black Orpheus (Manhã de Carnaval)"
composerName = "A. C. Jobim"
lyricistName = "A. C. Jobim"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

https://www.youtube.com/watch?v=2jPFQq6l5N0

killPreview
rm pdf/songs/standards/black-orpheus*
lilypond ly/songs/standards/black-orpheus.ly 
mv black-orpheus*pdf pdf/songs/standards
for file in pdf/songs/standards/black-orpheus*pdf ; do op $file ; done 

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
  score-system-spacing.minimum-distance = #22

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

toCoda = <>^\markup { \translate #'( -2 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureHead = \relative c' { 
    \key a \minor
    \tempo "Bossa"
    \partial 4 s4 
    \startSectionNoBarline "A"
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \startSection "B"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*3 \toCoda s1 \break 
    \bar ":|]"    
}
structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark #'extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key a \minor
    s1*6 
    \bar "|."    
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4 ||
    a1:m | b2:m7.5- e:7.9- | a1:m | b2:m7.5- e:7.9- |
    a1:m | d2:m7 g:7 | c1:maj7 | cs2:dim7 a:7.9- |

    d1:m7 | g:7 | c:6 | f:maj7 | 
    b1:m7.5- | e:7.9- | a:m | b2:m7.5- e:7.9- ||

    a1:m | b2:m7.5- e:7.9- | a1:m | b2:m7.5- e:7.9- |
    e1:m7.5- | a:7.9- | d:m | s |

    d2:m d:m7/c | b2:m7.5- e:7.9- | a:m a:m7/g | f1:maj7 | 
    b1:m7.5- | e:7.9- | a:m | b2:m7.5- e:7.9- ||
}
chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m | d2:m7 a:m7 | d:m7 a:m7 | d:m7 e:m7 |
    a1:m | s ||      
}

melodyHead = \relative c' { 
    e4 || c'2. b8 a | 2. gs8 b | e,1 ~ | 2. 4 | 
    c'2. b8 a | 2. g8 b | e,1 ~ | 2 r8 e f [ g ] | 

    a4. d,8 2 ~ | 2 r8 d e [ f ] | g4. c,8 2 ~ | 2 r8 c d [ e ] | 
    f4. b,8 2 ~ | 2 r8 b c [ d ] | e1 ~ | 2. 4 ||

    c'2. b8 a | 2. gs8 b | e,1 ~ | 2. 4 | 
    bf'2. a8 g | 2. f8 e | a1 ~ | 2. d,4 |

    d2. e8 f | b1 | r4 c,4 4 d8 e | a2. gs4 | 
    e1 | r2 e4 gs8 b | a1 ~ | 2. r4 || 

}
melodyCoda = \relative c'' { 
    a2.\repeatTie a8 b | 
    c4 d8 c b4 a8 b | c4 d8 c b4 a8 b | 
    c4 d8 c b4 a8 g | a1 ~ | 2. r4 ||
}

lyricsHeadOneEnglish = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    A day in the life of a fool
    A sad and a long lone -- ly day
    I walk the a -- ven -- ue
    Hop -- ing to run in -- to
    The ve -- ry sight of you com -- ing my way

    I stop just in front of our door
    But you're ne -- ver there a -- ny more
    So back to my room

    And here in the gloom
    I cry tears of good -- bye
}
lyricsCodaEnglish = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    \skip 1
    Til you come back to me
    That's the way it will be
    Ev -- ery day in the life of a fool
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Ma -- nhã, tão bo -- ni -- ta ma -- nhã
    Na vi -- da, uma no -- va can -- ção

    Can -- tan -- do só teus olhos
    Teu ri -- so, tu -- as mãos
    Pois há de ha -- ver um dia
    que vi -- rás

    Das cor -- das do meu vi -- o -- lão
    Que só teu a -- mor pro -- cu -- rou
    Vem _ u -- ma voz
    Fa -- lar dos bei -- jos per -- didos
    Nos lá -- bi -- os teus
}
lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    \skip 1
    Can -- \markup { "ta o" } meu co -- ra -- ção
    A -- le -- gri -- a vol -- tou
    Tão fe -- liz a ma -- nhã
    Des -- \markup { "te a" } -- mor
}


\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "english-for-C"
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
                    \structureHead
                    \melodyHead
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneEnglish } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwoEnglish }
            % }
        >>
    }
    \score {
        <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
                    \transpose c c << 
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCodaEnglish } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
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
                    \structureHead
                    \melodyHead
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwoEnglish }
            % }
        >>
    }
    \score {
        <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
                    \transpose c c << 
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
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
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureHead
                    \melodyHead
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwoEnglish }
            % }
        >>
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
                    \transpose c c << 
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
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
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureHead
                    \melodyHead
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwoEnglish }
            % }
        >>
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda 
            }
            \new Staff = "voice" { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" {
                    \transpose c c << 
                        \structureCoda
                        \melodyCoda
                    >>
                }
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout { 
            indent = 3.15\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}

