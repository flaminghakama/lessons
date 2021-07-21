\version "2.19.81"

titleLeft = "Sub"
titleRight = "version"
title = "Subversion"
composerName = "Elaine Paul Alt"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm subversion*pdf
lilypond ly/songs/alt/subversion.ly
mv subversion*.pdf  pdf/songs/alt
for file in pdf/songs/alt/subversion*pdf ; do open -a Preview $file ; done

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

\include "ly/ily/layout.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -6 . 0.6 )

    \key f \major
    \time 4/4
    \startSection "Intro Vamp"
    \bar "[|:"
    s1*4 \break
    \startSectionNoBarline "On Cue"
    \bar ":|]"
    s1*4 \break
    \startSectionNoBarline "Head"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        \bar "||"
        s1*4 \break
        s1*4
    }
    \bar ":|]" \pageBreak

    \startSectionNoBarline "Backgrounds I"
    s1*4 \break
    s1*4 \break
    \bar "||"
    s1*4 \break
    s1*4 \break

    \startSection "Backgrounds II"
    s1*4 \break
    s1*4 \break
    \bar "||"
    s1*4 \break
    s1*4
    \bar "|."

}

introChords = \chordmode {
    f1:7 | fs:aug7.9+ | f:7 | fs:aug7.9+ |
    f1:7 | ef:7 | df:7 | c:7 ||
}
introChordsForFlats = \chordmode {
    f1:7 | fs:aug7.9+ | f:7 | fs:aug7.9+ |
    f1:7 | ef:7 | df:7 | c:7 ||
}
formChords = \chordmode {
    f1:7.9+ | ef:7.13- | df:7 | bf:7 |
    af1:7 | b:7.9+ | bf:m7.9-.11+ | ef:1.4.5.7 ||

    af1:7 | gf:7 | e:7 | df:7 | 
    b1:7.5- | d:7.9+ | df:7 | gf:7 ||
}
formChordsForFlats = \chordmode {
    f1:7.9+ | ef:7.13- | df:7 | bf:7 |
    af1:7 | cf:7.9+ | bf:m7.9-.11+ | ef:7 ||

    af1:7 | gf:7 | ff:7 | df:7 | 
    cf1:7.5- | d:7.9+ | df:7 | gf:7 ||
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \introChords
    \formChords
    \formChords
    \formChords
}
chordsSongForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \introChordsForFlats
    \formChordsForFlats
    \formChordsForFlats
    \formChordsForFlats
}

intro = \relative c'' { 
    \override Staff.NoteHead.style = #'slash
    r8 bf r4 r2 | bf8. 16 r4 r2 | 
    r8 bf r4 r2 | bf8. 16 r4 r2 | 
    \revert Staff.NoteHead.style
    s1*4
}

head = \relative c'' { 
    r8 bf4.-> af f8 | cf'4-> af8 f ~ 4. ef8 |
    r8 bf' r af  cf af ( f ) af-- ~ | 2. r8 ef8 |

    r8 af ( ef ) [ gf ] ~ 4. d'8-> ~ | 8 b ( fs ) a ~  4. af8 |
    r8 cf \tuplet 3/2 { df8 ( ff df ~ } 8 ) cf r af ~ | 1 ||

    r8 af4.-> gf8 af r cf-> | r gf4. ef8 df r d ~ | 
    d8 gs d d'-> ~ 8 gs, d f-- ~ | 2 r8 fs r g | 

    gs4. b8 r b f [ d'-> ] | r f-> r d-> ~ 4 c | 
    df8-> 4. cf4 af8 gf ~ | 1 || 
}

headForFlats = \relative c'' { 
    r8 bf4.-> af f8 | cf'4-> af8 f ~ 4. ef8 |
    r8 bf' r af  cf af ( f ) af-- ~ | 2. r8 ef8 |

    r8 af ( ef ) [ gf ] ~ 4. d'8-> ~ | 8 cf ( gf ) bff ~  4. af8 |
    r8 cf \tuplet 3/2 { df8 ( ff df ~ } 8 ) cf r af ~ | 1 ||

    r8 af4.-> gf8 af r cf-> | r gf4. ef8 df4 eff8 ~ | 
    eff8 af eff eff'-> ~ 8 af, r eff? | f2-- r8 fs r g | 

    af4. cf8 r cf f, [ eff'-> ] | r f-> r d-> ~ 4 c | 
    df8-> 4. cf4 af8 gf ~ | 1 || 
}

backgroundsITenor = \relative c' { 
    d8 f2.. | r4 cf8 bf ~ 2 ~ | 1 | R1 | 
    R1 | r4 r8 a r4 r8 af-- ~ | 2 r | R1 ||

    af2 r | r8 af4. r2 | R1*2 |
    f4-- 4-. r r8 fs8 ~ | 2 r | R1 *2 ||
}

backgroundsIITenor = \relative c' { 
    r2 c | cf g ~ | 1 | R1 | 
    r2 c | b g  | f1 | R1 ||
    
    r2 af | gs1 ~ | 1 | R1 | 
    r2 gs | fs1 ~ | 1 ~ | 1 || 
}

