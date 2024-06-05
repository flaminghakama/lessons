\version "2.24.0"

titleLeft = "Easy To"
titleRight = "Love"
titleFull = "Easy To Love"
composerName = "C. Porter"
lyricistName = "C. Porter"
arranger = ""
copyright = ""

%{

killPreview ; rm easy-to-love*pdf ; lilypond ly/songs/standards/easy-to-love.ly ; for file in easy-to-love*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/easy-to-love*
lilypond ly/songs/standards/easy-to-love.ly 
mv easy-to-love*pdf pdf/songs/standards
for file in pdf/songs/standards/easy-to-love*pdf ; do op $file ; done 

git add . ; git commit -m"fixing notes" ; git push 
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

    \key g \major
    \time 2/2

    \startSection "A"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break

        \startSection ""
        s1*4 \break
        s1*4 \break

        \startSection "B"
        s1*4 \break
        s1*4 \break

        \startSection ""
        s1*4 \break
        s1*2
    }
    \alternative {
        { s1*2 \endRepeat }
        { s1*2 }
    }
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % \startSection "A"
    s1*4
    s1*4 
    % \startSection ""
    s1*4 
    s1*4 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % \startSection "B"
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

    a1:m7 | d:m7 | a:m7 | d:7 | g:maj7 | c:9 | b:m7 | e:7.9- | 
    a1:m7 | d:9 | g:maj7 | b2:m7 e:7 | a1:m7 | d2.:7 d4:7/c | b1:m7 | s2 e:7.9- ||

    a1:m7 | d:m7 | a:m7 | d:7 | g:maj7.11+ | c:9 | b:m7 | e:7.9- | 
    a1:m7 | c2:m7 f:7 | g:maj7 g:maj7/b | b1:dim7 | a:m7 | d:7 | g | b2:m7.5- e:7.9- ||
        g2 a:m7 | a:m7/d g ||

}

chordsSongVolOne = \transpose c g \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    d1:m7 | g:m7 | d:m7 | g:7 | 
    c1:maj7 | f:7 | e:m7 | a:7.5- ||

    d1:m7 | g:7 | c2:maj7 f:maj7 | e:m7 a:7 | 
    d1:m7 | g:7 | e:m7 | ef:dim7 ||

    d1:m7 | g:m7 | d:m7 | g:7 | 
    c1:maj7 | f:7 | e:m7 | a:7.5- ||

    a1:7 | d:m7 | f:m6 | c:maj7 | 
    e2:7 ef:dim7 | d1:m7 | g:7 | c2:6 f:7 | e:m7 a:7.9- ||
        g2 a:m7 | a:m7/d g ||
}

melody = \relative c' { 
    \accidentalStyle default
    e1 | a,2. b4 | c2 \tuplet 3/2 { b2 c4 } | fs2. e4 |
    d2 cs4 d | a' af g fs | e2 \tuplet 3/2 { ds2 e4 } | d'1 ||

    d1 | e,2. fs4 | b4 4 2 ~ | 4 r r2 |
    r4 d d,4. 8 | ef8 4 8 e4 8 f ~ | 4 4 2 ~ | 4 r r2 ||

    e1 | a,2. b4 | c2 \tuplet 3/2 { b2 c4 } | fs2. e4 |
    d2 cs4 d | a' af g fs | e2 \tuplet 3/2 { ds2 e4 } | e'2. b4 ||

    d2. a4 | c2. g4 | b2 fs4 g | a af g fs | 
    e2 b' | 2 bf4 a | g1 ~ | 4 r r2 || g1 ~ | 2. r4 ||

}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    You'd be so Eas -- y To Love, 
    So eas -- y to i -- dol -- ize, 
    all oth -- ers a -- bove 

    So worth the yearn -- ing for, 
    So swell to keep ev -- 'ry 
    home fire burn -- ing for

    We'd be so grand at the game 
    so care -- free to -- geth -- er, 
    that it does seem a shame 
    that you can't see your fu -- ture with me, 
    'cause you'd be oh, so Eas -- y to Love!
    Love! 
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
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
        subtitle = "(fake book key)"
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
  \bookOutputSuffix "in-G-for-Bb"
    \header {
        subtitle = "(fake book key)"
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
        subtitle = "(fake book key)"
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
  \bookOutputSuffix "in-C-Vol-I-for-C"
    \header {
        subtitle = "(Vol. I key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
   \score {
        \transpose g, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongVolOne
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


