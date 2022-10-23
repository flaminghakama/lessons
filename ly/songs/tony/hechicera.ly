\version "2.19.81"

titleLeft = "Hechi"
titleRight = "cera"
title = "Hechicera"
composerName = "Tony Martinez Trio"

%{

killPreview ; rm hechicera*pdf ;  lilypond ly/songs/tony/hechicera.ly  ; for file in hechicera*.pdf ; do op $file ; done  

killPreview
rm hechicera*pdf
lilypond ly/songs/tony/hechicera.ly
mv hechicera*.pdf pdf/songs/tony
for file in pdf/songs/tony/hechicera*.pdf ; do op $file ; done  

./bin/createIndexes.sh
git add . ; git commit -m"first draft of Tony" ; git push
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #17

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

%\include "ly/ily/layout-songs.ily"

\layout {
    \context {
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}

structure = \relative c' {

    \key d \major
    \tempo 4=220
    \time 4/4

    \startSection "Intro Drums"
    s1*4

    \startSection "Intro Sax"
    s1*4

    \startSection "Intro Conga"
    s1*8

    \startSection "Transition 1"
    s1*8

    \breakPart

    \startSection "A1"
    s1*8

    \pageBreakScore

    \startSection "Sax Fill"
    s1*2

    \startSection "A2"
    s1*8

    \startSection "Sax Fill"
    s1*4

    \startSection "B1"
    s1*8

    \startSection "Sax Fill"
    s1*4

    \pageBreakScore

    \startSection "B2"
    s1*8

    \startSection "Sax Fill"
    s1*4

    \pageBreakPart

    \startSection "Transition 2"
    s1*4

    \startSection "Pre-Chorus 1"
    s1*4

    \startSection "C1"
    s1*8

    \pageBreakScore

    \startSection "Pre-Chorus 2"
    s1*4

    \startSection "Occonal"
    s1*8

    \startSection "Montuno"
    s1*8


}


rehearsalMarkTweaksForC = \relative c' {

    %\override Score.RehearsalMark.self-alignment-X = #LEFT
    %\override Score.RehearsalMark #'extra-offset = #'( -4 . -5 )
    % "A"
}

rehearsalMarkTweaksForBb = \relative c' {
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' {
    \rehearsalMarkTweaksForC
}

chordsPreChorus = \chordmode {
    c1:7| e:m7.5- | a:7.9- | d2:m7 df:7 |    
}

chordsForm = \chordmode {
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    % Intro Drums
    s1*4
    % Intro Sax
    s1*4
    % Intro Conga
    s1*8
    % Transition
    s1*8

    % A1
    s1*8
    % Sax Fill
    s1*2

    % A2
    s1*8
    % Sax Fill
    s1*4

    % B1
    s1*8
    % Sax Fill
    s1*4

    % B2
    s1*8
    % Sax Fill
    s1*4

    % Transition
    b1:6 | s | s | s |    

    % Pre-Chorus
    \chordsPreChorus

    % C1
    fs1:7 | s | s | s |    
    b1:6 | s | b:7 | s |    

    % Pre-Chorus
    \chordsPreChorus

    % Occonal is double prechorus sax, then prechorus
    \chordsPreChorus
    \chordsPreChorus

    % Montuno
    s1*8


}

chordsFormForFlats= \chordmode {
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsForm
}

chordRhythm =\new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Quien i -- "ba a i" -- ma -- gi -- nar,
    Que u -- na tar -- de cual -- quie -- ra,
    Yo habr -- ía de en -- con -- trar,
    U -- na be -- lla he -- chi -- ce -- ra!

    De -- sa -- fian -- te ca -- min -- ar,
    De ca -- den -  cia sin i -- gual,
    Cómo si sus ca -- de -- ras,
    Dio -- sas del mun -- do fue -- ran!

    %[B]

    Qui -- so el des -- ti -- no que la ha -- ya -- ra,
    Esa tar -- de en un café,
    Y e -- lla con su en -- can -- to,
    Qui -- so que,
    Fue -- ra yo, o -- tro peón de su a -- je -- drez!

    % [C]
    Son -- rién -- do la miré!
    Y de es -- te mo -- do re -- pli -- qué,

    Per -- do -- ne us -- ted,
    La -- men --to de -- cep -- cio -- nar -- la,
    Pe -- ro no cre -- o yo,
    En la dio -- sa de su fal -- da!

    Ten -- go ten -- den -- cia ya,
    Di -- ga -- mos que a la hu -- mil -- dad,
    Y pre -- fie -- ro la bon -- dad,
    De las sim -- ples es -- tre -- llas!

}



