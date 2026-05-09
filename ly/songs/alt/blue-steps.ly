\version "2.24.0"

titleLeft = "Blue"
titleRight = "Steps"
titleFull = "Blue Steps"
composerName = "Elaine Alt"
lyricistName = ""
arranger = ""
copyright = ""

%{

killPreview ; rm blue-steps*pdf ; lilypond ly/songs/alt/blue-steps.ly ; for file in blue-steps*pdf ; do op $file ; done 

killPreview
rm pdf/songs/alt/blue-steps*
lilypond ly/songs/alt/blue-steps.ly 
mv blue-steps*pdf pdf/songs/alt
for file in pdf/songs/alt/blue-steps*pdf ; do op $file ; done 

git add . ; git commit -m"fixing chord" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #20

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last = ##f
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"


\layout { 
    indent = 1.25\cm
    short-indent = .25\cm
}

structure = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 1 . 3 )

    \key bf \major
    \tempo 4=168
    \time 4/4
    \partial 8*1
    s8

    \startSectionNoBarline "Head"
    \bar "[|:-|"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1 s2.... \toCoda s32 
    } 
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \break }
    }

    \startSectionNoBarline "Twos"
    \bar ":|][|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*3 
    }
    \alternative { 
        { s1 \bar ":|]" }
        { s1 }
    }


    \pageBreak

    \startSectionNoBarline "Solos"
    \bar "[|:-|"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*4
    }
    \bar ":|]" 
}
structureCoda = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( -11 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8
    \mark \markup { \musicglyph #"scripts.coda" }

    \key bf \major
    \time 4/4
    s1*2
    \bar "||"
    s1*2
    \bar "|." 
}

chordsLastBar = \chordmode { 
    d2:maj7 f:7 ||
}
chordsLastBarHorns = \chordmode { 
    eff2:maj7 f:7 ||
}
chordsLastTwoBars = \chordmode { 
    fs2:7 a:7 | \chordsLastBar ||
}
chordsLastTwoBarsHorns = \chordmode { 
    gf2:7 a:7 | \chordsLastBar ||
}
chordsLastTwoBarsForEb = \chordmode { 
    gf2:7 a:7 | \chordsLastBar ||
}
chordsLastTwoBarsForEbHorns = \chordmode { 
    gf2:7 bff:7 | \chordsLastBarHorns ||
}

formChordsCommon = \chordmode {
    bf2:7 f:1.3.5.7.8+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:7 b:7 | e:maj7 g:aug7 | 
    c1:m7 | f:aug7/cs | 
}
formChords = \chordmode {
    \formChordsCommon
    \chordsLastTwoBars
}
formChordsHorns = \chordmode {
    bf2:7 af:1.3.5.7.8+.9 | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:7 cf:7 | ff:maj7 g:aug7 | 
    c1:m7 | f:aug7/df | 
    \chordsLastTwoBarsHorns
}
formChordsForBb = \chordmode {
    bf2:7 ef:1.3.5.7.8+.10+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:7 cf:7 | ff:maj7 g:aug7 | 
    c1:m7 | f:aug7/df | \chordsLastTwoBarsForEb
}
formChordsForBbHorns = \chordmode {
    bf2:7 gf:1.3.5.7.8+.9.10+ | ef2:7 gf:7 | bff:7 eff:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:7 cf:7 | ff:maj7 g:aug7 | 
    c1:m7 | f:aug7/df | \chordsLastTwoBarsForEbHorns
}
formChordsForEb = \chordmode {
    bf2:7 af:1.3.5.7.8+.10+.12+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:7 cf:7 | ff:maj7 g:aug7 | 
    c1:m7 | f:aug7/df | \chordsLastTwoBarsForEb
}
formChordsForEbHorns = \chordmode {
    bf2:7 cf:1.3.5.7.8+.9.10+.12+ | ef2:7 gf:7 | bff:7 eff:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:7 cf:7 | ff:maj7 g:aug7 | 
    c1:m7 | f:aug7/df | \chordsLastTwoBarsForEbHorns
}

codaChords = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsLastTwoBars ||
    fs2:7 a:7 | d:maj7.7+ f4:7 bf:6 ||
}
codaChordsHorns = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsLastTwoBarsHorns ||
    gf2:7 a:7 | d:maj7.7+ f4:7 bf:6 ||
}
codaChordsForBbHorns = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsLastTwoBarsForEbHorns ||
    gf2:7 bff:7 | eff:maj7.7+ f4:7 bf:6 ||
}
codaChordsForEbHorns = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsLastTwoBarsForEbHorns ||
    gf2:7 bff:7 | eff:maj7.7+ f4:7 bf:6 ||
}
codaChordsForEb = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsLastTwoBarsForEb ||
    gf2:7 a:7 | d:maj7.7+ f4:7 bf:6 ||
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8
    \formChords \chordsLastTwoBars  
    \formChords \chordsLastBar
    \formChords
}
chordsSongHorns = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8
    \formChordsHorns \chordsLastTwoBarsHorns  
    \formChordsHorns \chordsLastBarHorns
    \formChordsHorns
}

