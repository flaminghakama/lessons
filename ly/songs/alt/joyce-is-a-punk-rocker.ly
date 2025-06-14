\version "2.24.0"

titleLeft = "Joyce Is A"
titleRight = "Punk Rocker"
titleFull = "Joyce Is A Punk Rocker"
composerName = "E. Alt"
lyricistName = "K. C. Sulkis"
arranger = ""
copyright = ""

%{

killPreview ; rm joyce-is-a-punk-rocker*pdf ; lilypond ly/songs/alt/joyce-is-a-punk-rocker.ly ; for file in joyce-is-a-punk-rocker*pdf ; do op $file ; done 

killPreview
rm pdf/songs/alt/joyce-is-a-punk-rocker*
lilypond ly/songs/alt/joyce-is-a-punk-rocker.ly 
mv joyce-is-a-punk-rocker*pdf pdf/songs/alt
mv joyce-is-a-punk-rocker*midi midi
for file in pdf/songs/alt/joyce-is-a-punk-rocker*pdf ; do op $file ; done 

git add . ; git commit -m"new collab" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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

structureSheet = \relative c' { 

    \tempo "Punk Rock" 4=200
    \key e \minor
    \time 4/4

    \startSection "Vamp"
    s1*4 

    \startSection "Verses 1-3"
    \startRepeat
    s1*12

    \startSection "Bridge"
    \endRepeat
    s1*8

    \startSection "Vamp"
    s1*4 

    \startSection "Verses 4-7"
    \startRepeat
    s1*12

    \startSection "Bridge"
    \doubleRepeat
    s1*8

    \startSection "Vamp"
    \endRepeat
    s1*4 

    \startSection "Verses 8-11"
    \startRepeat
    s1*12

    \startSectionWithLabel "Bridge" "3X"
    \doubleRepeat
    s1*8
    \endRepeat
    s1
    \bar "|."

}

structureSound = \relative c' { 

    \tempo "Punk Rock" 4=200
    \key e \minor
    \time 4/4

    \startSection "Vamp"
    s1*4 

    \startSection "Verse 1"
    s1*12

    \startSection "Verse 2"
    s1*12

    \startSection "Verse 3"
    s1*12

    \startSection "Bridge"
    s1*8

    \startSection "Vamp"
    s1*4 

    \startSection "Verse 4"
    s1*12

    \startSection "Verse 5"
    s1*12

    \startSection "Verse 6"
    s1*12

    \startSection "Verse 7"
    s1*12

    \startSection "Bridge"
    s1*8
    s1*8

    \startSection "Vamp"
    s1*4 

    \startSection "Verse 8"
    s1*12

    \startSection "Verse 9"
    s1*12

    \startSection "Verse 10"
    s1*12

    \startSection "Verse 11"
    s1*12

    \startSection "Bridge"
    s1*8
    s1*8
    s1*8
    \startSection ""
    s1
    \bar "|."
    
}


rehearsalMarkTweaksForScore = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 1-3"
    s1*12
    \break
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*6 \break s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 

    \pageBreak 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 4-7"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*6 \break s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 8-11"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*6 \break s1*2
}

rehearsalMarkTweaksForLeadSheet = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 
    \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 1-3"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*8
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 4-7"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*8

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 8-11"
    s1*12

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 1"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 2"
    s1*12
    \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*8
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 
    \pageBreak 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 3"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 4"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
}

chordsVamp = \chordmode { 
    e1:m | s | s | s | 
}
chordsVerseSheet = \chordmode { 
    e1:m | s | s | s | 
    a1:m | s | e:m | s | 
    c1:m | b:7 | e:m | s | 
}
chordsVerseSound = \chordmode { 
    e1:m | s | s | s | 
    a1:m | s | e:m | s | 
    c1:m | b:7 | e:m | s | 
}
chordsBridgeSheet = \chordmode { 
    d1:7 | s | e1:m | s | 
    d1:7 | s | e1:m | b:7 |
}
chordsBridge = \chordmode { 
    d1:7 | s | e2..:m e8:m | s1 | 
    d1:7 | s | e2..:m b2.:7 s4. | 
}
chordsCodaSheet = \chordmode { 
    e1:m   
}
chordsCodaSound = \chordmode { 
    e4:1.5.6-.8 r2.    
}
chordsSheet = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    \chordsVamp
    \chordsVerseSheet
    \chordsBridgeSheet
    \chordsVamp
    \chordsVerseSheet
    \chordsBridgeSheet
    \chordsVamp
    \chordsVerseSheet
    \chordsBridgeSheet
    \chordsCodaSheet
}
chordsSound = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    \chordsVamp
    \chordsVerseSound
    \chordsVerseSound
    \chordsVerseSound
    \chordsBridge
    \chordsVamp
    \chordsVerseSound
    \chordsVerseSound
    \chordsVerseSound
    \chordsVerseSound
    \chordsBridge
    \chordsBridge
    \chordsVamp
    \chordsVerseSound
    \chordsVerseSound
    \chordsVerseSound
    \chordsVerseSound
    \chordsBridge
    \chordsBridge
    \chordsBridge
    \chordsCodaSound
}


