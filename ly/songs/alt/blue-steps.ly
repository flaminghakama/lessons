\version "2.19.81"

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
for file in pdf/songs/alt/blue-steps*pdf ; do open -a Preview $file ; done
mv blue-steps*.midi midi

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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
    \partial 4*2
    s2 
    \startSectionNoBarline "Intro"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*3 
    } 
    \alternative { 
        { s1 \bar ":|]" }
        { s1 \break }
    }

    \startSectionNoBarline "Head"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*3 
    } 
    \alternative { 
        { s1 \bar ":|]" }
        { s1 \break }
    }

    \startSectionNoBarline "Solos"
    \bar "[|:"
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

    \startSectionNoBarline "Twos"
    \bar ":|][|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*3 
    }
    \alternative { 
        { s1 \bar ":|]" \break }
        { s1 }
    }

    \startSectionNoBarline "Out"
    \bar ":|][|:"
        s1*4 \break
        s1*4 \break
        s1*2 \toCoda s1*2 \bar ":|]" \break 
}
structureCoda = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( -12  . -1 ) 
    \once \override Score.RehearsalMark #'font-size = #8
    \mark \markup { \musicglyph #"scripts.coda" }

    \key bf \major
    %\hideTimeSignature
    \time 4/4
    s1*4 \bar "|."
}


chordsSecondEnding = \chordmode { 
    d2:maj7 f:7 ||
}

formChordsForC = \chordmode {
    bf2:7 f:1.3.5.7.8+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | gs2:m7.7+ b:m7 | e:7 g:aug7 | 
    c1:m7 | f:aug7/cs | fs2:7 a:7 | d:maj7 f:7 ||
}

formChordsCommon = \chordmode {
    bf2:7 bf:7/af | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:m7.7+ b:m7 | e:7 g:aug7 | 
    c1:m7 | f:aug7/cs | 
}
formChordsFirstEnding = \chordmode {
    fs2:7 a:7 | d:maj7 f:7 ||
}
formChords = \chordmode {
    \formChordsCommon
    \formChordsFirstEnding
}

formChordsForBb = \chordmode {
    bf2:7 ef:1.3.5.7.8+.10+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:m7.7+ cf:m7 | ff:7 g:aug7 | 
    c1:m7 | f:aug7/df | gf2:7 a:7 | d:maj7 f:7 ||
}

formChordsForEb = \chordmode {
    bf2:7 af:1.3.5.7.8+.10+.12+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:m7.7+ cf:m7 | ff:7 g:aug7 | 
    c1:m7 | f:aug7/df | gf2:7 a:7 | d:maj7 f:7 ||
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
    s2
    \formChordsForC \chordsSecondEnding  
    \formChordsForC \chordsSecondEnding  
    \formChordsForC \chordsSecondEnding
    \formChordsForC \chordsSecondEnding 
    \formChordsForC
}

chordsSongForBb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s2
    \formChordsForBb \chordsSecondEnding 
    \formChordsForBb \chordsSecondEnding 
    \formChordsForBb \chordsSecondEnding
    \formChordsForBb \chordsSecondEnding 
    \formChordsForBb
}

chordsSongForEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s2
    \formChordsForEb \chordsSecondEnding 
    \formChordsForEb \chordsSecondEnding 
    \formChordsForEb \chordsSecondEnding 
    \formChordsForEb \chordsSecondEnding 
    \formChordsForEb
}

introCommon = \relative c'' { 
    r8 bf\xmf df [ ef ] ||
    r8 bf df [ ef ]  r bf df [ ef ] | r bf df [ ff ]  ef df bf af | 
    g a g4-. a-- g8 f | r2 

    r8 bf\xmf df [ ef ] |
    r8 bf df [ ef ]  r bf df [ ef ] | r bf df [ ff ]  ef df bf af | 
    fs gs fs4-. gs-- fs8 e | r2 

    r8 g\xmf bf [ c ] |
    r8 g bf [ c ]  r g bf [ c ] | r g bf [ df ]  c bf g f | 
    e fs e4-. fs-- e8 d |  
}
introFirstEnding = \relative c'' { 
    r2 r8 bf\xmf df [ ef ] ||  
}
introSecondEnding = \relative c' { 
    r2  
}
introCommonForEb = \relative c'' { 
    r8 bf\xmf df [ ef ] ||
    r8 bf df [ ef ]  r bf df [ ef ] | r bf df [ ff ]  ef df bf af | 
    g a g4-. a-- g8 f | r2 

    r8 bf\xmf df [ ef ] |
    r8 bf df [ ef ]  r bf df [ ef ] | r bf df [ ff ]  ef df bf af | 
    gf af gf4-. af-- gf8 ff | r2 

    r8 g\xmf bf [ c ] |
    r8 g bf [ c ]  r g bf [ c ] | r g bf [ df ]  c bf g f | 
    e fs e4-. fs-- e8 d |  
}

