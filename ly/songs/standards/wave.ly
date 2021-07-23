\version "2.19.83"

titleLeft = "Wa"
titleRight = "ve"
title = "Wave (Vou Te Contar)"
composerName = "A. C. Jobim"
lyricistName = "A. C. Jobim"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm pdf/songs/standards/wave*
lilypond ly/songs/standards/wave.ly 
mv wave*pdf pdf/songs/standards
for file in pdf/songs/standards/wave*pdf ; do op $file ; done 

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

structure = \relative c' { 

    \key d \major
    \tempo "Bossa"
    \partial 4. s4. 
    \bar "[|:"
    \startSectionNoBarline "A"
    \repeat volta 2 { 
        s1*11
    }
    \alternative {
        { s1 \bar ":|]" }
        { s1 }
    } 
    \break
    \startSection "B"
    s1*4 \break 
    s1*4 \break 
    \startSection "A"
    s1*12
    \bar "|."    
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4.
    d1:maj7 | bf:dim7 | a:m7 | d:7.9- |
    g1:maj7 | g:m7 | fs2:13 fs:aug7 | b:1.4.5.7.9 b:7.9- | 
    b2:m7/e e:7 | bf:7 a:7.9+ | d:m7 g:7 | d:m7 g:7 ||
        d2:m7 g:7 ||

    g1:m7 | c:9/bf | f:maj7/a | s | 
    f1:m7 | bf:9/af | ef:maj7/g | a:aug7.9- ||

    d1:maj7 | bf:dim7 | a:m7 | d:7.9- |
    g1:maj7 | g:m7 | fs2:13 fs:aug7 | b:1.4.5.7.9 b:7.9- | 
    b2:m7/e e:7 | bf:7 a:7.9+ | d:m7 g:7 | d:m7 g:7 ||
}
chordsSong = \chordmode { 
    \chordsForm
}

melodyHead = \relative c'' { 
    b8 d [ cs ] ||
    a2. r8 fs8 | g bf cs e g fs r a ~ | 1 |
    r4 a8 8 r b r a | r g r g fs4 g ~ | 4 fs8 g r a r fs ~ | 1 | 
    r8 fs a [ af ] g fs r fs ~ | 8 d d d ~ 8 b d e | 
    f8 d c af g f r f | r d2.. ~ | 2 r8 b' d [ cs ] ||
        d,1\repeatTie ||

    d'2 \tuplet 3/2 { c4 bf a } | g2 r8 a bf [ d ] | c4. 8 2 ~ | 1 | 
    c2 ~ 8 bf af g | f2 r8 g af [ c ] | bf4. 8 2 ~ | 2 r8 b8 d [ cs ] ||

    a2. r8 fs8 | g bf cs e g fs r a ~ | 1 |
    r4 a8 8 r b r a | r g r g fs4 g ~ | 4 fs8 g r a r fs ~ | 1 | 
    r8 fs a [ af ] g fs r fs ~ | 8 d d d ~ 8 b d e | 
    f8 d c af g f r f | r d2.. ~ | 1 ||

}
melodySong = \relative c' { 
    \melodyHead
}

lyricsHeadOneEnglish = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    So close your eyes 
    for that's a love -- ly way to be

    A -- ware of things your heart a -- lone was meant to see

    The fun -- da -- men -- tal lone -- li -- ness goes
    When -- ev -- er two can dream a dream to -- ge -- ther

    You can't de-
    \repeat unfold 1 { \skip 1 }

    When I saw you first the time was half past three
    When your eyes met mine it was e -- ter -- ni -- ty
 
    By now we know 
    the wave is on its way to be
    Just catch the wave don't be a -- fraid of lov -- ing me
    The fun -- da -- men -- tal lone -- li -- ness goes
    When -- ev -- er two can dream a dream to -- ge -- ther

}
lyricsHeadTwoEnglish = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    You can't de --  ny
    Don't try to fight the ri -- sing sea
    Don't fight the moon the stars a -- bove and don't fight me
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    Vou te con -- tar, os ol -- hos já não po -- dem ver
    Coi -- sas que só o cor -- a -- ção po -- \markup { "de en" } -- ten -- der
    Fun -- da -- men -- tal é mes -- mo o amor
    É im -- pos -- sí -- vel ser fe -- liz so -- zi -- nho

    O res -- \markup { "to é" } \skip 1

    Da pri -- mei -- ra vez e -- \markup { "ra a" } ci -- da _ -- de
    Da se -- gun -- \markup { "da o" } cais \markup { "e a" } eter -- ni -- da _ -- de

    A -- go -- \markup { "ra eu já" } sei, 
    da on -- da que \markup { "se er" } -- gueu no mar

    E das es -- tre -- las \markup { "que es" } -- que -- ce -- mos de con -- tar
    O amor se dei -- xa sur -- pre -- en -- der
    En -- quan -- to a noi -- te vem nos en -- vol -- ver
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    O res -- \markup { "to é" } mar, 
    e tu -- do \markup { "que eu" } não sei con -- tar
    São coi -- sas lin -- das que eu te -- nho pra te dar
    Vem de man -- si -- nho bri -- \markup { "sa e" } me diz
}


\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}


\book {
  \bookOutputSuffix "english-for-C"
    \header {
        subtitle = ""
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
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOneEnglish } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwoEnglish }
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
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
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo }
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
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
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}
\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

