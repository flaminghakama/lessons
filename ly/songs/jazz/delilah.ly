\version "2.19.83"

titleLeft = "Deli"
titleRight = "lah"
title = "Delilah"
composerName = "V. Young"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm delilah*pdf ; lilypond ly/songs/jazz/delilah.ly ; for file in delilah*pdf ; do op $file ; done 

killPreview
rm pdf/songs/jazz/delilah*
lilypond ly/songs/jazz/delilah.ly 
mv delilah*pdf pdf/songs/jazz
for file in pdf/songs/jazz/delilah*pdf ; do op $file ; done 

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

    \key fs \minor
    \tempo 4=120
    \time 4/4
    s1*16 

    \break

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \startSection "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*4 \break 
        s1*3
    }
    \alternative {
        { s1 \bar ":|]" }
        { s1  \break }
    }

    \startSection "B"
    s1*4 \break 
    s1*4
    \break

    \once \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 ) 
    \startSection "A"
    s1*4 \break 
    s1*4
    \bar ":|]"
}



chordsIntro = \chordmode {
    s1*4 |
    fs2 e | s a | af g | s1 | 
    df2 c | s b | bf a | s1 |
}
chordsLick = \chordmode { 
    fs2:m7 fs:m6 | fs4.:m7 fs:m6 fs4:m | 
}
chordsASecondHalf = \chordmode { 
    b1:m7 | gs2:m7.5- cs:7 | fs1:m7 | 
}
chordsA = \chordmode { 
    fs1:m7 | s | s | s | 
    \chordsASecondHalf
}

chordsBridge = \chordmode { 
    b1:m7 | s | cs:7 | s | 
    d1:6 | s | g:7.5- | s | 
}


chordsAForFlats = \chordmode { 
    gf1:m7 | s | s | s | 
    cf1:m7 | af2:m7.5- df:7 | gf1:m7 | 
}
chordsBridgeForFlats = \chordmode { 
    cf1:m7 | s | df:7 | s | 
    d1:6 | s | g:7.5- | s | 
}

chordsSongForScore = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsLick
    \chordsLick

    \chordsLick 
    \chordsLick 
    \chordsASecondHalf
    s1 || s1 ||

    \chordsBridge
    \chordsLick
    \chordsLick
    \chordsASecondHalf
}
chordsSongForLeadSheet = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    fs1:m | s1 |
    s1*2

    \chordsA 
    s1 || s1 ||

    \chordsBridge
    \chordsA
}
chordsSongForGuitar = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsLick
    s1*2 

    \chordsLick 
    s1*2 
    \chordsASecondHalf
    s1 || s1 ||

    \chordsBridge
    \chordsLick
    s1*2 
    \chordsASecondHalf
}
chordsSongForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*16

    \chordsAForFlats s1 || s1 ||
    \chordsBridgeForFlats
    \chordsAForFlats
}

melodyAPickup = \relative c' { 
    \tuplet 3/2 { r4 fs a } ||
}
melodyACommon = \relative c'' { 
    b2 2 | \tuplet 3/2 2 { r4 d cs  b cs a } |
    b2 2 | \tuplet 3/2 2 { r4 d cs  b cs a } |
    \tuplet 3/2 2 { g4 a fs } g2 | cs4 2 a4 | 
    g2\startTrillSpan fs\stopTrillSpan ~ | 2  
}
melodySecondEnding = \relative c' {
    fs2.\repeatTie
}

harmonyIntroLickInEb = \relative c'' { 
    bf4 af16 gf ||
}
harmonyLickInEb = \relative c' { 
    ef4. df'8 ( c4-. ) 4-. | 
    ef,4 df'8 c r c ( bf4-. ) | 
}
harmonyAEndInEb = \relative c'' {
    cf1 | 4 2 bf4 | af2\startTrillSpan gf\stopTrillSpan ~ | 2. 
}
harmonySecondEndingInEb = \relative c'' {
    af2.\repeatTie 
}
harmonyBridgeOutLickInEb = \relative c' { 
    e8 bf' ~ 2 \grace { af8 ( gf }
    ef4. ) df'8 ( c4-. ) 4-. | 
    ef,4. df'8 c r c ( bf4-. ) | 
}


secondHarmonyIntroLickInEb = \relative c'' { 
    gf4 ff16 ef ||
}
secondHarmonyLickInEb = \relative c' { 
    c4. bf'8 ( af4-. ) 4-. | 
    c,4 bf'8 af r af ( gf4-. ) | 
}
secondHarmonyAEndInEb = \relative c'' {
    af1 | 4 2 4 | ef2\startTrillSpan df\stopTrillSpan ~ | 2. 
}
secondHarmonySecondEndingInEb = \relative c' {
    df2.\repeatTie 
}

secondHarmonyBridgeOutLickInEb = \relative c'' { 
    e8 gf ~ 2 \grace { ff8 ( ef }
    c4. bf'8 ( af4-. ) 4-. | 
    c,4. bf'8 af r af ( gf4-. ) | 
}

melodyBridgeCommonInEb = \relative c' { 
    bf8 ||
    \tuplet 3/2 { cf4 df ef } bf'2 ~ | 
    \tuplet 3/2 { bf4 af gf } f4 ef8 d ~ | 8 ef f2. ~ | 2. r8 bf, | 

    \tuplet 3/2 { cf4 df ef } df'2 ~ | 4. cf8  \tuplet 3/2 { gf4 f ef } | 
}
melodyBridge = \relative c'' { 
    \transpose c ds \melodyBridgeCommonInEb
    g1 ~ | 2 
}
melodyBridgeInEb = \relative c' { 
    \melodyBridgeCommonInEb
    e1 ~ | 4
}