intro = {
    \introCommon
    \introFirstEnding
    \introSecondEnding
}
introForEb = {
    \introCommonForEb
    \introFirstEnding
    \introSecondEnding
}

headCommon = \relative c' { 
    r8 f\xmf af [ bf ] ||
    r8 bf df [ ef ] r2 | r4 ff->\xf ef8 df r af\xmf | g a g4-. a-- g8 f | r2 

    r8 f af [ bf ] |
    r8 bf df [ ef ] r2 | \tuplet 3/2 { r4 f->\xf ff } ef4-. r8 gs,\xmf | fs8 gs fs4-. gs-- fs8 e | r2 

    r8 g bf [ c ] |
    r8 c ef [ f ] r2 | r8 cs->\xf r a ~ 4. f8\xmf | e8 fs e4-. fs-- e8 d | 
}
headFirstEnding = \relative c' { 
    r2 r8 f\xmf af [ bf ] ||  
}
headSecondEnding = \relative c' { 
    R1 ||  
}
headCommonForEb = \relative c' { 
    r8 f af [ bf ] ||
    r8 bf df [ ef ] r2 | r4 ff-> ef8 df r af | g a g4-. a-- g8 f | r2 

    r8 f af [ bf ] |
    r8 bf df [ ef ] r2 | \tuplet 3/2 { r4 f-> ff } ef4-. r8 af, | gf8 af gf4-. af-- gf8 ff | r2 

    r8 g bf [ c ] |
    r8 c ef [ f ] r2 | r8 cs-> r a ~ 4. f8 | e8 fs e4-. fs-- e8 d? | 
}

head = {
    \headCommon
    \headFirstEnding
    \headSecondEnding
}
headForEb = {
    \headCommonForEb
    \headFirstEnding
    \headSecondEnding
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
    r2 
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
    \transpose c, c \twosFirstEnding
    \transpose c c,, \twosSecondEnding
}


lineCommon = \relative c'' { 
    r2 bf\xmp | df ef | e1 | ef2 df4 bf ~ | 
    bf2 ef, | gf af | bf?1 | gs2 g4 ef4 ~ |
    ef2 c | ef f | fs1\xmf | 
}
lineCommonHarmony = \relative c'' { 
    r2 af\xmp | g gf | g2 fs | f2 f4 g ~ | 
    2 g, | ef' f | ef d | 2 b4 c4 ~ |
    2 bf | a b | as2\xmf a | 
}
lineCommonForEb = \relative c'' { 
    r2 bf | df ef | e1 | ef2 df4 bf ~ | 
    bf2 ef, | gf af | bf?1 | af2 g4 ef4 ~ |
    ef2 c | ef f | gf1 |
}
lineCommonHarmonyForEb = \relative c'' { 
    r2 af\xmp | g gf | g2 fs | f2 f4 g ~ | 
    2 g, | ef' f | ef d | 2 b4 c4 ~ |
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

line = \relative c'' { 
    << 
        { 
            \lineCommon 
            \lineFirstEnding
            \lineSecondEnding
        } \\ {
            \lineCommonHarmony 
            \lineFirstEndingHarmony
            \lineSecondEndingHarmony
        }
    >>
}
lineForEb = \relative c'' { 
    << 
        { 
            \lineCommonForEb
            \lineFirstEnding
            \lineSecondEnding
        } \\ {
            \lineCommonHarmonyForEb
            \lineFirstEndingHarmony
            \lineSecondEndingHarmony
        }
    >>
}

outCommon = \relative c'' { 
    r4 r8 f->\xf || 
    r8 ef r bf df4-- ef-. | r2 ff8 ef df bf | a?4-- g8 fs8 r2 | r2 

    r4 r8 f'8 |
    r8 ef r bf  df4-> ef-. | r4 r8 ff8  r ef df [ bf ] | gs4-- g8 fs8 r2 | r4 r8 

    f' r ef r b | 
    d4-> c-. r2 | r2 ff8-> ef df bf |
}
outCommonForEb = \relative c'' { 
    r4 r8 f-> || 
    r8 ef r bf df4-- ef-. | r2 ff8 ef df bf | a?4-- g8 fs8 r2 | r2

    r4 r8 f' |
    r8 ef r bf df4-> ef-. | r4 r8 ff8 r ef df [ bf ] | af4-- g8 gf8 r2 | r4 r8 

    f' r ef r b | 
    d4-> c-. r2 | r2 ff8-> ef df bf |
}

outFirstEnding = \relative c'' {
    r2 r4 a8 cs-> | r4 r8 d-> r4 r8 f->
}
outFirstEndingForMidi = \relative c'' {
    r2 r4 a8 cs-> | r4 r8 d-> 
}
outCoda = \relative c' { 
    R1 | r2 r4 r8 e\xff ~ | 8 fs gs a ~ 8 b cs d ~ | 8 e fs g ~ 8 a bf4-^ ||
}
outCodaForEb = \relative c' { 
    R1 | r2 r4 r8 ff ~ | 8 gf af a ~ 8 b cs d ~ | 8 e fs g ~ 8 a bf4-^ ||
}