backgroundsITrumpet = \relative c'' { 
    d8 f2.. | r4 cf8 bf ~ 2 ~ | 1 | R1 | 
    R1 | r4 r8 d r4 r8 e-- ~ | 2 r | R1 ||

    gf2 r | r8 ef4. r2 | R1*2 |
    d4-- 4-. r r8 c8 ~ | 2 r | R1 *2 ||
}
backgroundsIITrumpet = \relative c'' { 
    r2 c | cf g ~ | 1 | R1 | 
    r2 c | b g  | f1 | R1 ||
    
    r2 af | b1 ~ | 1 | R1 | 
    r2 gs | b1 ( | bf ~ | 1 ) || 
}

backgroundsIHorn = \relative c' { 
    R1 | df1 | cf | R1 | 
    R1 | r4 r8 g' r4 r8 cf-- ~ | 2 r | R1 ||

    cf2 r | r8 bf4. r2 | R1*2 |
    a4-- 4-. r r8 a8 ~ | 2 r | R1 *2 ||
}
backgroundsIIHorn = \relative c' { 
    r2 c | cf g ( | cf1 ) | R1 | 
    r2 c? | b g ( | df'1 ) | R1 ||
    
    r2 af | fs'1 ~ | 1 | R1 | 
    r2 gs, | f'1 ( ~  | 1 | ff ) || 
}

backgroundsITrombone = \relative c { 
    R1 | ef1 | g | R1 | 
    R1 | r4 r8 ds' r4 r8 df-- ~ | 2 r | R1 ||

    df2 r | r8 ff4. r2 | R1*2 |
    e4-- 4-. r r8 f8 ~ | 2 r | R1 *2 ||
}
backgroundsIITrombone = \relative c' { 
    r2 c | cf g ( | af1 ) | R1 | 
    r2 c | b g ( | af1 ) | R1 ||
    
    r2 af | cs1 ~ | 1 | R1 | 
    r2 gs | c1 (  | cf1 ~ | 1 ) || 
}

backgroundsIICombined = \relative c'' { 
    r2 c | cf g ~ | <g cf, af g>1 | R1 | 
    r2 c | b g  | <f df af>1 | R1 ||
    
    r2 af | <b fs cs gs>1 ~ | 1 | R1 | 
    r2 gs | <b f c fs,>1 ~ | <bf f cf fs,> ~ | <bf ff cf fs,> || 
}


\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
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
                <<
                    \structure
                    { 
                        \intro 
                        \head 
                        <<
                            \backgroundsITrumpet
                            \backgroundsIHorn
                            \backgroundsITrombone
                            \backgroundsITenor
                        >>
                        \backgroundsIICombined 
                    }
                    \noPageBreak
                >>
            }
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
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    { 
                        \transpose c b, \intro 
                        \headForFlats
                        << 
                            { \backgroundsITrumpet \backgroundsIITrumpet }
                            { \backgroundsITenor \backgroundsIITenor }
                        >>
                    }
                >>
            }
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
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    { 
                        \transpose c e, \intro 
                        \headForFlats
                        << 
                            { \backgroundsIHorn \backgroundsIIHorn }
                            { \backgroundsITrombone \backgroundsIITrombone }
                        >>
                    }
                >>
            }
        >>
    }
}
