\version "2.24.0"

titleLeft = "Desa"
titleRight = "finado"
titleFull = "Desafinado"
composerName = "A. C. Jobim"
lyricistName = "A. C. Jobim"
arranger = ""
copyright = ""

%{

killPreview ; rm desafinado*pdf ; lilypond ly/songs/standards/desafinado.ly ; for file in desafinado*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/desafinado*
lilypond ly/songs/standards/desafinado.ly 
mv desafinado*pdf pdf/songs/standards
for file in pdf/songs/standards/desafinado*pdf ; do op $file ; done 

git add . ; git commit -m"transposition" ; git push 
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

structure = \relative c' { 
    \key f \major
    \tempo 4=140
    \time 4/4

    \startSection "A"
    s1*16

    \startSection "A"
    s1*16 

    \startSection "B"
    s1*16

    \startSection "A"
    s1*20
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "A"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "A"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4
    
    \pageBreak 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "B"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "C"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    s1*4
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    f1:maj7 | s | g:7.11+ | s | 
    g1:m7 | c:7 | a:m7.5- | d:7.9- |
    g1:m7 | a:7.9- | d:7 | d:7.9- |
    g1:7.9- | s | gf:maj7 | c:7.9- || 

    f1:maj7 | s | g:7.11+ | s | 
    g1:m7 | c:7 | a:m7.5- | d:7.9- |
    g1:m7 | bf:m6 | f:maj7 | e:7.9- |
    a1:maj7 | af:aug7 | g:7 | gf:7 || 

    a1:maj7 | bf:dim7 | b:m7 | e:7 |
    a1:maj7 | c:maj7 | b:m7 | e:7 |
    c1:maj7 | cs:dim7 | d:m7 | g:7 |
    g1:m7 | ef:m6 | g:7 | gf:maj7 ||

    f1:maj7 | s | g:7.11+ | s | 
    g1:m7 | c:7 | a:m7.5- | d:7.9- |
    g1:m7 | bf:m6 | f:maj7 | d:m7 |
    g1:7 | s | bf:m7 | ef:9 | 
    g1:7 | g2:m7 c:7 | f1:6 | s2 c2:7 ||
}
chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    f1:maj7 | s | g:7.11+ | s | 
    g1:m7 | c:7 | a:m7.5- | d:7.9- |
    g1:m7 | a:7.9- | d:7 | d:7.9- |
    g1:7.9- | s | fs:maj7 | c:7.9- || 

    f1:maj7 | s | g:7.11+ | s | 
    g1:m7 | c:7 | a:m7.5- | d:7.9- |
    g1:m7 | bf:m6 | f:maj7 | e:7.9- |
    a1:maj7 | af:aug7 | g:7 | fs:7 || 

    a1:maj7 | bf:dim7 | b:m7 | e:7 |
    a1:maj7 | c:maj7 | b:m7 | e:7 |
    c1:maj7 | cs:dim7 | d:m7 | g:7 |
    g1:m7 | ef:m6 | g:7 | fs:maj7 ||

    f1:maj7 | s | g:7.11+ | s | 
    g1:m7 | c:7 | a:m7.5- | d:7.9- |
    g1:m7 | bf:m6 | f:maj7 | d:m7 |
    g1:7 | s | bf:m7 | ef:9 | 
    g1:7 | g2:m7 c:7 | f1:6 | s2 c2:7 ||
}

