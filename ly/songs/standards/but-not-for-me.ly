\version "2.19.83"

titleLeft = "But Not"
titleRight = "For Me"
title = "But Not For Me"
composerName = "G. Gershwin"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm but-not-for-me*.pdf
lilypond ly/songs/standards/but-not-for-me.ly 
mv but-not-for-me*.pdf pdf/songs/standards
for file in pdf/songs/standards/but-not-for-me*.pdf ; do op $file ; done

git add . ; git commit -m"fixing chord" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl


%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #16

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

    \key a \major

    \override Score.RehearsalMark.self-alignment-X = #LEFT    
    %\override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )

    \startSectionNoBarline "Verse"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*3 \pageBreak

    s1
    \once \override Score.RehearsalMark #'extra-offset = #'( -7 . -2 )
    \startSectionNoBarline "Chorus"
    \repeat volta 2 { 
    \bar "[|:"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break

        \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -2 )
        \startSection "B"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 
    }
    \bar ":|]"
    \pageBreak

    \once \override Score.RehearsalMark #'extra-offset = #'( -2 . 0 )
    \startSectionNoBarline "Solo Changes"
    \repeat volta 2 { 
    \bar "[|:"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break

        \startSection ""
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 
    }
    \bar ":|]"
}

structureCondensed = \relative c' { 

    \key a \major
    s1

    \override Score.RehearsalMark.self-alignment-X = #LEFT    
    \once \override Score.RehearsalMark #'extra-offset = #'( -4 . -2 )
    \startSectionNoBarline "A"
    \repeat volta 2 { 
    \bar "[|:"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break

        \once \override Score.RehearsalMark #'extra-offset = #'( -3 . -2 )
        \startSection "B"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break
    }
}

chordsVerse = \chordmode { 
    a2 e:aug | cs:m7 fs:aug7 | b:m cs:m | d b4:m7 e:7 | 
    a2 fs:m7 | b:m7 e:7 | a fs:m7 | ef:m7 af:7 | 
    df2 af:aug | f:m7.5- bf:7 | ef:m7 f:m7 | gf:maj7 ef4:m7 af:7 | 
    df2 bf:m7 | ef:m7 af:7 | df1:maj7 | fs:aug7 |
    b1:m7 | e:7 | cs:m7 | fs:m7 | 
    b1:m7 | e:7 | fs2:m7 b:7 | e1:7 |
}

chordsCommon = \chordmode { 
    b1:7 | b2:m7 e:7 | a1 | fs:m7 | 
    b1:7 | b2:m7 e:7 | e1:m7 | a:7 | 
}

chordsFirstEnding = \chordmode { 
    d1:maj7 | g:7 | cs:m7 | fs:m7 |
    b1:7 | s | b2:m7 f:7 | e1:7 | 
}

chordsSecondEnding = \chordmode { 
    d1:maj7 | g:7 | cs2:m7 fs:m7 | b1:7 |
    b1:m7 | e:13 | a1 | s | 
}

chordsSolosCommon = \chordmode { 
    b2:7 bs:7 | es:maj7 gs:7 | cs:maj7 e:7 | a:maj7 fs:m7 |
    b2:7 bs:7 | es:maj7 gs:7 | cs:maj7 e:7 | a:maj7 e4:m7 a:7 |  
}
chordsSolosFirstEnding = \chordmode { 
    d1:maj7 | d2:m7 g:7 | cs1:m7 | fs:m7 | 
    b1:7 | s | b:m7 | e:7 |  
}
chordsSolosSecondEnding = \chordmode { 
    d1:maj7 | d2:m7 g:7 | cs1:m7 | fs:m7 | 
    b1:m7 | e:7 | a2:maj7 bs:7 | es:maj7 e:7 |  
}


chordsSolosCommonForFlats = \chordmode { 
    b2:7 c:7 | f:maj7 gs:7 | cs:maj7 e:7 | a:maj7 fs:m7 |
    b2:7 c:7 | f:maj7 gs:7 | cs:maj7 e:7 | a:maj7 e4:m7 a:7 |  
}
chordsSolosFirstEndingForFlats = \chordmode { 
    d1:maj7 | d2:m7 g:7 | cs1:m7 | fs:m7 | 
    b1:7 | s | b:m7 | e:7 |  
}
chordsSolosSecondEndingForFlats = \chordmode { 
    d1:maj7 | d2:m7 g:7 | cs1:m7 | fs:m7 | 
    b1:m7 | e:7 | a2:maj7 c:7 | f:maj7 e:7 |  
}




chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsVerse

    \chordsCommon
    \chordsFirstEnding
    \chordsCommon
    \chordsSecondEnding

    \chordsSolosCommon
    \chordsSolosFirstEnding
    \chordsSolosCommon
    \chordsSolosSecondEnding
}

chordsCondensed = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s1
    \chordsSolosCommon
    \chordsSolosFirstEnding
    \chordsSolosCommon
    \chordsSolosSecondEnding
}

chordsCondensedForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s1
    \chordsSolosCommonForFlats
    \chordsSolosFirstEndingForFlats
    \chordsSolosCommonForFlats
    \chordsSolosSecondEndingForFlats
}