melodyAOne = \relative c' {
    \accidentalStyle default
    \tuplet 3/2 4 { e8 g a b bf a } r2 | R1 |
    \tuplet 3/2 4 { a8 fs a fs fs f } r2 | r2 r4 \tuplet 3/2 4 { r4 d8  |
    e8 e a ~ a fs f ~ } 4. r8 | r2 r4 \tuplet 3/2 4 { r4 c8 |
    e8 c e ~ e c df } c4. r8 | R1 |  
}

melodyATwo = \relative c'' {
    \accidentalStyle default
    \tuplet 3/2 4 { g8 a b } b8 g16 a ~ a a b8 ~ 4 | R1 |
    \tuplet 3/2 4 { b8 b b  g8 4  a8 b4 ~ } b8 r8 | R1 |
    \tuplet 3/2 4 { b8 g fs  e e e } fs4. r8 | R1 |
    \tuplet 3/2 4 { fs4 e8  cs4 e8 ~  4 8  8 cs4 ~ } | cs4 r2. |
}

melodyBOne = \relative c'' {
    \accidentalStyle default
    \tuplet 3/2 4 { a4 e8  4 8  8 8 8  b'8 a4 } | r2 r4 \tuplet 3/2 4 { r4 c8 ~ |
    c8 8 ef  af,4 8 } af4. r8 | r2 r4 \tuplet 3/2 4 { r4 g8 ~ |
    g8 8 b ~  8 g a ~  4 e8  8 8 b' ~ } | b4. r8 r2 |
    fs8. e16 ds2 \tuplet 3/2 4 { r4 b8 | 8 8 fs' ~ 4 b,8 } b8 8 4 |  
}

melodyBTwo = \relative c'' {
    \accidentalStyle default
    \tuplet 3/2 4 { c4 b8  g4 8  8 8 8  c8 bf4 } | R1 |
    \tuplet 3/2 4 { c4 af8  bf4 g8  e f g ~ } g8 r8 | R1 |  
    \tuplet 3/2 4 { bf8 8 ef ~ 8 bf c ~  8 g4  f8 g c ~ } | c4. r8 r2 |
    \tuplet 3/2 4 { af4 g8 } f4 ~ 4 \tuplet 3/2 4 { r4 d8 | d8 8 af' ~  4 c,8  8 8 8 ~ } c4 |        
}

melodyPreChorus = \relative c'' {
    \accidentalStyle default
    \tuplet 3/2 4 { bf4 8  c4 g8  f g bf ~ } 4 | r2 r4 \tuplet 3/2 4 { r4 bf8 ~ |
    bf4 f8  8 bf g  c a bf ~ } bf4 | R1 |
}

melodyCOnePartOne = \relative c' {
    \accidentalStyle default
    \tuplet 3/2 4 { ef4 af8 ~  8 gf8 8 ~ } 4  \tuplet 3/2 4 { r4 af8 |
    gf8 8 8  df'4 8  } cf8 bf4 r8 |
    \tuplet 3/2 4 { bf8 8 8  8 a af ~ } 4 \tuplet 3/2 4 { r4 g8 } |
    g16 8 16  16 8 16 ~ 16 f8. r4 |  
}

melodyCOnePartTwo = \relative c' {
    \accidentalStyle default
    f8. d16 ~  16 ef8 f16 ~  16 16 8 ~ 8 r | r2 r4 r8 c |
    f8. ef16 ~ 16 c8 f16 ~  16 ef8 d16 ~ 8 r | r2 r4 r8. bf'16 ~ |
    bf16 g8 d'16 ~  16 bf8 c16 ~  16 b8 bf16 ~ 8 r | r2 r4 r8. bf,16 |
    ef4 ~  8 bf16 ef ~ 16 df8 16 ~  16 cf8. | R1 |  
}

melodyCTwoPartOne = \relative c' {
    \accidentalStyle default
    e8. c'16 ~  16 b8 as16 ~  8 r  r8. fs16 |
    e8 16 16  cs'8. b16  8 as4 r8 |
    \tuplet 3/2 4 { as8 8 8  8 8 a ~ } a4  r8. a16 |
    gs16 8 16  16 8 16 ~  16 g8. r4 |  
}

melodyCTWoPartTwo = \relative c' {
    \accidentalStyle default
    e8. c16 ~  16 d8 e16 ~ 16 16 8  r4 | r2 r4 r8 e |
    f8. d16 ~  8 f16 g ~  16 e8 ef16 ~ 8 r | r2 r4 r8. c'16 ~ |
    c16 af8 d16 ~  16 c8 d16 ~  16 c8 bf16 ~ 8 r | r2 r4 r8 bf, |
    ef4  r8 bf16 f' ~  16 ef8 d16 ~  16 c8. ~ | 2. r4 |
}

