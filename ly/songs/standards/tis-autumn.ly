\version "2.19.83"

titleLeft = "tis"
titleRight = "Autumn"
title = "tis Autumn"
composerName = "Nemo"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm tis-autumn*pdf ; lilypond ly/songs/standards/tis-autumn.ly ; for file in tis-autumn*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/tis-autumn*
lilypond ly/songs/standards/tis-autumn.ly 
mv tis-autumn*pdf pdf/songs/standards
for file in pdf/songs/standards/tis-autumn*pdf ; do op $file ; done 

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
  top-system-spacing.minimum-distance = #22

  % Spacing in between systems
  system-system-spacing.basic-distance = #18
  system-system-spacing.padding = #5

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #26

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
    \key bf \major
    \tempo "Ballad" 4=72
    \partial 4
    s4
    s1*3
    \override Score.RehearsalMark #'extra-offset = #'( -1 . -1 )
    \startSection "A"
    s1*4 
    s1*4 

    \override Score.RehearsalMark #'extra-offset = #'( -1.4 . -2 )
    \startSection "A"
    s1*8 
    \pageBreak

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    \startSection "B"
    s1*8 

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2 )
    \startSection "A"
    s1*5 s2... \toCoda s16
    s1*2
    \bar "|."    
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark #'extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark #'font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key bf \major
    s1*3 
    \bar "|."    
}


chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    af8 d:m7.5-.9 ||
    df1:m9 | c:m9 | b:m9 ||

    c1:m | f:aug7 | bf2 c:m7 | d:m g:7 |
    c2:m f:7 | g:m c:7 | f1:7 | bf2 g:7 ||

    c1:m | f:aug7 | bf2 c:m7 | d:m g:7 |
    c2:m f:7 | g:m c:7 | f1:7 | bf2 bf:7 ||

    f2:m bf:7 | f:m bf:7 | ef f4:m bf:7 | ef1 |
    g2:m c:7 | g:m c:7 | c1:m | s2 f:7 ||

    c1:m | f:aug7 | bf2 c:m7 | d:m g:7 |
    c2:m f:7 | g:m c:7 | f1:7 | bf2. g4:7 ||
}

chordsCoda = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c2:m f:7 | bf af:7 | b:7 bf || 
}

melodyIntroTop = \relative c'' { 
    s4 || 
    r8 bf16 df  ef ff af gf  bf af a af  ef'4 |
    r8 d,,32 g a bf  d16 c b c  d [ c16*1/2 s32 \turn bf16 c ]  g'4 |
    r8 d,32 g a bf  d16 c b b'  fs8 
}
melodyIntroBottom = \relative c'' { 
    af8 e || ef2.. 8 | d1 | cs1*5/8 
}
melodyHead = \relative c'' { 
    g4. ||
    bf16 g bf8 ~ 4 g r8 ef16 d | df8 a'4 g8 ~ 2 |
    r8 a4 f16 d  f8 4. | r8 a4 f16 d b2 |
    r8 g'8 ~ \tuplet 3/2 { g8 d g } d2 | r8 c \tuplet 3/2 { bf8 d c' } a2 |
    g16 bf g8 ~ 8 ef  d16 f d8 ~ 8 c | g bf4. r2 ||

    r8. g'16  \tuplet 3/2 { bf8 g bf } g4. ef8 | \tuplet 3/2 { d4 df a' } g2 |
    r4 a8 f16 d f8 4. | r4 a8 f16 d b2 | 
    r4 r8 g' ef16 g d8 ~ 4 | r8. c16 \tuplet 3/2 { bf8 d c' } a2 | 
    r4 g16 bf g16. ef32 d16 f d8 ~ 8 c | g bf4. r4 \tuplet 3/2 { r8 bf' f } ||

    af4. 16 bf g8 4. | r8. b,16 c cs d bf' g8 4. | 
    r8. fs16 g8 c ~ \tuplet 3/2 { c8 bf g } d8 f | d8 c4.  r4 \tuplet 3/2 { r8 c' g } |
    bf16 g bf8 ~ 8 c a8 4. | r8. cs,16 d ds e c' a8 4 c,16 d |
    f2 r16 g8. ~ 16 bf8 g16 | d8 4 bf16 b c2 ||

    r8. g'16 bf c bf g ~ 4. ef16 d | df8 a'4 g8 ~ 2 | 
    r8 a16 f a8. f16 d2 | r8 f16 a ~ \tuplet 3/2 { a8 f d } b2 | 
    r4 r8 g' ef g16 d ~ 4 | \tuplet 3/2 4 { r4 c8  bf d c' } a2 | 
    r4 g16 bf g16. ef32 d16 f d8 ~ 8 c | g bf4. r2 || 
}

melodySong = {
    <<
        \melodyIntroTop \\
        \melodyIntroBottom
    >>
    \pageBreak
    \melodyHead
}

melodySongForFlats = {
    \transpose c c, <<
        \melodyIntroTop \\
        \melodyIntroBottom
    >>
    \pageBreak
    \melodyHead
}

melodyCoda = \relative c'' { 
    r4 g16 bf g16. ef32 d16 f d8 ~ 8 \fermata c'8 | g bf2.. ~ | 1 || 
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Oh, fa -- ther time checked so there'd be no doubt.
    Called on a North wind to come on out.
    Then cupped his hand so proud -- ly to shout:
    la di da ti la dee dum 'tis au -- tumn.

    The trees say they're tired they've borne too much fruit.
    Charmed all the way -- side there's no dis -- pute.
    Now shed -- ding leaves they don't give a hoot:
    la di da ti la dee dum 'tis au -- tumn.

    Then the birds got to -- ge -- ther to chirp a -- bout the wea -- ther
    hm m mmm m m mm mm mm mmmm
    Af -- ter ma -- king their de -- ci -- sion in bir -- dy like pre -- cis -- ion 
    turned a -- round and made a bee -- line for the South.

    My hol -- ding you close real -- ly is no crime.
    Ask the birds, the trees and old fa -- ther time.
    It's just to help the mer -- cu -- ry climb.
    la di da ti la dee dum 'tis au -- tumn.
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    la di da ti la dee dum 'tis au -- tumn.
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
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }


    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
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
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }


    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
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
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySongForFlats
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }


    \score {
       \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
    }
}