melodyIntro= \relative c' { 
    r8 e r e8 8 4. | 8 d4 8 ~ 2 | 
    r8 cs r cs8 4 4 | 4 b8 8 ~ 4 cs | 
    a4. e'8 ~ 2 | r8 gs,4 a8 b4 cs8 a ~ | 
    a4. fs'8 ~ 2 | R1 | 

    r8 gs4 16 16 4 4 | 4 fs8 8 ~ 2 | 
    r8 f4 8 4 4 | 4 ef8 8 ~ 4 f | 
    df8 af'4. ~ 2 | r8 c,4 df8 ef f4 df8 ~ | 
    df8 2.. | r4 cs bs8 cs4 ds8 ~ | 

    ds8 cs e4 ~ 8 d cs b | e4 d r8 cs4 b8 | 
    e8 4. ~ 4 fs | a2 gs4 e | 
    r8 cs8 4 ~ 8 b e4 | r8 d cs4 ~ 4. b8 | 
    cs8 a2.. | 
}

melodyAOne = \relative c' { 
    r4 b4 cs b ||
    cs2. b4 | a4. b8 cs4 b8 cs ~ | 1 | r4 b cs b |      
    cs2. b4 | a4. b8 cs4 b8 cs ~ | 1 | r4 cs d e |      

}
melodyFirstEnding = \relative c' {
    f2 fs4 a ~ | 4 r8 b, cs4 d | ds2 e4 a ~ | 4 r8 a, b cs4. | 
    cs8 d4 a'8 ~ 2 ~ | 4 4 fs d8 b ~ | 1 |  
}
melodyFirstEndingForFlats = \relative c' {
    es2 fs4 a ~ | 4 r8 b, cs4 d | ds2 e4 a ~ | 4 r8 a, b cs4. | 
    cs8 d4 a'8 ~ 2 ~ | 4 4 fs d8 b ~ | 1 |  
}

melodyATwo = \relative c' { 
    r4 b4 cs b ||
    cs2. b4 | a4. b8 cs4 b8 cs ~ | 1 | r4 cs4 4 b8 cs ~ |      
    cs2. b4 | a8 b4. cs4 b8 cs ~ | 1 | r4 cs d e |      

}

melodySecondEnding = \relative c' {
    f2 fs4 a ~ | 4 b, cs d | ds2 e4 b' ~ | 8 a4. fs4 d | 
    cs1 | e | a ~ | 4 r r2 ||
}
melodySecondEndingForFlats = \relative c' {
    es2 fs4 a ~ | 4 b, cs d | ds2 e4 b' ~ | 8 a4. fs4 d | 
    cs1 | e | a ~ | 4 r r2 ||
}

melodyForm = \relative c'' { 
    \accidentalStyle default
    \melodyIntro
    \melodyAOne
    \melodyFirstEnding
    \melodyATwo
    \melodySecondEnding

    <>\xp \comp #16
    <>\xp \comp #16
    <>\xp \comp #16
    <>\xp \comp #16
    <>\xp \comp #16
    <>\xp \comp #16
    <>\xp \comp #16
    <>\xp \comp #16
}

melodyCondensed= \relative c'' { 
    \accidentalStyle default

    \melodyAOne
    \melodyFirstEndingForFlats
    \melodyAOne
    \melodySecondEndingForFlats
}

lyricsVerse = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Old man suns -- hine, lis -- ten you
    Don't you tell me dreams come true
    Just try it, and I'll start a ri -- ot

    Be -- at -- rice Fair -- fax, don't you dare
    Ev -- er tell me, he will care
    I'm cer -- tain, it's the fi -- nal cur -- tain

    I ne -- ver wan -- na hear
    From a -- ny cheer -- ful Pol -- ly -- an -- nas
    Who tell you Fate sup -- plies a mate
    It's all ba -- na -- nas
}

lyricsChorusOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    They're wri -- ting songs of love
    But not for me
    A lu -- cky star's a -- bove
    But not for me

    With love to lead the way
    I found more clouds of gray
    Than a -- ny Rus -- sian play
    Could gua -- ran -- tee

    I was a fool to fall
    And get that way
    Hi- ho, a -- las! and al -- so, lack- a- day

    But still I can't dis -- miss
    The memo -- ry of his kiss
    I guess he's not for me
}

lyricsChorusTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    He's knock -- ing on a door
    \repeat unfold 4 { \skip 1 }
    He'll plan a two by four
    \repeat unfold 4 { \skip 1 }

    I've heard that love's a game
    I'm puz -- zled just the same
    Was I the moth or flame
    I'm all at sea

    It start -- ed off so swell
    This "\"let's" pre -- "tend\""
    It all be -- gan so well
    But what an end

    The cli -- max of a plot
    Should be a mar -- riage knot
    But there's no knot for me
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = ""
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-A-for-C"
    \header {
        subtitle = "(Judy Garland key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsVerse
                    \lyricsChorusOne
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \repeat unfold 75 { \skip 1 }
                    \lyricsChorusTwo
                } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "condensed-in-Eb-for-C"
    \header {
        subtitle = "(John Coltrane Changes)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose a, ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCondensed
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureCondensed
                    \melodyCondensed
                >>
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "condensed-in-Eb-for-Bb"
    \header {
        subtitle = "(John Coltrane Changes)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose a, ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCondensedForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureCondensed
                    \melodyCondensed
                >>
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "condensed-in-Eb-for-Eb"
    \header {
        subtitle = "(John Coltrane Changes)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose a, ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCondensedForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureCondensed
                    \melodyCondensed
                >>
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}
