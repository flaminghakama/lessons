\version "2.23.2"

titleLeft = "Blue"
titleRight = "Steps"
title = "Blue Steps"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm blue-steps*pdf
lilypond ly/songs/alt/blue-steps.ly
mv blue-steps*.pdf  pdf/songs/alt
#for file in pdf/songs/alt/blue-steps*pdf ; do open -a Preview $file ; done
mv blue-steps*.midi midi

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #22

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #24

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \key bf \major
    \tempo 4=168
    \time 4/4
    \partial 8*1
    s8

    \startSectionNoBarline "Head"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*2
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
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*4
    }
    \bar ":|]" 
}

chordsLastBar = \chordmode { 
    d2:maj7 f:7 ||
}
chordsLastTwoBars = \chordmode { 
    fs2:7 a:7 | \chordsLastBar ||
}
chordsLastTwoBarsForEb = \chordmode { 
    gf2:7 a:7 | \chordsLastBar ||
}

formChordsCommon = \chordmode {
    bf2:7 bf:7/af | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:m7.7+ b:7 | e:maj7 g:7 | 
    c1:m7 | f:aug7/cs | 
}
formChords = \chordmode {
    \formChordsCommon
    \chordsLastTwoBars
}
formChordsForBb = \chordmode {
    bf2:7 ef:1.3.5.7.8+.10+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:m7.7+ cf:7 | ff:maj7 g:7 | 
    c1:m7 | f:aug7/df | \chordsLastTwoBarsForEb
}
formChordsForEb = \chordmode {
    bf2:7 af:1.3.5.7.8+.10+.12+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:m7.7+ cf:7 | ff:maj7 g:7 | 
    c1:m7 | f:aug7/df | \chordsLastTwoBarsForEb
}

codaChords = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    fs2:7 a:7 | d:maj7.7+ f2:7 | fs2:7 a:7 | d:maj7.7+ f4:7 bf:6 ||
}
codaChordsForEb = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    gf2:7 a:7 | d:maj7.7+ f:7 | gf2:7 a:7 | d:maj7.7+ f4:7 bf:6 ||
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

chordsSongForBb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8
    \formChordsForBb \chordsLastTwoBars 
    \formChordsForBb \chordsLastBar
    \formChordsForBb
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

headCommon = \relative c'' { 
    f->\xf || 
    r8 ef r bf df4-- ef-. | r2 ff8 ef df bf | a?4-- g8 fs8 r2 | r2 

    r4 r8 f'8 |
    r8 ef r bf  df4-> ef-. | r4 r8 ff8  r ef df [ bf ] | gs4-- g8 fs8 r2 | r4 r8 

    f' r ef r b | 
    d4-> c-. r2 | r2 ff8-> ef df bf |
}
headCommonForEb = \relative c'' { 
    f-> || 
    r8 ef r bf df4-- ef-. | r2 ff8 ef df bf | a?4-- g8 fs8 r2 | r2

    r4 r8 f' |
    r8 ef r bf df4-> ef-. | r4 r8 ff8 r ef df [ bf ] | af4-- g8 gf8 r2 | r4 r8 

    f' r ef r b | 
    d4-> c-. r2 | r2 ff8-> ef df bf |
}

headFirstEnding = \relative c'' {
    r2 r4 a8 cs-> | r4 r8 d-> r4 r8 f->
}
headFirstEndingForMidi = \relative c'' {
    r2 r4 a8 cs-> | r4 r8 d-> 
}
headCoda = \relative c' { 
    R1 | r2 r4 r8 e\xff ~ | 8 fs gs a ~ 8 b cs d ~ | 8 e fs g ~ 8 a bf4-^ ||
}
headCodaForEb = \relative c' { 
    R1 | r2 r4 r8 ff ~ | 8 gf af a ~ 8 b cs d ~ | 8 e fs g ~ 8 a bf4-^ ||
}

head = \relative c'' { 
    \headCommon
    \headFirstEnding
    R1 | r2 r4 
}
headForBb = \relative c'' { 
    \headCommonForEb
    \headFirstEnding
    R1 | r2 r4 
}
headForEb = \relative c'' { 
    \headCommonForEb
    \headFirstEnding
    R1 | r2 r4 
}