chordsSongForBb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8
    \formChordsForBb \chordsLastTwoBars 
    \formChordsForBb \chordsLastBar
    \formChordsForBb
}
chordsSongForBbHorns = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8
    \formChordsForBbHorns \chordsLastTwoBarsForEbHorns 
    \formChordsForBbHorns \chordsLastBarHorns
    \formChordsForBbHorns
}

chordsSongForEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8
    \formChordsForEb \chordsLastTwoBars 
    \formChordsForEb \chordsLastBar 
    \formChordsForEb 
}
chordsSongForEbHorns = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8
    \formChordsForEbHorns \chordsLastTwoBarsForEbHorns 
    \formChordsForEbHorns \chordsLastBarHorns 
    \formChordsForEbHorns 
}

headCommon = \relative c'' { 
    f\xf || 
    r8 ef r bf df4-- ef-. | r2 ff8 ef df bf | a?4-- g8 fs8 r2 | r2 

    r4 r8 f'8 |
    r8 ef r bf  df4-- ef-. | r4 r8 ff8  r ef df [ bf ] | af4-- g8 fs8 r2 | r4 r8 

    f' r ef r b | 
    d4-- c-. r2 | r2 ff8 ef df bf |
}
headCommonHorns = \relative c'' { 
    f\xf || 
    r8 ef r bf df4-- ef-. | r2 ff8 ef df bf | a?4-- g8 fs8 r2 | r2 

    r4 r8 f'8 |
    r8 ef r bf  df4-- ef-. | r4 r8 ff8  r ef df [ bf ] | af4-- g8 gf8 r2 | r4 r8 

    f' r ef r b | 
    d4-- c-. r2 | r2 ff8 ef df bf |
}
headCommonForEb = \relative c'' { 
    f\xf || 
    r8 ef r bf df4-- ef-. | r2 ff8 ef df bf | a?4-- g8 fs8 r2 | r2

    r4 r8 f' |
    r8 ef r bf df4-- ef-. | r4 r8 ff8 r ef df [ bf ] | af4-- g8 gf8 r2 | r4 r8 

    f' r ef r b | 
    d4-- c-. r2 | r2 ff8 ef df bf |
}
headCommonForEbHorns = \relative c'' { 
    f\xf || 
    r8 ef r bf df4-- ef-. | r2 ff8 ef df bf | bff4-- aff8 gf8 r2 | r2

    r4 r8 f' |
    r8 ef r bf df4-- ef-. | r4 r8 ff8 r ef df [ bf ] | af4-- g8 gf8 r2 | r4 r8 

    f' r ef r b | 
    d4-- c-. r2 | r2 ff8 ef df bf |
}

headFirstEnding = \relative c'' {
    r2 r4 a8 cs | r4 r8 d? r4 r8 f
}
headFirstEndingHorns = \relative c'' {
    r2 r4 bff8 df | r4 r8 d? r4 r8 f
}
headFirstEndingForMidi = \relative c'' {
    r2 r4 a8 cs | r4 r8 d 
}
melodyCoda = \relative c' { 
    R1 | r2 r4 r8 e8 ~ | 8 fs gs a ~ 8 b cs d ~ | 8 e fs g ~ 8 a bf4-^ ||
}
melodyCodaForEb = \relative c' { 
    R1 | r2 r4 r8 ff ~ || 8 gf af a ~ 8 b cs d ~ | 8 e fs g ~ 8 a bf4-^ ||
}
melodyCodaForHorns = \relative c' { 
    R1 | r2 r4 r8 ff ~ || 8 gf af bff ~ 8 cf df eff ~ | 8 ff gf g ~ 8 a? bf4-^ ||
}

