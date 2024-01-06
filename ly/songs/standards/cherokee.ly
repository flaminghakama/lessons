\version "2.19.83"

titleLeft = "Cher"
titleRight = "okee"
title = "Cherokee"
composerName = "R. Noble"
lyricistName = "R. Noble"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm cherokee*pdf ; lilypond ly/songs/standards/cherokee.ly ; for file in cherokee*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/cherokee*
lilypond ly/songs/standards/cherokee.ly 
mv cherokee*pdf pdf/songs/standards
for file in pdf/songs/standards/cherokee*pdf ; do op $file ; done 

git add . ; git commit -m"adding song" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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
    \key bf \major
    \startSection "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*6 \break
        s1*6 \break
        s1
    }
    \alternative {
        { s1*3 \bar ":|]" }
        { s1*3 \break }
    }
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -1 )
    \startSection "B"
    s1*6 \break
    s1*6 \break
    s1*4 
    \override Score.RehearsalMark #'extra-offset = #'( -1 . -1 )
    \startSection "A"
    s1*2 \break
    s1*8 \break
    s1*6 
    \bar "|."
}

chordsB = \chordmode { 
    cs1:m9 | fs:13 | b:maj9 | s | 
    b1:m9 | e:7 | a:maj7 | s | 
    a1:m9 | d:13 | g:maj9 | s | 
    g1:m9 | c:7 | c:m7 | f:aug7 ||
}

chordsBForFlats = \chordmode { 
    df1:m9 | gf:13 | cf:maj9 | s | 
    b1:m9 | e:7 | a:maj7 | s | 
    a1:m9 | d:13 | g:maj9 | s | 
    g1:m9 | c:7 | c:m7 | f:aug7 ||
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    bf1 | s | f:m7 | bf:7 | 
    ef1 | s | af:7.11+ | s | 
    bf1 | d2:m7 g:7 | c1:9 | s | 
    c1:m7 | d2:m7 g:7 | c1:m7 | f:aug7 ||
        f1:7 | bf | s ||

    \chordsB

    bf1 | s | f:m7 | bf:7 | 
    ef1 | s | af:7 | s | 
    bf1 | d2:m7 g:7 | c1:9 | s | 
    c1:m7 | f1:7 | bf | c2:m7 f:7 ||

}
chordsSongForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    bf1 | s | f:m7 | bf:7 | 
    ef1 | s | af:7.11+ | s | 
    bf1 | d2:m7 g:7 | c1:9 | s | 
    c1:m7 | d2:m7 g:7 | c1:m7 | f:aug7 ||
        f1:7 | bf | s ||

    \chordsBForFlats

    bf1 | s | f:m7 | bf:7 | 
    ef1 | s | af:7 | s | 
    bf1 | d2:m7 g:7 | c1:9 | s | 
    c1:m7 | f1:7 | bf | c2:m7 f:7 ||

}

melodyBridge = \relative c'' { 
    ds1 ~ | 2 cs | 4 as fs2 ~ | 2 cs' | 
    cs4 a fs2 ~ | 2 b | e,1 ~ | 2 r2 |
    b'1 ~ | 2 a | 4 fs d2 ~ | 2 a' |
    a4 f d2 ~ | 2 g | c,1 | cs ||
}
melodyBridgeForFlats = \relative c'' { 
    df1 ~ | 2 df | 4 bf gf2 ~ | 2 cs | 
    cs4 a fs2 ~ | 2 b | e,1 ~ | 2 r2 |
    b'1 ~ | 2 a | 4 fs d2 ~ | 2 a' |
    a4 f d2 ~ | 2 g | c,1 | cs  ||
}
melodyHead = \relative c' { 
    d1 | f2 g | bf1 | g | 
    f1 | d2 f | d1 | c |
    r2 d | f g | d'1 | bf | 
    g1 | f2 d | c1 | cs ||
        d1 | bf1 ~ | 2 r ||

    \melodyBridge

    d1 | f2 g | bf1 | g | 
    f1 | d2 f | d1 | c |
    r2 d | f g | d'1 | bf | 
    g1 | d | bf1 | R1 ||
}
melodyHeadForFlats = \relative c' { 
    d1 | f2 g | bf1 | g | 
    f1 | d2 f | d1 | c |
    r2 d | f g | d'1 | bf | 
    g1 | f2 d | c1 | cs ||
        d1 | bf1 ~ | 2 r ||

    \melodyBridgeForFlats

    d1 | f2 g | bf1 | g | 
    f1 | d2 f | d1 | c |
    r2 d | f g | d'1 | bf | 
    g1 | d | bf1 | R1 ||
}

melodySong = \relative c' { 
    \melodyHead
}
melodySongForFlats = \relative c' { 
    \melodyHeadForFlats
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Brave In -- dian warr -- ior
    Since first I met you
    I can't for -- get you
    Cher -- o -- kee sweet -- heart
        o -- kee

    Dreams of sum -- mer -- time
    Of lo -- ver time gone by
    throng my mem -- o -- ry
    So ten -- der -- ly and sigh.  My

    Sweet In -- dian mai -- den 
    One day I'll hold you
    In my arms fold you,
    Cher -- o -- kee
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % \repeat unfold 3 { \skip 1 }
    Child of the prai -- rie
    Your love keeps call -- ing
    My heart en -- thrall -- ing
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
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
                    \override Stem.length-fraction = #(magstep 1.2)
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

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
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
                    \override Stem.length-fraction = #(magstep 1.2)
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

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
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
                    \melodySongForFlats
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

