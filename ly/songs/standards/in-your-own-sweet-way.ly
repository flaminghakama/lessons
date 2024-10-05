\version "2.24.0"

titleLeft = "In Your Own"
titleRight = "Sweet Way"
titleFull = "In Your Own Sweet Way"
composerName = "D. Brubeck"
lyricistName = "I. Brubeck"
arranger = ""
copyright = ""

%{

killPreview ; rm in-your-own-sweet-way*pdf ; lilypond ly/songs/standards/in-your-own-sweet-way.ly ; for file in in-your-own-sweet-way*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/in-your-own-sweet-way*
lilypond ly/songs/standards/in-your-own-sweet-way.ly 
mv in-your-own-sweet-way*pdf pdf/songs/standards
for file in pdf/songs/standards/in-your-own-sweet-way*pdf ; do op $file ; done 

git add . ; git commit -m"new key" ; git push 
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

    \key ef \major
    \time 4/4

    \partial 2
    s2

    \startSection "A"
    \repeat volta 2 { 
        \startRepeat
        s1*6
    }
    \alternative {
        { s1*2 \endRepeat \break }
        { s1*2 }
    }
    \startSection "B"
    s1*4 \break 
    s1*4 \break 

    \startSection "A"
    s1*4 \break
    s1*6
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "A"
    s1*10
    \once \override Score.RehearsalMark.extra-offset = #'( 2 . -2 )
    % "B"
    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 0 )
    s1*8
    % "A"
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

    ef2/bf ||
    a2:m7 d:7 | g:m7 c:7 | c:m7 f:7 | bf:6 ef:maj7 | 
    af:maj7 df:7 | gf:maj7 cf:maj7 | f:7.9+ cf:7 | bf:7 ef/bf || 
        f:7.9+ cf:7 | bf:7 ef || 

    e2:m7 a:7 | d1:maj7 | e2:m7 a:7 | d1:maj7 | 
    d2 g:7 | e:m7 ef:7 | d:m7.5- af:7 | g:7 c:m7 ||

    a2:m7 d:7 | g:m7 c:7 | c:m7 f:7 | bf:6 ef:maj7 | 
    af:maj7 df:7 | gf:maj7 cf:maj7 | f:7.9+ cf:7 | bf:7 bf:aug7.9- | ef1:6  | s || 
}

melody = \relative c'' { 
    \accidentalStyle default
    ef4 bf || d2 c | bf1 | r8 d ef [ f ]  ef4 d | bf4 c8 d ~ 2 | 
    r8 cf df [ ef ]  df4 cf | bf df8 gf, ~ 4 bf8 gf | af2. gf4 | f2 ef'4 bf ||
        af2. gf4 | f2. bf4 ||

    a2 b | cs1 | r4 a bf b | fs'4 4 2 ~ | 
    fs4 c cs d | g g g gf | f2 ef | d ef4 bf ||

    d2 c | bf1 | r8 d ef [ f ]  ef4 d | bf4 c8 d ~ 2 | 
    r8 cf df [ ef ]  df4 cf | bf df bf'4 8 gf | af2 gf | f4 bf, b fs' | ef1 ~ | 2 r ||
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    In your own sweet way,
    You've turned the whole world up -- side down  
    Put on the false face, played the clown.
    Well, you've had your say.  Now it's 
        main with me.  

        I found your style 
        a -- mu -- sing for a while, 
        I watched you have your fun with ev -- 'ry one 

    In your own sweet way,
    I know your terms, I know them well;
    I'm tur -- ning flip flops, 
    I can tell that you'd like to 
    stay your own sweet way.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 2 { \skip 1 }
    plain to see
    I'm noth -- ing but a pass -- ing phase, 
    You don't in -- tend to mend your ways to re 
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
                    \rehearsalMarkTweaksForC
                    \melody
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
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
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
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
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