guitarVamp = \chordmode { 
    e1:1.5 | s | s | s | 
}
guitarVerse = \chordmode { 
    e1:1.5 | s | s | s | 
    c1:1.3.6 | s | e:1.5 | s | 
    e1:dim | fs:1.3-.4 | e:1.5 | s | 
}
guitarBridge = \chordmode { 
    d1:7 | s | e2..:1.5 e8:m | s1 | 
    d1:7 | s | e2..:1.5 ds2.:1.5-.6- s4. | 
}
guitarSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    \guitarVamp
    \guitarVerse
    \guitarVerse
    \guitarBridge
    \guitarVamp
    \guitarVerse
    \guitarVerse
    \guitarBridge
    \guitarBridge
    \guitarBridge
}


synthVamp = \relative c'' { 
    s1*4
}
synthVerse = \relative c''' { 
    <>\p
    r4 e b'2 ~ | 2. r4| R1*2 | 
    r4 e, a2 ~ | 2. r4 | R1*2 | 
    r4 e g2 ~ | 2. r4 | R1*2  | 

    <>\pp
    r4 e fs2 ~ | 1 | r4 e g2 ~ | g1 | 
    r4 e a2 ~ | 1 | r4 e b'2 ~ | 1 | 
    r4 e, c'2 ~ | 1 | r4 \mf b e2 ~ | 1 ~ | 

    e1 ~ | 1 ~ | 1 ~ | 1 ~ |
    e1 ~ | 1 ~ | 2.. d8 ~ | 2. r4 |
}
synthBridge = \relative c''' { 
    %  Bright Synth lead
    %  Harmonic scream synth
    r4 c a fs | c' a fs b | g e b' g | d'1 |
    r4 c a fs | c' a fs b | g e b' g | c,1 |
}
synthSong = \relative c'' { 
    s1*4
    s1*12
    s1*12
    s1*12
    s1*8

    s1*4
    s1*12
    s1*12
    s1*12
    s1*12
    s1*8
    <>\f
    \synthBridge

    s1*4
    s1*12
    s1*12
    <>\mf
    \synthVerse
    s1*8
    <>\f
    \synthBridge
}




bassVampSheet = \relative c { 
    e8 4 8  8 4 8 | e8 4 8  8 4 8  | e8 4 8  8 4 8  | 4 4 r2 | 
}
bassVampSound = \relative c { 
    e8-- 4-. 8  8-- 4-. 8 | e8-- 4-. 8  8 4-. 8  | e8-- 4-. 8  8 4-. 8  | 4 4-^ r2 | 
}
bassVerseSheet = \relative c { 
    \accidentalStyle default
    e8 4 8  8 4 8 | e8 4 8  d2 | e8 4 8  e8 4 8 | 4 r r2 | 
    a8 4 8  8 4 8 | 8 4  8  g2 | e8 4 8  8 4 8 | 4 4 r2 | 
    c'8 4 8  8 4 8 | b8 4 8  8 4 8 | e,8 4 8  8 8 8 8 | 4 4 r2 ||
}
bassVerseSound = \relative c { 
    \accidentalStyle default
    e8-- 4-. 8  8-- 4-. 8 | e8-- 4-. 8  d2-- | e8-- 4-. 8  e8-- 4-. 8 | 4->\f r r2 | 
    a8--\mp 4-. 8  8-- 4-. 8 | 8-- 4-.  8  g2-- | e8-- 4-. 8  8-- 4-. 8 | 4 4->\f r2 | 
    c'8--\mf 4-. 8  8-- 4-. 8 | b8-- 4-. 8  8-- 4-. 8 | e,8-- 4-. 8  8 8 8 8 | 4\f 4-^ r2 ||
}
bassBridgeSheet = \relative c { 
    d4. 8 4. 8 | r d r d8 2 | e2 8 4 8 ~ | 2 r | 
    d4. 8 4. 8 | r d r d8 2 | e2 8 4 b8 ~ | 1 | 
}
bassBridgeSound = \relative c { 
    d4. 8-. 4. 8-. | r d-. r d8 2 | e2 8 4-. 8-- ~ | 2 r | 
    d4. 8-. 4. 8-. | r d-. r d8 2 | e2 8 4-. b8-> ~ | 1 | 
}
bassCoda = \relative c, { 
    e4-^ r4 r2
}
bassLineSheet = { 
    \accidentalStyle default
    \bassVampSheet
    \bassVerseSheet
    \bassBridgeSheet
    \bassVampSheet
    \bassVerseSheet
    \bassBridgeSheet
    \bassVampSheet
    \bassVerseSheet
    \bassBridgeSheet
    \bassCoda
}
bassLineSound = { 
    \accidentalStyle default
    <>\mf
    \bassVampSound
    <>\mp
    \bassVerseSound
    \bassVerseSound
    \bassVerseSound
    <>\f
    \bassBridgeSound

    <>\mf
    \bassVampSound
    <>\mp
    \bassVerseSound
    \bassVerseSound
    \bassVerseSound
    \bassVerseSound
    <>\f
    \bassBridgeSound
    \bassBridgeSound

    <>\mf
    \bassVampSound
    <>\mp
    \bassVerseSound
    \bassVerseSound
    \bassVerseSound
    \bassVerseSound
    <>\f
    \bassBridgeSound
    \bassBridgeSound
    \bassBridgeSound
    <>\ff
    \bassCoda
}

