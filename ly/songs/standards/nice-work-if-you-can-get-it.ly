\version "2.24.0"

titleLeft = "Nice Work If You"
titleRight = "Can Get It"
titleFull = "Nice Work If You Can Get It"
composerName = "G. Gershwin"
lyricistName = "I. Gershwin"
arranger = ""
copyright = ""

%{

killPreview ; rm nice-work-if-you-can-get-it*pdf ; lilypond ly/songs/standards/nice-work-if-you-can-get-it.ly ; for file in nice-work-if-you-can-get-it*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/nice-work-if-you-can-get-it*
lilypond ly/songs/standards/nice-work-if-you-can-get-it.ly 
mv nice-work-if-you-can-get-it*pdf pdf/songs/standards
for file in pdf/songs/standards/nice-work-if-you-can-get-it*pdf ; do op $file ; done 

git add . ; git commit -m"enharmonics" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.padding = #1

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

    \key g \major
    \time 4/4

    \startSection "A"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*5 \break
    s1*5
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 1 )
    % "A"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "B"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
}

rehearsalMarkTweaksForSharps = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
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

    b2:9 e:13 | a:9 d:13 | g:9 c:13 | a:7 a:7.9- | 
    g1/d | a2:m g/b | g4:6 g/b bf:dim7 a:m7 | g1 ||

    b2:9 e:13 | a:9 d:13 | g:9 c:13 | a:7 a:7.9- | 
    g1/d | a2:m g/b | g4:6 g/b bf:dim7 a:m7 | g1 ||

    e1:m | c:13 | e:m7 | a:7 | 
    d2:m d:m/f | a:7/e a:7 | a1:m7 | d2:aug7 d:aug7/c ||

    b2:9 e:13 | a:9 d:13 | g:9 c:13 | a:7 a:7.9- | 
    g1/d | a2:m g/b | f:7 e:7 | a:m7 a4:m7/d d:aug7 | g2 ef4:7 d:7 | g1:6 ||
}
chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    b2:9 e:13 | a:9 d:13 | g:9 c:13 | a:7 a:7.9- | 
    g1/d | a2:m g/b | g4:6 g/b as:dim7 a:m7 | g1 ||

    b2:9 e:13 | a:9 d:13 | g:9 c:13 | a:7 a:7.9- | 
    g1/d | a2:m g/b | g4:6 g/b as:dim7 a:m7 | g1 ||

    e1:m | b:9 | e:m7 | a:13 | 
    d2:m d:m/f | a:7/e a:7 | a1:m7 | d2:aug7 d:aug7/c ||

    b2:9 e:13 | a:9 d:13 | g:9 c:13 | a:7 a:7.9- | 
    g1/d | a2:m g/b | es:7 e:7 | a:m7 a4:m7/d d:aug7 | g2 ds4:7 d:7 | g1:6 ||
}


melody = \relative c'' { 
    \accidentalStyle default
    b4 c c b | a b2. | g4 a a g | fs1 | 
    d4. e8 ~ 8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | a8 b4. g4 8 8 ~ | 2. r4 ||

    b4 c c b | a b2. | g4 a \tuplet 3/2 { a4 gs g } | fs1 | 
    d4. e8 ~ 8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | a8 b4. g4 8 8 ~ | 2. r4 ||

    r8 b4 g8 b4 g | bf4. g8 ~ 2 | b8. 16 b,8. 16 e8 g4. | fs1 | 
    r8 a4 f8 a4 f | a4. 8 ~ 4 8. b16 | d4 4 8. e16 b4 | as1 ||

    b4 c c b | a b2. | g4 a \tuplet 3/2 { a4 gs g } | fs1 | 
    d4. e8 ~ 8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | 
    a8 b4. ~ 2 | d4 b g e | g1 ~ | 2. r4 || 

}
melodyForFlats = \relative c'' { 
    b4 c c b | a b2. | g4 a a g | fs1 | 
    d4. e8 ~ 8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | a8 b4. g4 8 8 ~ | 2. r4 ||

    b4 c c b | a b2. | g4 a \tuplet 3/2 { a4 gs g } | fs1 | 
    d4. e8 ~ 8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | a8 b4. g4 8 8 ~ | 2. r4 ||

    r8 b4 g8 b4 g | as4. g8 ~ 2 | b8. 16 b,8. 16 e8 g4. | fs1 | 
    r8 a4 f8 a4 f | a4. 8 ~ 4 8. b16 | d4 4 8. e16 b4 | as1 ||

    b4 c c b | a b2. | g4 a \tuplet 3/2 { a4 gs g } | fs1 | 
    d4. e8 ~ 8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | 
    a8 b4. ~ 2 | d4 b g e | g1 ~ | 2. r4 || 
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Hold -- ing hands at mid -- night 
    'neath a star -- ry sky.

    Nice Work If You Can Get It, 
    and you can get it if you try.


    Stroll -- ing with the one girl, 
    sigh -- ing sigh af -- ter sigh,  

    Nice Work If You Can Get It, 
    and you can get it if you try.

        Just im -- ag -- ine some -- one 
        wait -- ing at the cot -- tage door, 

        where two hearts be -- come one. 
        Who could ask for an -- y -- thing more? 

    Lov -- ing one who loves you, 
    and then tak -- ing that vow, 

    Nice Work If You Can Get It, 
    and if you get it, 
    won't you tell me how?
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % \repeat unfold 10 { \skip 1 }

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
  \bookOutputSuffix "in-G-for-C"
    \header {
        subtitle = "(original key)"
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
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        subtitle = "(original key)"
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
  \bookOutputSuffix "in-G-for-Eb"
    \header {
        subtitle = "(original key)"
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
  \bookOutputSuffix "in-Gb-for-C"
    \header {
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose g gf <<
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Gb-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose g gf <<
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
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Gb-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose g gf <<
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