twosFirst = \relative c' { 
    r8 d\xmp ~ ||
    d8 ef f g ~  8 af bf c ~ | 8 df ef ff ~ 8 gf af a | R1 | r2 
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
twosFirstEnding = \relative c' { 
    r2 r4 r8 d\xmp \laissezVibrer |
}
twosSecondEnding = \relative c' { 
    R1 
}
twosThirdCommonForEb = \relative c' { 
    r4 r8 f\xf ~ | 
    f8 g a bf ~ 8 c d ef ~ | 8 f g a ~ 8 cf df ef | R1 |
}

twosCommon = { 
    \twosFirst
    \twosSecond
    \twosThirdCommon
}
twosCommonForBb = { 
    \twosFirst
    \twosSecond
    \twosThirdCommonForEb
}
twosCommonForEb = { 
    \transpose c c, \twosFirst
    \twosSecondForEb
    \transpose c c, \twosThirdCommonForEb
}
twos = { 
    \twosCommon
    \twosFirstEnding
    \twosSecondEnding
}
twosForBb = { 
    \twosCommonForBb
    \twosFirstEnding
    \twosSecondEnding
}
twosForEb = { 
    \twosCommonForEb
    \transpose c c, \twosFirstEnding
    \transpose c c \twosSecondEnding
}


lineCommon = \relative c'' { 
    r2 bf\xmp | df ef | e1 | ef2 df4 bf ~ | 
    bf2 ef, | gf af | bf?1 | gs2 g4 ef4 ~ |
    ef2 c | ef f | fs1\xmf | 
}
lineCommonHarmony = \relative c'' { 
    r2 af\xmp | g gf | g2 fs | f2 f4 g ~ | 
    2 g | ef f | g fs | e b4 c4 ~ |
    2 bf | a b | as2\xmf a | 
}
lineCommonForEb = \relative c'' { 
    r2 bf | df ef | e1 | ef2 df4 bf ~ | 
    bf2 ef, | gf af | bf?1 | af2 g4 ef4 ~ |
    ef2 c | ef f | gf1 |
}
lineCommonHarmonyForEb = \relative c'' { 
    r2 af\xmp | g gf | g2 fs | f2 f4 g ~ | 
    2 g | ef f | ef d | 2 b4 c4 ~ |
    2 bf | a b | bf2\xmf a | 
}
lineFirstEnding = \relative c' { 
    d1\xmf ||
}
lineFirstEndingHarmony = \relative c { 
    fs2\xmf f
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
lineHarmony = {
    \lineCommonHarmony 
    \lineFirstEndingHarmony
}
lineForEb = { 
    \lineCommonForEb
    \lineFirstEnding
}
lineHarmonyForEb = {
    \lineCommonHarmonyForEb
    \lineFirstEndingHarmony
}

melody = \relative c' {
    \head
    \twos
    \line
}
melodyForBb = \relative c' {
    \headForEb
    \twosForBb
    \lineForEb
}
melodyForEb = \relative c' {
    \headForEb
    \twosForEb
    \lineForEb
}
harmony = {
    s8 || s1*12 || s1*2 ||
    s1*12 || s1 ||
    \lineHarmony
}
harmonyForEb = {
    s8 || s1*12 || s1*2 ||
    s1*12 || s1 ||
    \lineHarmonyForEb
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
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Lead Sheet"
        instrumentName = \poet
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
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
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
                    \harmonyForEb
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
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

                \headCommon
                r2
                \headCommon 
                \headSecondEnding

                \lineCommon
                \lineFirstEnding
                << 
                    { 
                        \lineCommon 
                        \lineSecondEnding
                    } \\ {
                        \lineCommonHarmony 
                        \lineSecondEndingHarmony
                    }
                >>
                \twosCommon
                r2. 
                \twosCommon
                r2
                \outCommon
                \outFirstEndingForMidi
                \outCommon
                \outCoda
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



