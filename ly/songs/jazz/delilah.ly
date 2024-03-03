\version "2.24.0"

titleLeft = "Deli"
titleRight = "lah"
titleFull = "Delilah"
composerName = "V. Young"
arranger = ""
copyright = ""

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{

killPreview ; rm delilah*pdf ; lilypond ly/songs/jazz/delilah.ly ; for file in delilah*pdf ; do op $file ; done 

killPreview
rm pdf/songs/jazz/delilah*
lilypond ly/songs/jazz/delilah.ly 
mv delilah*pdf pdf/songs/jazz
for file in pdf/songs/jazz/delilah*pdf ; do op $file ; done 

git add . ; git commit -m"enharmonics" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #3

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

structureCommon = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \tempo 4=120
    \time 4/4
    s1*16

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 ) 
    \startSection "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*4 
        s1*3
    }
    \alternative {
        { s1 \bar ":|]" }
        { s1 }
    }

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 ) 
    \startSection "B"
    s1*4 
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 ) 
    \startSection "A"
    s1*4 
    s1*4
    \bar ":|]"
}


breaksLead = \relative c' { 

    s1*16
    \break

    % "A"
    s1*4 \break 
    s1*3
    s1 || s1  
    \break 
    
    % "B"
    s1*4 \break 
    s1*4
    \break

    % "A"
    s1*4 \break 
    s1*4
}
breaksBass = \relative c' { 

    s1*8
    \break
    s1*8
    \break

    % "A"
    s1*4 \break 
    s1*3
    s1 || s1  
    \break 
    
    % "B"
    s1*4 \break 
    s1*4
    \break

    % "A"
    s1*4 \break 
    s1*4
}


breaksGuitar = \relative c' { 

    s1*16
    \break

    % "A"
    s1*4 \break 
    s1*3
    s1 || s1  
    \break 
    
    % "B"
    s1*4 \break 
    s1*4
    \break

    % "A"
    s1*4 \break 
    s1*4
}

breaksMelody = \relative c' { 

    s1*16

    % "A"
    s1*4 \break 
    s1*3
    s1 || s1  
    \break 
    
    % "B"
    s1*4 \break 
    s1*4
    \break

    % "A"
    s1*4 \break 
    s1*4
}
breaksHarmony= \relative c' { 

    s1*12 \break
    s1*4
    \break

    % "A"
    s1*4 \break 
    s1*3
    s1 || s1  
    \break 
    
    % "B"
    s1*4 \break 
    s1*4
    \break

    % "A"
    s1*4 \break 
    s1*4
}


structureKey = \relative c' { 
    \key fs \minor
}

structureKeyForFlats = \relative c' { 
    \key gf \minor
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
    b1:m7 | gs4:m7.5- cs2.:7.9- | fs1:m7 | 
}
chordsA = \chordmode { 
    fs1:m7 | s | s | s | 
    \chordsASecondHalf
}
chordsAForFlats = \chordmode { 
    gf1:m7 | s | s | s | 
    cf1:m7 | af4:m7.5- df2.:7.9- | gf1:m7 | 
}

chordsBridge = \chordmode { 
    b1:m7 | s | cs:7 | s | 
    d1:6 | s | g:7.5- | s | 
}
chordsBridgeForBb = \chordmode { 
    b1:m7 | s | df:7 | s | 
    d1:6 | s | g:7.5- | s | 
}
chordsBridgeForEb = \chordmode { 
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
chordsSongForBass = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1* 16 
    \chordsA
    s1 || s1 ||
    \chordsBridge
    \chordsA
}
chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*16

    \chordsA s1 || s1 ||
    \chordsBridge
    \chordsA
}
chordsSongForBb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*16

    \chordsA s1 || s1 ||
    \chordsBridgeForBb
    \chordsA
}
chordsSongForEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*16

    \chordsAForFlats s1 || s1 ||
    \chordsBridgeForEb
    \chordsAForFlats
}

melodyAPickup = \relative c' { 
    \tuplet 3/2 { r4 cs e } ||
}
melodyACommon = \relative c' { 
    fs2 2 | \tuplet 3/2 2 { r4 a gs  fs gs e } |
    fs2 2 | \tuplet 3/2 2 { r4 a gs  fs gs e } |
    \tuplet 3/2 2 { d4 e cs } d2 | fs4 2 es4 | 
    d2\startTrillSpan cs\stopTrillSpan ~ | 2  
}
melodySecondEnding = \relative c' {
    cs2.\repeatTie
}

harmonyIntroLickInEb = \relative c'' { 
    bf4 af16 ( gf || 
    ef4. ) df'8 ( c4-. ) 4-. | 
    ef,4 df'8 c r c ( bf4-. ) | 
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
    e8 bf' ~ 4. af16 ( gf
    ef4. ) df'8 ( c4-. ) 4-. | 
    ef,4 df'8 c r c ( bf4-. ) | 
}
harmonyBridgeOutLickInEbForBb = \relative c' { 
    ff8 bf ~ 4. af16 ( gf
    ef4. ) df'8 ( c4-. ) 4-. | 
    ef,4 df'8 c r c ( bf4-. ) | 
}


