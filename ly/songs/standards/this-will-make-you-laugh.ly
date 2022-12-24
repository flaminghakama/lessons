\version "2.19.83"

titleLeft = "This Will"
titleRight = "Make You Laugh"
title = "This Will Make You Laugh"
composerName = "I. Higganbotham"
lyricistName = "I. Higganbotham"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm this-will-make-you-laugh*pdf ; lilypond ly/songs/standards/this-will-make-you-laugh.ly ; for file in this-will-make-you-laugh*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/this-will-make-you-laugh*
lilypond ly/songs/standards/this-will-make-you-laugh.ly 
mv this-will-make-you-laugh*pdf pdf/songs/standards
for file in pdf/songs/standards/this-will-make-you-laugh*pdf ; do op $file ; done 

./bin/createIndexes.sh 
git add . ; git commit -m"transcription" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\paper {

    top-margin = #2
    right-margin = #14

    % First page spacing after header
    markup-system-spacing.padding = #0

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #21

    % Spacing in between systems
    system-system-spacing.minimum-distance = #0
    system-system-spacing.padding = #3

    % Distance between the last system of a score and the markup that follows
    score-markup-spacing.basic-distance = #0
    score-markup-spacing.padding = #0

    % Distance between the last system of a score and the first system of the score that follows it
    score-system-spacing.basic-distance = #0
    score-system-spacing.padding = #6
    score-system-spacing.minimum-distance = #13

    page-breaking = #ly:minimal-breaking

    ragged-right = ##f
    ragged-last = ##f
    ragged-bottom = ##t
    ragged-last-bottom = ##f

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
    \key ef \major

    \once \override Score.MetronomeMark #'extra-offset = #'( -8 . 3 )
    \tempo "Ballad" 4=76

    \override Score.RehearsalMark #'extra-offset = #'( 0 . 2 )
    \startSection "A"
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    \startSection "B"
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4
    \bar "|."    
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark #'extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key ef \major
    s1*4 
    \bar "|."    
}


chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    ef1 | c:dim | f:m | bf:7 | 
    ef1 | c:dim | f:m | bf:7 | 
    ef1 | d2:m7.5- g:7 | c1:m | s | 
    f1:7 | s | f:m | bf:aug7 ||

    ef1 | c:dim | f:m | bf:7 | 
    ef1 | c:dim | f:m | bf:7 | 
    ef1 | d2:m7.5- g:7 | c1:m | f:7 | 
    f1:m | bf:7 | ef | s ||
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:m | s | bf:7 | ef ||
}

melodyHead = \relative c' { 
    r4 r8 f16 d f8 8 d4 ~ | 2 r4 \tuplet 3/2 { c8 d ef } | g8 4 8 ~ 2 ~ | 2 r |
    r8 f4 d8 f8 8 d4 ~ | 2 r8 c ~ \tuplet 3/2 { c8 d ef } | c'4 8 8 ~ 2 ~ | 2 r |
    r8 g bf16 af bf8 ~ 4 af8 bf | g4 c,8 g' ~ 2 | r8 c, ef8. f16 ef c ef8 ~ 4 | R1 |
    r8 c \tuplet 3/2 { g'8 8 8 } g4 ~ 8. ef16 | d16 16 8 ~ 2 r8 c | f8. 16 8. 16 ~ 2 | R1 |

    r8 f4 d16 f ~ 8 8 d4 ~ | 2 r4 \tuplet 3/2 { c8 d ef } | g8 8 4 ~ 2 ~ | 2 r |
    r8 f4 d16 f ~ 8 8 d4 ~ | 2 r8 c ~ \tuplet 3/2 { c8 d ef } | c'4 8 8 ~ 2 ~ | 2 r |
    r8 c, bf' [ af ] bf4. 8 | g4 c,8 g' ~ 2 | r8 c, ef8 [ 8 ] g4 bf | d,1 |
    r8 af'4 f8 af16 bf af8 ~ 8 f | c'4 c, \tuplet 3/2 { d4 ef f } | ef1 | R1 ||
}

melodySong = {
    \melodyHead
}

melodySongForFlats = {
    \melodyHead
}

melodyCoda = \relative c'' { 
    r8 af4 f8 af bf af4 ~ | 2. f4 | c' c, d8 ef4 f8 | ef1 ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    This will make you laugh.
    I staked my dreams on you.
    This will make you laugh.
    They ne -- ver did come true.

    I took a chance on the one ro -- mance 
    and vowed it could n't miss.
    But I should have known to ne -- ver judge
    a heart by a kiss.

    This will make you laugh.
    I once be -- lieved in you.
    This will make you laugh.
    You did -- n't see it through.

    Of all the fools, I break the rules
    I love you still you see,
    This will make you laugh
    but it's not fun -- ny to me.
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    This will make you laugh
    but it's not fun -- ny to me.
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
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Beam.damping = #2.75 
                    \override Stem.length-fraction = #(magstep 1.3) 
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }


    % \score {
    %     <<
    %         \new ChordNames \transpose c c  { 
    %             \include "ly/ily/chord-names-properties.ily"
    %             \chordsCoda
    %         }
    %         \new Staff = "voice" \transpose c c { 
    %             \include "ly/ily/staff-properties-songs.ily"
    %             \autoPageBreaksOff
    %             \new Voice = "lead" <<
    %                 \override Stem.length-fraction = #(magstep 1.2)
    %                 \structureCoda
    %                 \melodyCoda
    %             >>
    %         }
    %         \new Lyrics \with { alignAboveContext = "staff" } {
    %             \lyricsto "lead" { \lyricsCoda } 
    %         }
    %     >>
    %     \layout {
    %         indent = 2\cm
    %     }
    % }
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
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Beam.damping = #2.75 
                    \override Stem.length-fraction = #(magstep 1.3) 
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }


    % \score {
    %     <<
    %         \new ChordNames \transpose c c  { 
    %             \include "ly/ily/chord-names-properties.ily"
    %             \chordsCoda
    %         }
    %         \new Staff = "voice" \transpose c c { 
    %             \include "ly/ily/staff-properties-songs.ily"
    %             \autoPageBreaksOff
    %             \new Voice = "lead" <<
    %                 \override Stem.length-fraction = #(magstep 1.2)
    %                 \structureCoda
    %                 \melodyCoda
    %             >>
    %         }
    %         \new Lyrics \with { alignAboveContext = "staff" } {
    %             \lyricsto "lead" { \lyricsCoda } 
    %         }
    %     >>
    %     \layout {
    %         indent = 2\cm
    %     }
    % }
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
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Beam.damping = #2.75 
                    \override Stem.length-fraction = #(magstep 1.3) 
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }


    % \score {
    %     <<
    %         \new ChordNames \transpose c c  { 
    %             \include "ly/ily/chord-names-properties.ily"
    %             \chordsCoda
    %         }
    %         \new Staff = "voice" \transpose c c { 
    %             \include "ly/ily/staff-properties-songs.ily"
    %             \autoPageBreaksOff
    %             \new Voice = "lead" <<
    %                 \override Stem.length-fraction = #(magstep 1.2)
    %                 \structureCoda
    %                 \melodyCoda
    %             >>
    %         }
    %         \new Lyrics \with { alignAboveContext = "staff" } {
    %             \lyricsto "lead" { \lyricsCoda } 
    %         }
    %     >>
    %     \layout {
    %         indent = 2\cm
    %     }
    % }
}