head = \relative c'' { 
    \headCommon
    \headFirstEnding
    R1 | r2 r4 
}
headHorns = \relative c'' { 
    \headCommonHorns
    \headFirstEnding
    R1 | r2 r4 
}
headForEb = \relative c'' { 
    \headCommonForEb
    \headFirstEnding
    R1 | r2 r4 
}
headForEbHorns = \relative c'' { 
    \headCommonForEbHorns
    \headFirstEndingHorns
    R1 | r2 r4 
}

twosFirst = \relative c' { 
    r8 d\xmp ~ ||
    d8 ef f g ~  8 af bf c ~ | 8 df ef ff ~ 8 gf af a | R1 | r2 
}
twosFirstHorns = \relative c' { 
    r8 d\xmp ~ ||
    d8 ef f g ~  8 af bf c ~ | 8 df ef ff ~ 8 gf af bff | R1 | r2 
}
twosSecond = \relative c' { 
    r4 r8 g\xmf ~ | 
    g8 bf c df ~ 8 ef f gf ~ | 8 af bf cf ~ 8 df ef f | R1 | r2 
}
twosSecondForEb = \relative c' { 
    r4 r8 g\xmf ~ | 
    g8 bf c df ~ 8 ef f gf ~ | 8 af bf cf ~ 8 df ef f | R1 | r2 
}
twosThirdCommon = \relative c' { 
    r4 r8 f\xf ~ | 
    f8 g a bf ~ 8 c d ef ~ | 8 f g a ~ 8 b cs ds | R1 | 
}
twosThirdCommonHorns = \relative c' { 
    r4 r8 f\xf ~ | 
    f8 g a bf ~ 8 c d ef ~ | 8 f g a ~ 8 cf df ef | R1 | 
}
twosFirstEnding = \relative c' { 
    r2 r4 r8 d\xmp \laissezVibrer |
}
twosSecondEnding = \relative c' { 
    R1 
}
twosThirdCommonForEb = \relative c { 
    r4 r8 f\xf ~ | 
    f8 g a bf ~ 8 c d ef ~ | 8 f g a ~ 8 cf df ef | R1 |
}

twosCommon = { 
    \twosFirst
    \twosSecond
    \twosThirdCommon
}
twosCommonHorns = { 
    \twosFirst
    \transpose c, c \twosSecond
    \twosThirdCommonHorns
}
twosCommonForBb = { 
    \twosFirst
    \twosSecond
    \twosThirdCommonForEb
}
twosCommonForBbHorns = { 
    \twosFirstHorns
    \transpose c c \twosSecond
    \transpose c, c \twosThirdCommonForEb
}
twosCommonForEb = { 
    \transpose c c, \twosFirst
    \twosSecondForEb
    \transpose c c \twosThirdCommonForEb
}
twosCommonForEbHorns = { 
    \twosFirstHorns
    \twosSecondForEb
    \transpose c c \twosThirdCommonForEb
}
twos = { 
    \twosCommon
    \twosFirstEnding
    \twosSecondEnding
}
twosHorns = { 
    \twosCommonHorns
    \twosFirstEnding
    \twosSecondEnding
}
twosForBb = { 
    \twosCommonForBb
    \twosFirstEnding
    \twosSecondEnding
}
twosForBbHorns = { 
    \twosCommonForBbHorns
    \twosFirstEnding
    \twosSecondEnding
}
twosForEb = { 
    \twosCommonForEb
    \transpose c c, \twosFirstEnding
    \transpose c c \twosSecondEnding
}
twosForEbHorns = { 
    \twosCommonForEbHorns
    \twosFirstEnding
    \twosSecondEnding
}