melodyAOne = \relative c' { 
    r4 c8 d  e f4 e8 ~ | 4. d8 cs d4 f8 ~ | 
    f8 cs4 8 ~ 2 | R1 |

    r8 d4 e8 f g4 f8 ~ | 4 e8 ds ~ 4 e8 c' ~ | 
    c8 ef,4 8 ~ 2 | R1 | 

    r8 d c' [ bf ]  a8 g4 bf8 ~ | 8 a ds,4 ~ 8 e4 fs8 ~ |
    fs8 a fs4 ~ 8 d4 ef8 ~ | 4 2 r4 | 

    r8 af4 g8 f d4 af'8 ~ | 8 g f8 8  d f4 df8 ~ | 
    df8 4. r2 | R1 ||
}
melodyAOneForFlats = \relative c' { 
    r4 c8 d  e f4 e8 ~ | 4. d8 cs d4 f8 ~ | 
    f8 cs4 8 ~ 2 | R1 |

    r8 d4 e8 f g4 f8 ~ | 4 e8 ds ~ 4 e8 c' ~ | 
    c8 ef,4 8 ~ 2 | R1 | 

    r8 d c' [ bf ]  a8 g4 bf8 ~ | 8 a ds,4 ~ 8 e4 fs8 ~ |
    fs8 a fs4 ~ 8 d4 ef8 ~ | 4 2 r4 | 

    r8 af4 g8 f d4 af'8 ~ | 8 g f8 8  d f4 cs8 ~ | 
    cs8 4. r2 | R1 ||
}
melodyATwo = \relative c' { 
    r8 c4 d8  e f4 e8 ~ | 4 d8 ( 8 cs8 ) d4 8 | 
    f4 cs8 8 ~ 2 | R1 |

    r8 d4 e8 f g4 f8 ~ | 8 e f ds ~ 4 e8 c' ~ | 
    c8 ef,4 8 ( ~ 4 4 ~  | 2 ) r | 

    r8 c'4 bf8  a8 g4 bf8 ~ | 8 a g f  g f4 g8 ~ | 
    g2 r | R1 | 

    r8 e4 fs8  e fs4 e8 ~ | 4 d cs d8 e ~ | 
    e4 8 8 8 4. | r2 r4 r8 
}
melodyB = \relative c' { 
    cs8 || 
    e8 fs4 e8 ~ 8 fs4 e8 ~ | 8 d cs4  d8 e4 b8 | 
    e4. 8 r2 | r2 r4 r8 gs |

    e8 fs4 gs8 ~ 8 a b4 ~ | 8 a cs, d ~ 8 e4. ~ | 
    e4 8 fs ~ 8 e4. | r2 r4 r8 e |

    g8 a4 g8 ~ 8 a4 g8 ~ | 8 f e f  g d4 g8 ~ | 
    g2 r | r2 \tuplet 3/2 { r4 g a } | 

    bf4 a8 bf8 ~ 8 a c4 ~ | 8 bf a bf ~ 8 g4. ~ | 
    g2 r | r2 r4 r8
}
melodyC = \relative c' { 
    c8 ~ || 
    c8 d e4 f8 e4.| d8 cs4. ~ 8 d4 f8 ~ | 
    f8 cs8 8 8 2 | R1 |

    r8 d4 e8 f g4 f8 ~ | 8 e ds e ~ 4. d'8 ~ | 
    d8 df c b ~ 8 bf4 d8 ~ | 2 r4 a4 |

    c4 bf8 a ~ 8 g b4 ~ | 8 a g f ~ 8 a4 e8 | 
    e8 8 g2. | r2 r4 d8 e |

    f8. 16  8 8  8 4 8 ~ | 8 8 8 d \tuplet 3/2 { d8 8 e } f4 ~ | 
    8 8 8 8 ~ 8 c'4 bf8 ~ | 2 r4 r8 e, | 

    f8 8 8 8  8 4 8 ~ | 8 e ds4 ~ 8 e4 g8 ~ | 
    g8 f d c ~ 8 f4. | R1 ||        

}

melody = {
    \melodyAOne
    \melodyATwo
    \melodyB
    \melodyC
}
melodyForFlats = \relative c'' { 
    \melodyAOneForFlats
    \melodyATwo
    \melodyB
    \melodyC
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Se vo -- cê dis -- ser que eu de -- sa -- fi -- no, 
    Sai -- ba "que is" -- "to em" mim pro -- vo -- ca imen -- sa dor
    Só pri -- vi -- le -- gi -- a -- dos têm ou -- vi -- do igual ao se -- u
    Eu pos -- suo a -- pe -- nas o que Deus me de -- u

    Se vo -- cê in -- sis -- te em clas -- si -- fi -- car
    Meu com -- por -- ta -- men -- to de an -- ti- -- mu -- si -- cal
    Eu mes -- mo men -- tin -- do de -- "vo ar" -- gu -- men -- tar
    "Que is" -- "to é" Bos -- sa No -- va, "que is" -- "to é" mui -- to na -- tu -- ral
    O que vo -- cê não sa -- be, nem se -- quer pres -- sen -- te
    É "que os" de -- sa -- fi -- na -- dos tam -- bém "têm um" co -- ra -- ção

    Fo -- to -- gra -- fei vo -- cê na mi -- nha Ro -- lei -- flex
    Re -- ve -- lou "-se a" sua enor -- me in -- gra -- ti -- dão
    Só não po -- de -- rá fa -- lar as -- sim do meu a -- mor
    Ele é o mai -- or que vo -- cê po -- de en -- con -- trar (vue)

    Vo -- cê com a sua mú -- si -- "ca es" -- que -- ceu o prin -- ci -- pal
    Que no pei -- to dos de -- sa -- fi -- na -- dos
    No fun -- do do pei -- to ba -- te ca -- la -- do
    No pei -- to dos de -- sa -- fi -- na -- dos
    Tam -- bém ba -- "te um" co -- ra -- ção.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-F-for-C"
    \header {
        subtitle = "(real book key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-F-for-Bb"
    \header {
        subtitle = "(real book key)"
        poet = "Bb Lead Sheet"
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
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-F-for-Eb"
    \header {
        subtitle = "(real book key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-C"
    \header {
        subtitle = "(original key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-Bb"
    \header {
        subtitle = "(original key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose f ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Eb-for-Eb"
    \header {
        subtitle = "(original key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose f ef <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