secondHarmonyIntroLickInEb = \relative c'' { 
    gf4 f16 ( ef ||
    c4. ) bf'8 ( af4-. ) 4-. | 
    c,4 bf'8 af r af ( gf4-. ) | 
}
secondHarmonyLickInEb = \relative c' { 
    c4. bf'8 ( af4-. ) 4-. | 
    c,4 bf'8 af r af ( gf4-. ) | 
}
secondHarmonyAEndInEb = \relative c'' {
    af1 | 4 2 4 | ef2\startTrillSpan f\stopTrillSpan ~ | 2. 
}
secondHarmonySecondEndingInEb = \relative c' {
    df2.\repeatTie 
}

secondHarmonyBridgeOutLickInEb = \relative c' { 
    e8 fs ~ 4.  f16 ( ef |
    c4. ) bf'8 ( af4-. ) 4-. | 
    c,4 bf'8 af r af ( gf4-. ) | 
}
secondHarmonyBridgeOutLickInEbForC = \relative c' { 
    ff8 gf ~ 4.  f16 ( ef |
    c4. ) bf'8 ( af4-. ) 4-. | 
    c,4 bf'8 af r af ( gf4-. ) | 
}
secondHarmonyBridgeOutLickInEbForBb = \relative c' { 
    ff8 gf ~ 4.  f16 ( ef |
    c4. ) bf'8 ( af4-. ) 4-. | 
    c,4 bf'8 af r af ( gf4-. ) | 
}

melodyBridgeFirstHalfInEb = \relative c' { 
    bf8 ||
    \tuplet 3/2 { cf4 df ef } bf'2 ~ | 
    \tuplet 3/2 { bf4 af gf } f4 ef8 d ~ | 8 ef f2. ~ | 2. r8
}
melodyBridgeFirstHalfInEbForC = \relative c' { 
    bf8 ||
    \tuplet 3/2 { cf4 df ef } bf'2 ~ | 
    \tuplet 3/2 { bf4 af gf } f4 ef8 d ~ | 8 ef f2. ~ | 2. r8
}
melodyBridgeFirstHalfForBb = \relative c' { 
    ds8 ||
    \tuplet 3/2 { e4 fs gs } ds'2 ~ | 
    \tuplet 3/2 { ds4 cs b } as4 gs8 g ~ | 8 af bf2. ~ | 2. r8
}
melodyBridgeSecondHalfInEbForFlats = \relative c' { 
    as8 | 
    \tuplet 3/2 { b4 cs ds } cs'2 ~ | 4. b8  \tuplet 3/2 { fs4 es ds } | 
}
melodyBridgeSecondHalfInEbForBb = \relative c' { 
    as?8 | 
    \tuplet 3/2 { b4 cs ds } cs'2 ~ | 4. b8  \tuplet 3/2 { fs4 es ds } | 
}
melodyBridgeSecondHalfInEb = \relative c' { 
    bf8 | 
    \tuplet 3/2 { cf4 df ef } df'2 ~ | 4. cf8  \tuplet 3/2 { gf4 f ef } | 
}
melodyBridgeEnd = \relative c'' { 
    g1 ~ | 2 
}
melodyBridgeEndForHarmony = \relative c'' { 
    g1 ~ | 4
}
melodyBridgeCommonInEb = { 
    \melodyBridgeFirstHalfInEb
    \melodyBridgeSecondHalfInEbForFlats
}
melodyBridge = \relative c'' { 
    \melodyBridgeFirstHalfInEb
    \melodyBridgeSecondHalfInEbForFlats
    g1 ~ | 2 
}
melodyBridgeInEb = \relative c' { 
    \melodyBridgeCommonInEb
    e1 ~ | 4
}


trumpetSong = \relative c'' {
    <>\xpp R1*12 \break
    <>\xpp R1*3 | r2 
    \melodyAPickup
    
    \melodyACommon
    \melodyAPickup
    \melodySecondEnding r4

    <>\xmp
    R1*4 
    <>\xmf
    R1*3 | r2 
    \melodyAPickup
    \melodyACommon r2 
}

