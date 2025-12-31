\version "2.24.0"

titleLeft = "Style"
titleRight = ""
titleFull = "Style"
composerName = "T. Swift,  M. Martin, Shellback, & A. Payami"
lyricistName = "T. Swift,  M. Martin, Shellback, & A. Payami"
arranger = ""
copyright = ""

%{

killPreview ; rm style*pdf ; lilypond ly/songs/pop/style.ly ; for file in style*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/style*
lilypond ly/songs/pop/style.ly 
mv style*pdf pdf/songs/pop
for file in pdf/songs/pop/style*pdf ; do op $file ; done 

git add . ; git commit -m"fixing lyric" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl\

        <li><a href='irealb://Style=Swift%20Taylor==pop=D==1r34LbKcu7QyX%7CQ4%20n%20LLQyX%7CQyX%2DBSv%2A%7BLZ%20n%20ZL%20n%20ZL%20n%20ZZG%5EXy4Ti%2A%5Baht%20t%7DY%7C%2ABy%20%E2%80%9C%3C%5EDC%2A%7BYZL%20nZ%20L%20n%20ZL%20n%20ZL%20n%20ou%20go%20%3Ex3%3CXG%7C%2CAyQ%7CXyQyX%3E%E2%80%9C%3CB%7CY%7D%2CA%3Ex%3C3QyX%7CQyX%5EG%7C%2CAfQ%7CXyQfX%3E%E2%80%A6%20tX%7CQyX%2ES%2E%20amoh%20em%20ekaT%3CQD%7B%2AYZLQ%20%20G%3EadoC%20le%20%3ED%5ED%3C%7CQy%2CA%3Ex2G%5EXyQQyX%5EG%7C%2CAQyX%7CQy%5EXDC%2A%7B%7D%20%3Ex2%3CQyX%7C%7CXyQ%3C%7C%2CAQy%7D%7C%3COn%20D%20%3E%20==0=0'>Style (iReal)</a></li>

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"
\include "../../../../engraving/flaming-libs/flaming-roadmap.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #1

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #20

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

    \tempo 4 = 104
    \key b \minor
    \time 4/4

    \startSection "Intro"
    s1*4

    \startSectionWithLabel "Verse" "3X"
    \bar "S[|:"
    s1*4

    \endRepeat
    s1*4 

    \startSection "Pre-chorus"
    s1*4

    \startSectionWithLabel "C" "3X"
    \startRepeat
    s1*4
    s1*4

    \startSection ""
    \endRepeat
    s1*4
    \bar "||"

    <>_\dsAlCoda
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key g \minor 
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }

    \startSection "D"
    \startRepeat
    s1*4

    \startSection "D"
    \doubleRepeat
    s1*4

    \startSection ""
    \endRepeat
    s1 
    \bar "|."
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Drums"
    s1*4

}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Drums"
    s1*4

}

rehearsalMarkTweaksForEb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "Drums"
    s1*4
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    b1:m | s | g:maj7 | s |

    b1:m | s | g:maj7 | s |
    b1:m | s | g:maj7 | s |
    R1*4

    d1:maj7 | s | g1:maj7 | s | 
    d1:maj7 | s | b1:m | s || 
}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    d1:maj7 | s | g1:maj7 | s ||
    d1:maj7 | s | g1:maj7 | s ||
    d1 
}


chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsSong
}



melodyVerse = \relative c'' { 
    \accidentalStyle default
    
    e8 ( fs16 ) 16  r4 r2 | 
    r4  e16 [ fs r fs ]  r e [ r e ] r d8. | 
    e8 ( fs16 ) 16  r4 r2 | 
    r2 r4 r8 d ||

    a'8 g16 fs ~  8 r  r a  r8. d,16 | 
    a'16 [ g16 r g ]  r fs [ r fs ]  r e [ r e ]  r d8. |   
    e8 fs16 16  r4 r2 | R1 ||

}

melodyPreChorus = \relative c'' { 
    r4  r8 d16 b  d d d b  d8 a16 b | 
    r4  r8 d16 b  d d d b  d8 a16 b | 
    r4  d16 16 8  8 b16 d ~  16 b8 e16 ~ | 
    e4 r r8  
}


melodyChorus = \relative c'' { 
    fs8 e [ d ] ||
    e4 4 4 4 | e8 fs e a ~ 8 a  fs16 e d8 |
    e4 4 4 4 | e8 fs16 e ~  8 a ~ 8 a  fs16 e d8 |
    e4 4 4 e8 fs | e8 fs e a ~ 8 a  fs16 e d8 |
    e8 [ r16 e ]  r8 e ~  8 fs  e16 d b8 | e8 [ r16 e ]  r8 e8 ~  4 
}


melodyBridge = \relative c''' { 
    d8 16 16 ~ ||
    d16 cs b a ~ 4 r2 | r2  r8 a  d8 16 16 ~ |
    d16 cs b a ~ 4 r2 | r4 r8 b ~ 8 a  d8 16 16 ~ |

    d16 cs b a ~ 4  r4  fs8 b ~ | 4  g8 a ~ 4  g8 fs ~ | 
    fs16 e d8 ~ 2. | R1 |    

}

melodyBreakdown = \relative c'' { 
}

melody = {
    R1*4
    \melodyVerse
    \melodyPreChorus
    \melodyChorus
    \melodyBridge
}

melodyCoda = \relative c'' { 
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Mid -- night 
    Come and pick me up, no  
    Head -- lights


    Fade in -- to view, oh
    It's been a while since I have e -- ven heard from you
        
        I should just tell you to leave 'cause I
        Know ex -- act -- ly where it leads, but I
        Watch us go 'round and 'round each time


            You got that 
            James Dean day -- dream look in your eye
            And I got that red lip clas -- sic thing that you like
            And when we go crash -- ing down, we come back ev -- ery time
            we ne -- ver go out of style
            We ne -- ver go out of style

}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % \repeat unfold 3 { \skip 1 }

    Long drive 
    End in bur -- ning flames or 
    para -- dise 

% You got that long hair, slicked back, white t-shirt
% And I got that good girl faith and a tight little skirt
% And when we go crashing down, we come back every time
% 'Cause we never go out of style
% We never go out of style
% So it goes
% He can't keep his wild eyes on the road, mm, mm
% Takes me home
% Lights are off, he's taking off his coat, mm yeah


}

lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }
}


lyricsCoda = \lyricmode {
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
        subtitle = "(original key)"
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
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
                \noPageBreak
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
        >>
    }

}