out = \relative c'' { 
    \outCommon
    \outFirstEnding
}
outForBb = \relative c'' { 
    \outCommonForEb
    \outFirstEnding
}
outForEb = \relative c'' { 
    \outCommonForEb
    \outFirstEnding
}

melody = \relative c' {
    \intro
    \head
    \line
    \twos
    \out
}
melodyForBb = \relative c' {
    \introForEb
    \headForEb
    \lineForEb
    \twosForBb
    \outForBb
}
melodyForEb = \relative c' {
    \introForEb
    \headForEb
    \lineForEb
    \twosForEb
    \outForEb
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
        <<
            \new ChordNames \transpose c c  { 
                \chordsSong 
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \with {
                \consists "Merge_rests_engraver"
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melody
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }

    \score { 
        \header { 
            title = ""
            poet = ""
            composer = ""
        }
        <<
            \new ChordNames \transpose c c { \codaChords }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \outCoda
                >>
            }            
        >>
        \layout {
            indent = 3\cm
            ragged-right = ##t
            ragged-last = ##t
            short-indent = .25\cm
        }    
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \chordsSongForBb   
                \include "ly/ily/chord-names-properties.ily"
            } 
            \new Staff \with {
                \consists "Merge_rests_engraver"
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melodyForBb
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }

    \score { 
        \header { 
            title = ""
            poet = ""
            composer = ""
        }
        \transpose bf, c <<
            \new ChordNames \transpose c c { \codaChordsForEb }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \outCodaForEb
                >>
            }            
        >>
        \layout {
            indent = 3\cm
            ragged-right = ##t
            ragged-last = ##t
            short-indent = .25\cm
        }    
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \chordsSongForEb 
                \include "ly/ily/chord-names-properties.ily"
            }
            \new Staff \with {
                \consists "Merge_rests_engraver"
            } \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structure
                    \melodyForEb
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
        >>
    }

    \score { 
        \header { 
            title = ""
            poet = ""
            composer = ""
        }
        \transpose ef c <<
            \new ChordNames \transpose c c { \codaChordsForEb }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Stem.length-fraction = #(magstep 1.2)
                \new Voice = "lead" <<
                    \structureCoda
                    \outCodaForEb
                >>
            }            
        >>
        \layout {
            indent = 3\cm
            ragged-right = ##t
            ragged-last = ##t
            short-indent = .25\cm
        }    
    }
}

\book {
    \bookOutputSuffix "sound"
    \score {
        <<
            \new ChordNames \transpose c c,  { 
                s1*8
                % "Intro"
                <>\mf
                \formChords
                \formChords

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
                \introCommon
                r2
                \introCommon 
                r2

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
                <>\p
                \bassline
                \bassline

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



