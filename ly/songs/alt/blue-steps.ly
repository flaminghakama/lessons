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
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

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
    \tempo 4=164
    \time 4/4
    \partial 4*2
    s2 
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
    s1*4 \break
    s1*4 \break
    s1*4   

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

formChordsForC = \chordmode {
    bf2:7 f:1.3.5.7.8+ | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:m7.7+ b:m7 | e:7 g:aug7 | 
    c1:m7 | f:aug7/cs | fs2:7 a:7 | d:maj7 f:7 ||
}

formChords = \chordmode {
    bf2:7 bf:7/af | ef2:7 gf:7 | a:7 d:7 | f:m7 bf:7 |
    ef1:7 | df:7 | af2:m7.7+ b:m7 | e:7 g:aug7 | 
    c1:m7 | f:aug7/cs | fs2:7 a:7 | d:maj7 f:7 ||
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
    \formChords d2:maj7 f:7 
    \formChords
    \formChords d2:maj7 f:7
    \formChords
}

chordsSongForBb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s2
    \formChordsForBb d2:maj7 f:7
    \formChordsForBb
    \formChordsForBb d2:maj7 f:7
    \formChordsForBb
}

chordsSongForEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s2
    \formChordsForEb d2:maj7 f:7
    \formChordsForEb 
    \formChordsForEb d2:maj7 f:7
    \formChordsForEb
}

head = \relative c' { 
    r8 f af [ bf ] ||
    r8 bf df [ ef ] r2 | r4 ff-> ef8 df r af | g a g4-. a-- g8 f | r2 

    r8 f af [ bf ] |
    r8 bf df [ ef ] r2 | \tuplet 3/2 { r4 f-> ff } ef4 r8 af, | gf8 af gf4-. gs-- fs8 e | r2 

    r8 g bf [ c ] |
    r8 c ef [ f ] r2 | r8 cs-> r a ~ 4. f8 | e8 fs e4-. fs-- e8 d | 
}
headFirstEnding = \relative c' { 
    r2 r8 f af [ bf ] ||  
}
headForEb = \relative c' { 
    r8 f af [ bf ] ||
    r8 bf df [ ef ] r2 | r4 ff-> ef8 df r af | g a g4-. a-- g8 f | r2 

    r8 f af [ bf ] |
    r8 bf df [ ef ] r2 | \tuplet 3/2 { r4 f-> ff } ef4 r8 af, | gf8 af gf4-. af-- gf8 ff | r2 

    r8 g bf [ c ] |
    r8 c ef [ f ] r2 | r8 cs-> r a ~ 4. f8 | ff8 gf ff4-. fs-- e8 d? | 
}


twosFirst = \relative c' { 
    r4 r8 d ~ ||
    d8 ef f g ~  8 af bf c ~ | 8 df ef ff ~ 8 gf af a | R1 | r2 
}
twosSecond = \relative c' { 
    r4 r8 g ~ | 
    g8 bf c df ~ 8 ef f gf ~ | 8 af bf cf ~ 8 c df ef | R1 | r2 
}
twosSecondForEb = \relative c' { 
    r4 r8 g ~ | 
    g8 bf c df ~ 8 ef f gf ~ | 8 af bf cf ~ 8 c df ef | R1 | r2 
}
twosThird = \relative c' { 
    r4 r8 f ~ | 
    f8 g a bf ~ 8 c d ef ~ | 8 f g a ~ 8 b cs ds | R1 | r2 r4 r8 d,, \laissezVibrer |
    r2
}
twosThirdForEb = \relative c' { 
    r4 r8 f ~ | 
    f8 g a bf ~ 8 c d ef ~ | 8 f g a ~ 8 cf df ef | R1 | r2 r4 r8 d,, \laissezVibrer |
    r2
}

twos = { 
    \twosFirst
    \twosSecond
    \twosThird
}
twosForBb = { 
    \twosFirst
    \twosSecondForEb
    \twosThirdForEb
}
twosForEb = { 
    \transpose c c, \twosFirst
    \twosSecondForEb
    \transpose c c, \twosThirdForEb
}


line = \relative c'' { 
    r2 bf | df ef | e1 | ef2 df4 bf ~ | 
    bf2 ef, | gf af | bf?1 | gs2 g4 ef4 ~ |
    ef2 c | ef f | fs1 | d2
}
lineForEb = \relative c'' { 
    r2 bf | df ef | e1 | ef2 df4 bf ~ | 
    bf2 ef, | gf af | bf?1 | af2 g4 ef4 ~ |
    ef2 c | ef f | gf1 | d2
}

outCommon = \relative c'' { 
    r4 r8 f || 
    r8 ef r bf df4 ef | r2 ff8 ef df bf | a?4 g8 fs8 r2 | r4 r8 

    f'8 r8 ef r bf | 
    df4 ef r2 | r4 r8 ff8 ef df cf bf | af4 g8 fs8 r2 | r4 r8 

    f' r ef r b | 
    d4 c r2 | r2 ff8 ef df bf |
}
outCommonForEb = \relative c'' { 
    r4 r8 f || 
    r8 ef r bf df4 ef | r2 ff8 ef df bf | a?4 g8 fs8 r2 | r4 r8 

    f'8 r8 ef r bf | 
    df4 ef r2 | r4 r8 ff8 ef df cf bf | af4 g8 gf8 r2 | r4 r8 

    f' r ef r b | 
    d4 c r2 | r2 ff8 ef df bf |
}

outFirstEnding = \relative c'' {
    r2 r4 a8 cs | r4 r8 d r4 r8 f
}
outCoda = \relative c' { 
    R1 | r2 r4 r8 e ~ | 8 fs gs a ~ 8 b cs d ~ | 8 e fs g ~ 8 a bf4-^ ||
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
    \head \headFirstEnding R1
    \line
    \twos
    \out
}
melodyForBb = \relative c' {
    \headForEb \headFirstEnding R1
    \lineForEb
    \twosForBb
    \outForBb
}
melodyForEb = \relative c' {
    \headForEb \headFirstEnding R1
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

bassline = \relative c {
    bf4 4 af4 4 | ef bf gf' af | a cs, d fs | f af bf d | 
    ef4 df bf g | df'4 cf bf a | af ef' b fs | e fs g d | 
    c4 g' ef c | cs f a g | fs cs' a e' | d b a f |
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
            \new Staff \transpose c c { 
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
            \new Staff \transpose c c { 
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
            \new Staff \transpose c c { 
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
                s2 
                \formChords
                \formChords
            }
            \new Staff \transpose c c { 
                \head r2
                \out
            }
            \new Staff \transpose c c { 
                s2 \bassline
                \bassline
            }
        >>
        \midi { }
    }
}