melody = \relative c' {
    % Intro Drums
    R1*4
    % Intro Sax
    R1*4
    % Intro Conga
    R1*8
    % Transition
    R1*8

    \melodyAOne
    R1*2
    \melodyATwo
    R1*4

    \melodyBOne
    R1*4
    \melodyBTwo
    R1*4

    \melodyPreChorus

    \melodyCOnePartOne
    \melodyCOnePartTwo

    \melodyCTwoPartOne
    % \melodyCTWoPartTwo
}



saxIntroLick = \relative c, {
    \accidentalStyle default
    r8 e16 ( f ||
    g4 ) r8. g16 r g8.  r8 e16 ( f |
    g4 ) r8. bf16 r g8.  r8 e16 ( f |
    g4 ) r8. g16 r g8.  r8 bf16 ( g |
    f2. )
}

saxIntro = \relative c, {
    \accidentalStyle default
    R1*3 | r2 r4
    \saxIntroLick
    \saxIntroLick
    \saxIntroLick r8 d ( |
   
    g4 ) r r2 | d1\mp\< ~ | 1 ~ | 1*3/4 s4\ff |
    d''1\p\< ~ | 1 ~ | 1\mf \> ~ | 2.*2/3 s4\p r4
}

saxAOne = \relative c, {
    \accidentalStyle default
    r2 r4  r8 e16 ( f |
    g4 ) r8. bf16 r g8.  r4 |
    r2 r4  r8 bf16 ( g |
    f2.. d8 |

    g4 ) r r  r8 e16 ( f |
    g4 ) r8. bf16 r g8.  r4 |
    r2 r4  r8 bf16 ( g |
    f2. ) \comp #1 |  
}

saxBOne = \relative c'' {
    \transpose c d \saxAOne
}

saxPreChorus = \relative c'' {
    \accidentalStyle default
    \comp #16
 }

saxCOnePartOne = \relative c' {
    \accidentalStyle default
    \comp #16
}

saxCOnePartTwo = \relative c' {
    \accidentalStyle default
    \comp #32
}

saxCTwoPartOne = \relative c' {
    \accidentalStyle default
    \comp #15
}

saxOcconal = \relative c {
    r8 bf16 c || e16 8 16 ~  16 8 16  e4  r8 e16 g |
    bf16 g8 e16 ~ 16 8 ef16  d4  r8. bf16 |
    a8 g'4. ~ 8 e cs bf |
    f4 c'8. af16 ~ af4

}

sax = \relative c' {

    \saxIntro

    \saxAOne
    \comp #7 r4
    \saxAOne
    \comp #15 r4

    \saxBOne
    \comp #15 r4
    \saxBOne
    \comp #15 r4

    \saxPreChorus

    <>\ppp

    \saxCOnePartOne
    <>\fff
    \saxCOnePartTwo

    <>\mf
    \saxCTwoPartOne

    <>\mp
    \saxOcconal
    \saxOcconal
    % \saxCTWoPartTwo
}

melodyForBb = \relative c' {
    \melody
}

melodyForEb = \relative c' {
    \melody
}

\book {
  \bookOutputSuffix "Lead-Sheet-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \keepWithTag #'(Part PDF) <<
            \new ChordNames \transpose c c {
                \chordsForm
            }
            % \new RhythmicStaff \with {
            %         \remove "Staff_symbol_engraver"
            %         \remove "Time_signature_engraver"
            %         \magnifyStaff #5/7
            %     } {
            %     \chordRhythm
            % }
            \new Staff = "voice" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne }
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Sax-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Saxophone (Concert)"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \keepWithTag #'(Part PDF) <<
            \new ChordNames \transpose c c {
                \chordsForm
            }
            % \new RhythmicStaff \with {
            %         \remove "Staff_symbol_engraver"
            %         \remove "Time_signature_engraver"
            %         \magnifyStaff #5/7
            %     } {
            %     \chordRhythm
            % }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \clef bass
                    \structure
                    \rehearsalMarkTweaksForC
                    \sax
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Score-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Score (Concert)"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \keepWithTag #'(Score PDF) <<
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \clef treble
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            \new ChordNames \transpose c c {
                \chordsForm
            }
            % \new RhythmicStaff \with {
            %         \remove "Staff_symbol_engraver"
            %         \remove "Time_signature_engraver"
            %         \magnifyStaff #5/7
            %     } {
            %     \chordRhythm
            % }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \clef bass
                    \structure
                    \rehearsalMarkTweaksForC
                    \sax
                >>
            }
        >>
    }
}