lineCommon = \relative c'' { 
    r2 bf\xmp | df ef | e1 | ef2 df4 bf ~ | 
    bf2 \breath ef, | gf af | a1 | gs2 g4 ef4 ~ |
    ef2 \breath c | ef f | fs1\xmf | 
}
lineCommonHorns = \relative c'' { 
    r2 bf\xmp | df ef | e1 | ef2 df4 bf ~ | 
    bf2 \breath ef, | gf af | bff1 | af2 g4 ef4 ~ |
    ef2 \breath c | ef f | gf1\xmf | 
}
lineCommonForBbHorns = \relative c'' { 
    r2 bf\xmp | df ef | ff1 | ef2 df4 bf ~ | 
    bf2 \breath ef, | gf af | bff1 | af2 g4 ef4 ~ |
    ef2 \breath c | ef f | gf1\xmf | 
}
lineCommonHarmony = \relative c'' { 
    r2 af\xmp | g gf | g?2 fs | f2 f4 g ~ | 
    g2 \breath df | ef cf | c? ds | e b4 c4 ~ |
    c2 \breath bf | a b | as2\xmf a | 
}
lineCommonHarmonyHorns = \relative c'' { 
    r2 af\xmp | g gf | g?2 fs | f?2 f4 g ~ | 
    g2 \breath df | ef cf | c? ef | ff b,4 c4 ~ |
    c2 \breath bf | a? cf |  bf2\xmf a | 
}
lineCommonForEb = \relative c'' { 
    r2 bf | df ef | e1 | ef2 df4 bf ~ | 
    bf2 \breath ef, | gf af | bff1 | af2 g4 ef4 ~ |
    ef2 \breath c | ef f | gf1 |
}
lineCommonHarmonyForEb = \relative c'' { 
    r2 af\xmp | g gf | g?2 fs | f2 f4 g ~ | 
    g2 \breath df | ef cf | c? ef | ff b,4 c4 ~ |
    c2 \breath bf | a cf | bf2\xmf a | 
}
lineCommonHarmonyForEbHorns = \relative c'' { 
    r2 af\xmp | g gf | aff2 gf | f2 f4 g ~ | 
    g2 \breath df | ef cf | c? ef | ff b,4 c4 ~ |
    c2 \breath bf | a cf | bf2\xmf bff | 
}
lineFirstEnding = \relative c' { 
    d1\xmf ||
}
lineFirstEndingHorns = \relative c' { 
    eff1\xmf ||
}
lineFirstEndingHarmony = \relative c { 
    fs2\xmf f
}
lineFirstEndingHarmonyHorns = \relative c { 
    gf2\xmf f
}
lineSecondEnding = \relative c' { 
    d2.\xmf
}
lineSecondEndingHarmony = \relative c { 
    fs2\xmf f4
}

line = { 
    \lineCommon 
    \lineFirstEnding
}
lineHorns = { 
    \lineCommonHorns
    \lineFirstEnding
}
lineHarmony = {
    \lineCommonHarmony 
    \lineFirstEndingHarmony
}
lineHarmonyHorns = {
    \lineCommonHarmonyHorns 
    \lineFirstEndingHarmony
}
lineForEb = { 
    \lineCommonForEb
    \lineFirstEnding
}
lineForBbHorns = { 
    \lineCommonForBbHorns
    \lineFirstEndingHorns
}
lineForEbHorns = { 
    \lineCommonForBbHorns
    \lineFirstEnding
}
lineHarmonyForEb = {
    \lineCommonHarmonyForEb
    \lineFirstEndingHarmony
}
lineHarmonyForEbHorns = {
    \lineCommonHarmonyForEbHorns
    \transpose c, c \lineFirstEndingHarmonyHorns
}

melody = \relative c' {
    \head
    \twos
    \line
}
melodyHorns = \relative c' {
    \headHorns
    \twosHorns
    \transpose c, c \lineHorns
}
melodyForBb = \relative c' {
    \headForEb
    \twosForBb
    \lineForEb
}
melodyForBbHorns = \relative c' {
    \headForEbHorns
    \twosForBbHorns
    \lineForBbHorns
}
melodyForEb = \relative c' {
    \headForEb
    \twosForEb
    \lineForEb
}
melodyForEbHorns = \relative c' {
    \headForEbHorns
    \twosForEbHorns
    \lineForBbHorns
}
harmony = {
    s8 || s1*12 || s1*2 ||
    s1*12 || s1 ||
    \lineHarmony
}
harmonyHorns = {
    s8 || s1*12 || s1*2 ||
    s1*12 || s1 ||
    \lineHarmonyHorns
}
harmonyForEb = {
    s8 || s1*12 || s1*2 ||
    s1*12 || s1 ||
    \lineHarmonyForEb
}
harmonyForEbHorns = {
    s8 || s1*12 || s1*2 ||
    s1*12 || s1 ||
    \lineHarmonyForEbHorns
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    %\repeat unfold 10 { \skip 1 }
}