melodyVamp = \relative c'' { 
    <>\xp R1*4 
}
melodyVerse = \relative c'' { 
    R1 | r2 <>\xmf e8 4 d8 | r2 r4 <>\xff e | e r r2 ||
    R1 | r2 <>\xmf e8 4 d8 | r4 d r2 | <>\xf d8 e4 8 r2 ||
    R1 | r2 <>\xmf d8 4 8 | <>\xff d4 e4 r2 | R1 ||
}
melodyBridge = \relative c'' { 
    <>\xp R1*8
}


melodySheet = \relative c'' { 
    \accidentalStyle default
    \melodyVamp
    \melodyVerse
    \melodyBridge
    \melodyVamp
    \melodyVerse
    \melodyBridge
    \melodyVamp
    \melodyVerse
    \melodyBridge
    R1
}
melodySound = \relative c'' { 
    \accidentalStyle default
    \melodyVamp
    \melodyVerse
    \melodyVerse
    \melodyVerse
    \melodyBridge

    \melodyVamp
    \melodyVerse
    \melodyVerse
    \melodyVerse
    \melodyVerse
    \melodyBridge
    \melodyBridge

    \melodyVamp
    \melodyVerse
    \melodyVerse
    \melodyVerse
    \melodyVerse
    \melodyBridge
    \melodyBridge
    \melodyBridge
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Be -- neath the twin -- sets
    Pie charts, pod -- casts, plans, posts, poise
    Beats a heart punk rock 

    D C punk night -- club
    More Fu -- ga -- zi than Fried -- man
    She ran with a -- plomb

    She starts her own firm
    Gives ad -- vice on plans, goals, hopes
    Makes dreams do -- a -- ble
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Brook -- lyn -- ese par -- ents
    Raised a bright boy, gif -- ted girl
    That girl is our Joyce

    Ve -- ry cool, more school
    Mas -- ter of tax, C. P. A.
    P. F. P. Del -- oitte, 

    Start -- up Wealth:  two books
    Mon -- te Car -- lo pro -- jec -- tions
    does it all,  Has son 
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Jeff -- er -- son’s col -- lege
    Gave her life -- long friends, B. S.
    Zest for arts,  Book smarts 

    Books for Greens, Ernst, Young
    Her own wo -- man, she wants more
    Fi -- nance AND ro -- mance

    Calm, le -- el-  head -- ed
    Wild mar -- kets and re -- gime swings
    Punks like Joyce don’t flinch
}
lyricsHeadFour = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 17 { \skip 1 }

    A tough town da -- ting
    Joyce meets her match in Ste -- phen
    Toast -- mas -- ters!  J -- Date?

    Six -- ty years, now what?
    More ad -- ven -- tures, ope -- ras, laughs
    You star in this tale
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}

\header {
    title = \title
    subtitle = "Punk Rock, Pro Joyce"
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
}

\book {
  \bookOutputSuffix "Score"
    \header {
        poet = "Concert Score"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSheet 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureSheet
                    \rehearsalMarkTweaksForScore
                    \melodySheet
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadFour } 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureSheet
                    \bassLineSheet
                >>
            }
        >>

    }
}

\book {
  \bookOutputSuffix "Lead-Sheet"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSheet 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureSheet
                    \rehearsalMarkTweaksForLeadSheet
                    \melodySheet
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadFour } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Bass"
    \header {
        poet = "Bass"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSheet 
            }
            \new Staff = "bass" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                \new Voice = "bass" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureSheet
                    \rehearsalMarkTweaksForBass
                    \bassLineSheet
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Sounds"
    \header {
        poet = "Chords"
        instrumentName = \poet
    }
    \score {
        <<
            \new Staff = "synth" <<
                \structureSound
                \transpose c c \synthSong
            >>
            \new Staff = "voice" <<
                \structureSound
                \melodySound
            >>
            \new ChordNames { 
                \chordsSound 
            }
            \new Staff = "bass" <<
                \structureSound
                \transpose c c, \bassLineSound
            >>
        >>
        \midi {}
    }
}