trumpetSong = \relative c'' {
    R1*12 
    R1*3 | r2 
    \melodyAPickup
    
    \melodyACommon
    \melodyAPickup
    \melodySecondEnding r4

    R1*7 | r2 
    \melodyAPickup
    \melodyACommon r2 
}

harmonyInEb = \relative c'' {
    R1*11 | r2 r8 
    \harmonyIntroLickInEb
    \harmonyLickInEb
    \harmonyLickInEb

    \harmonyLickInEb
    \harmonyLickInEb
    \harmonyAEndInEb r4
    \harmonySecondEndingInEb r8

    \melodyBridgeInEb
    \harmonyBridgeOutLickInEb
    \harmonyLickInEb
    \harmonyAEndInEb r4
}

secondHarmonyInEb = \relative c'' {
    R1*11 | r2 r8 
    \secondHarmonyIntroLickInEb
    \secondHarmonyLickInEb
    \secondHarmonyLickInEb

    \secondHarmonyLickInEb
    \secondHarmonyLickInEb
    \secondHarmonyAEndInEb r4
    \secondHarmonySecondEndingInEb r8 

    \melodyBridgeInEb
    \secondHarmonyBridgeOutLickInEb
    \secondHarmonyLickInEb
    \secondHarmonyAEndInEb r4
}

guitarIntroCommon = \relative c'' { 
    r4 r8 cs ~ 2 | 
    <fs, as cs>4. <e gs b>8 ~ 2 ~ | 2 <a cs e> |
    <af c ef>4. <g b d>8 ~ 2 ~ | 1 | 
    <df' f af>4. <c e g>8 ~ 2 ~ | 2 <b ds fs> | 
    <bf d f>4. 
}
guitarIntroEnd = \relative c'' { 
    <a cs e>8 ~ 2 ~ | 1 |
}
guitarIntroEndLeadSheet = \relative c'' { 
    <a cs e>8 ~ 2 ~ | 2 r8
}
guitarLick = \relative c'' { 
    \override NoteHead.style = #'cross
    r4 r8 b8 4 4 | r4 b8 8 ~ 8 8 4-. | 
    \revert NoteHead.style
}
guitarASecondHalf = \relative c'' { 
    \override NoteHead.style = #'cross
    b1 | 4 2 4 | \repeat tremolo 16 { b32 } 4. 
    \revert NoteHead.style
        <ds ds,>8 ~ | 8 <cs cs,>4 <ds ds,>8 <cs cs,>2
}
guitarSecondEnding = \relative c'' { 
    <ds ds,>8\repeatTie <cs cs,>4 <ds ds,>8 <cs cs,>2
}
guitarBridge = \relative c'' { 
    \comp #11 r8 <es gs>8 ~ | 8 <fs a>4 <gs b>8 ~ 2 |
    \comp #12 | a,1 |
}

guitarSong = \relative c'' { 
    R1*3 | 
    \guitarIntroCommon
    \guitarIntroEnd
    \repeat percent 2 {
        \guitarLick
    }

    \repeat percent 2 {
        \guitarLick
    }
    \guitarASecondHalf
    \guitarSecondEnding
    \guitarBridge

    \repeat percent 2 {
        \guitarLick
    }
    \guitarASecondHalf
}

bassLick = \relative c {
    fs4. cs'8 ~ 8 4 8 | 
}
trillBassLick = \relative c {
    fs4.\startTrillSpan cs'8\stopTrillSpan ~ 8 4 8 | 
}
bassSecondEnding = \relative c {
    fs4. cs'8 ~ 8 8 r a,8 | 
}

bassSong = \relative c {
    \repeat percent 4 {
        \bassLick 
        \bassLick
    }
    \repeat percent 4 {
        \bassLick 
        \bassLick
    }

    \repeat percent 4 {
        \bassLick 
        \bassLick
    }
    b4. cs8 d4 f | fs4 2 f4 | 
    \repeat percent 2 {
        \bassLick 
    }
    \bassSecondEnding
    \comp #29 g8 df ~ 2 |
    \repeat percent 4 {
        \bassLick 
        \bassLick
    }
    b4. cs8 d4 f | fs4 2 f4 | 
    \repeat percent 2 {
        \bassLick 
    }    
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "Lead-Sheet-for-C"
    \header {
        subtitle = ""
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForLeadSheet
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    {
                        \clef bass 
                        \repeat percent 2 {
                            \bassLick
                        }
                        \clef treble
                        R1 
                        \guitarIntroCommon
                        \guitarIntroEndLeadSheet
                        \transpose c ds {
                            \harmonyIntroLickInEb
                            \harmonyLickInEb
                        }
                        R1 | r2 
                        \melodyAPickup
                        \melodyACommon
                        \melodyAPickup
                        \melodySecondEnding r8

                        \melodyBridge
                        \melodyAPickup
                        \melodyACommon
                    }
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Trumpet-for-Bb"
    \header {
        subtitle = ""
        poet = "Bb Trumpet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \trumpetSong
                    \pageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Harmony-I-for-Bb"
    \header {
        subtitle = ""
        poet = "Harmony I in Bb"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \transpose c ef \harmonyInEb
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Harmony-I-for-Eb"
    \header {
        subtitle = ""
        poet = "Harmony I in Eb"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \transpose c ef \harmonyInEb
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Harmony-II-for-Bb"
    \header {
        subtitle = ""
        poet = "Harmony II in Bb"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \transpose c ef \secondHarmonyInEb
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Harmony-II-for-Eb"
    \header {
        subtitle = ""
        poet = "Harmony II in Eb"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \transpose c ef \harmonyInEb
                >>
            }
        >>
    }
}