harmonyInEb = \relative c'' {
    R1*11 | r2 r8 
    \harmonyIntroLickInEb
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
harmonyForBb = \relative c'' {
    R1*11 | r2 r8 
    \transpose c ds {
        \harmonyIntroLickInEb
        \harmonyLickInEb

        \harmonyLickInEb
        \harmonyLickInEb
        \harmonyAEndInEb r4
        \harmonySecondEndingInEb r8
    }
    \transpose c bf, \melodyBridgeFirstHalfForBb
    \transpose c ef \melodyBridgeSecondHalfInEbForBb
    \melodyBridgeEndForHarmony
    \transpose c ds { 
        \harmonyBridgeOutLickInEbForBb
        \harmonyLickInEb
        \harmonyAEndInEb r4
    }
}
harmonyForC = \relative c'' {
    R1*11 | r2 r8 
    \transpose c ds {
        \harmonyIntroLickInEb
        \harmonyLickInEb

        \harmonyLickInEb
        \harmonyLickInEb
        \harmonyAEndInEb r4
        \harmonySecondEndingInEb r8
    }
    \transpose c ds \melodyBridgeFirstHalfInEb
    \transpose c ds \melodyBridgeSecondHalfInEb
    \melodyBridgeEndForHarmony
    \transpose c ds { 
        \harmonyBridgeOutLickInEbForBb
        \harmonyLickInEb
        \harmonyAEndInEb r4
    }
}

secondHarmonyInEb = \relative c'' {
    R1*8 | 
    R1*3 | r2 r8 
    \secondHarmonyIntroLickInEb
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
secondHarmonyForC = {
    R1*8 | 
    R1*3 | r2 r8 
    \transpose c ds { 
        \secondHarmonyIntroLickInEb
        \secondHarmonyLickInEb

        \secondHarmonyLickInEb
        \secondHarmonyLickInEb
        \secondHarmonyAEndInEb r4
        \secondHarmonySecondEndingInEb r8 
    }
    \transpose c ds { 
        \melodyBridgeFirstHalfInEb
        \melodyBridgeSecondHalfInEb
    }
    \melodyBridgeEndForHarmony
    \transpose c ds { 
        \secondHarmonyBridgeOutLickInEbForC
        \secondHarmonyLickInEb
        \secondHarmonyAEndInEb r4
    }
}
secondHarmonyForBb = \relative c'' {
    R1*11 | r2 r8 
    \transpose c ds {
        \secondHarmonyIntroLickInEb
        \secondHarmonyLickInEb

        \secondHarmonyLickInEb
        \secondHarmonyLickInEb
        \secondHarmonyAEndInEb r4
        \secondHarmonySecondEndingInEb r8 
    }
    \transpose c bf, \melodyBridgeFirstHalfForBb
    \transpose c ds \melodyBridgeSecondHalfInEb
    \melodyBridgeEndForHarmony
    \transpose c ds {
        \secondHarmonyBridgeOutLickInEbForBb
        \secondHarmonyLickInEb
        \secondHarmonyAEndInEb r4
    }
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
    <>\xmf \comp #11 r8 <es gs>8 ~ | 8 <fs a>4 <gs b>8 ~ 2 |
    <>\xmf \comp #12 | a,1 |
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
    \break
    \repeat percent 4 {
        \bassLick 
        \bassLick
    }

    \repeat percent 2 {
        \bassLick 
        \bassLick
    }
    b4. cs8 d4 es | fs4 2 es4 | 
    \repeat percent 2 {
        \bassLick 
    }
    \bassSecondEnding
    <>\xmf \comp #16
    <>\xmf \comp #13 g8 df ~ 2 |
    \repeat percent 2 {
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
                    \structureKey
                    \structureCommon
                    \breaksLead
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
                        }
                        R1 | r2 
                        \melodyAPickup
                        \melodyACommon
                        \melodyAPickup
                        \melodySecondEnding r8

                        \transpose c ds { 
                            \melodyBridgeFirstHalfInEb
                            \melodyBridgeSecondHalfInEb
                        }
                        \melodyBridgeEnd
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
                \chordsSong
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureKey
                    \structureCommon
                    \breaksMelody
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
                \chordsSongForBb
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureKey
                    \structureCommon
                    \breaksHarmony
                    \harmonyForBb
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
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForEb
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureKeyForFlats
                    \structureCommon
                    \breaksHarmony
                    \transpose c ef \harmonyInEb
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Harmony-I-for-C"
    \header {
        subtitle = ""
        poet = "Harmony I in C"
        instrumentName = \poet
    }
    \score {
        \transpose c c, <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \clef bass
                    \structureKey
                    \structureCommon
                    \breaksHarmony
                    \harmonyForC
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
                \chordsSongForBb
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureKey  
                    \structureCommon
                    \breaksHarmony
                    \secondHarmonyForBb
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
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForEb
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureKeyForFlats
                    \structureCommon
                    \breaksHarmony
                    \transpose c ef \secondHarmonyInEb
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Harmony-II-for-C"
    \header {
        subtitle = ""
        poet = "Harmony II in C"
        instrumentName = \poet
    }
    \score {
        \transpose c c, <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \clef bass
                    \structureKey
                    \structureCommon
                    \breaksHarmony
                    \secondHarmonyForC
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Guitar-for-C"
    \header {
        subtitle = ""
        poet = "Guitar"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForGuitar
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureKey
                    \structureCommon
                    \breaksGuitar
                    \guitarSong
                >>
            }
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
        \transpose c c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForBass
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \clef bass
                    \structureKey
                    \structureCommon
                    \breaksBass
                    \bassSong
                >>
            }
        >>
    }
}

