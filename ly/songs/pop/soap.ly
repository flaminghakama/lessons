\version "2.24.0"

titleLeft = "Soap"
titleRight = ""
titleFull = "Soap"
composerName = "G. A. Tipton"
lyricistName = ""
arranger = ""
copyright = ""

%{

killPreview ; rm soap*pdf ; lilypond ly/songs/pop/soap.ly ; for file in soap*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/soap*
lilypond ly/songs/pop/soap.ly 
mv soap*pdf pdf/songs/pop
for file in pdf/songs/pop/soap*pdf ; do op $file ; done 

git add . ; git commit -m"fixing lyric" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"
\include "../../../../engraving/flaming-libs/flaming-roadmap.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

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

    \tempo 4 = 114
    \key bf \major
    \time 4/4


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
    s1*4

    \startSection "Vamp" 
    \startRepeat 
    s1*4

    \startSectionWithLabel "D" "on cue"
    \endRepeat
    s1 

    \bar "|."
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key g \minor 
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \bar "|."
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -1 . 1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    s1*2

    % "A"
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    s1*9 \break

    % "B"
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 1 )
    s1*4 \break

    % "Vamp" "repeat until cue" 
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 1 )
    s1*4

    % "D" "On Cue"
    s1 

}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    bf1:maj7 | s2 f:aug ||

    bf1:6 | s | 
    g1:7 | s | 
    c1:7 | f:7 | 
    bf1:6 | s || s ||

    g1:7 | s | 
    c1:7 | f:7 ||


    bf2:6 g:7 | c:7 f:7 |
    bf2:6 g:7 | c:7 f:7 || 

    bf1 ||
}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

}


chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsSong
}

rhodesHighIntro = \relative c'' { 
    d8 ( cs d4 ~ 4. ) cs8 ( | d4-. ) r r f, |
}
rhodesLowIntro = \relative c'' { 
    bf8 ( a bf4 ~ 4. ) a8 ( | bf4-. ) f2 cs4 |

}

bassIntro = \relative c { 
    bf2 f4. a8 | 
    bf2 f4. a8 | 
}

violinIntro = \relative c'' { 
    d8 ( cs d4 ~ 4. ) cs8 ( | d4-. ) 
}
clarinetIntro = \relative c { 
    bf8 ( a bf4 ~ 4. ) a8 ( | bf4-. ) r f4. a8 |


}

rhodesSecondEnding = \relative c {
    bf8 bf' a, a'  af, af' || 
}

bassA = \relative c { 
    bf2 f4. 8 | bf2 f4. 8 | 
    g2 d4. fs8 | g2 g, | 
    c8 b c4 g'2 | f2 8 g r a |
    bf2 f4. a8 | bf4    
}

bassPickup = \relative c { 
    r4 r r8 a || bf4-. 
}

melodyAPickup = \relative c'' { 
    f4-. g8 bf r g || 
}

melodyA = \relative c''' { 
    bf4-. r  g8 f d bf | r4 f'-. g8 bf r4 | 
    a4-. r  g8 f d b | r2 r4 g'8 bf | 
    r2 r4 g8 f | r2  g8 f df bf | 
}


melodyB = \relative c'' { 
    r4 r8 as  b d4 f8 ~ | 8 e4 d8 ~ 4 r | 
    r4 r8 ds  e a4 g8 ~ | 4   
}

bassB = \relative c {
    g2 d4. fs8 | g2  d8 fs d df | 
    c4. 8 g'4. b8 | c b c4-. r8 af r a ||
}
bassBForClarinet = \relative c {
    g,2 d'4. fs8 | g2  d8 fs d df | 
    c4. 8 g'4. b8 | c b c4-. r8 af r a ||
}



melodyC = \relative c''' { 
        r4  g8 bf r g |
    bf8 g bf4-. g4 r | 
    r2 g8 bf r g |  
    bf8 g bf4-. g4 r | 
    r2 g8 bf r g |  
}

bassC = \relative c { 
    bf2 g8 8 a bf | c8 8 d e  f8 8 r f | 
    bf,2 g8 8 a bf | c8 8 d e  f8 8 r f | 
}
bassCForClarinet = \relative c { 
    bf2 g,8 8 a bf | c8 8 d e  f8 8 r f | 
    bf2 g,8 8 a bf | c8 8 d e  f8 8 r f | 
}

melodyD = \relative c''' { 
    bf4-. r r2  
}

bassD = \relative c { 
    bf4-. r r2  
}

melody = {
    R1 | r4
    \melodyAPickup 
    \melodyA R1 | r4 \melodyAPickup || R1 ||

    \melodyB 
    \melodyC
    \melodyD
}
melodyForViolin = {
    \violinIntro
    \melodyAPickup 
    \melodyA R1 | r4 \melodyAPickup || R1 ||

    \melodyB 
    \melodyC
    \melodyD
}

bassline = {
    \bassIntro
    \bassA \bassPickup \transpose c c \rhodesSecondEnding
    \bassB
    \bassC
    \bassD
}

basslineForClarinet = \transpose c,, c {
    \clarinetIntro
    \bassA \bassPickup \transpose c c, \rhodesSecondEnding
    \bassBForClarinet
    \bassCForClarinet
    \transpose c c \bassD
}

melodyCoda = \relative c'' { 
}

bassCoda = \relative c { 
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2


    \repeat unfold 3 { \skip 1 }
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 3 { \skip 1 }
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
  \bookOutputSuffix "Lead-for-C"
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
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadThree } 
            % }
        >>
    }

}


\book {
  \bookOutputSuffix "Bass-for-C"
    \header {
        subtitle = ""
        poet = "Bass"
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
                \clef bass
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \transpose c, c \bassline
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadThree } 
            % }
        >>
    }

}


\book {
  \bookOutputSuffix "Violin-Clarinet"
    \header {
        subtitle = ""
        poet = "Transposed Score"
        instrumentName = \poet
    }
    \score {
        \transpose bf f <<
            \new Staff \with {
                instrumentName = "Violin "
                shortInstrumentName = "Vln. "
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForViolin
                >>
            }
            \new Staff \with {
                instrumentName = "Clarinet in Bb "
                shortInstrumentName = "Bb. Cl. "
            } \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \basslineForClarinet
                >>
            }
        >>
        \layout {
            indent = 2.6\cm
            short-indent = 1.4\cm
        }
    }
}