topline = \relative c'' {
}

midline = \relative c' {
}

basslineCommon = \relative c {
    bf4 4 af4 4 | ef bf gf' af | a cs, d fs | f af bf d | 
    ef4 df bf g | df'4 cf bf a | af ef' b fs | e fs g d | 
    c4 g' ef c | cs f a g |
}
basslineFirstEnding = \relative c, {
    fs cs' a e' | d b a f |
}
bassline = \relative c {
    \basslineCommon
    \basslineFirstEnding
}
basslineCoda = \relative c {
   fs cs' a e' | d b a f |
   fs gs a cs | d fs f bf |
}


\layout {
    \context { 
        \Staff \RemoveAllEmptyStaves 
    }
}

\include "ly/ily/layout-songs.ily"

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "in-Bb-for-C"
    \header {
        poet = "    Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(original key)"
    }
    \score {
        \new StaffGroup <<
            \new ChordNames \transpose c c  { 
                \chordsSong 
                %\codaChords
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \harmony
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }
    \score {
        \new StaffGroup <<
            \new ChordNames \transpose c c  { 
                \codaChords
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(original key)"
    }
    \score {
        \new StaffGroup \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \chordsSongForBb
                %\codaChords
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melodyForBb
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \transpose c, c \harmonyForEb
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }
    \score {
        \new StaffGroup \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \codaChordsForEb
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaForEb
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Bb-for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(original key)"
    }
    \score {
        \new StaffGroup \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \chordsSongForEb 
                %\codaChords
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melodyForEb
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \harmonyForEb
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }
    \score {
        \new StaffGroup \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \codaChordsForEb
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaForEb
                >>
            }
        >>
    }
}


\book {
  \bookOutputSuffix "in-G-for-C"
    \header {
        poet = "    Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(horns key)"
    }
    \score {
        \new StaffGroup \transpose bf g <<
            \new ChordNames \transpose c c  { 
                \chordsSongHorns
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melodyHorns
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \transpose c, c \harmonyHorns
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }
    \score {
        \new StaffGroup  \transpose bf g <<
            \new ChordNames \transpose c c  { 
                \codaChordsHorns
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaForEb
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
        subtitle = "(horns key)"
    }
    \score {
        \new StaffGroup \transpose bf, c  \transpose bf g <<
            \new ChordNames \transpose c c  { 
                \chordsSongForBbHorns
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melodyForBbHorns
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \transpose c, c \harmonyForEbHorns
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }
    \score {
        \new StaffGroup \transpose bf, c  \transpose bf g <<
            \new ChordNames \transpose c c  { 
                \codaChordsForBbHorns
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaForHorns
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-G-for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(horns key)"
    }
    \score {
        \new StaffGroup \transpose ef, c  \transpose bf g <<
            \new ChordNames \transpose c c  { 
                \chordsSongForEbHorns
                %\codaChords
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melodyForEbHorns
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \harmonyForEbHorns
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }
    \score {
        \new StaffGroup \transpose ef c  \transpose bf g <<
            \new ChordNames \transpose c c  { 
                \codaChordsForEbHorns
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \melodyCodaForHorns
                >>
            }
        >>
    }
}


\book {
    \bookOutputSuffix "sound"
    \score {
        <<
            \new ChordNames \transpose c c,  { 
                s1*8

                % "Head"
                <>\mp
                \formChords
                \formChords

                % "Solos"
                <>\p
                \formChords
                \formChords

                % "Twos"
                <>\mf
                \formChords
                \formChords

                % "Out"
                <>\mf
                \formChords
                <>\f
                \formChordsCommon

                <>\ff
                \codaChords
            }
            \new Staff \transpose c c { 
                \tempo 4=168
                \time 4/4
                s1*7
                s2

            }
            \new Staff \transpose c c { 
                s1*8

                <>\mf
                \bassline
                \bassline

                <>\mp                
                \bassline
                \bassline
                
                <>\mf
                \bassline
                \bassline
                
                <>\f
                \bassline
                \basslineCommon

                <>\ff
                \basslineCoda
            }
        >>
        \midi { }
    }
}



