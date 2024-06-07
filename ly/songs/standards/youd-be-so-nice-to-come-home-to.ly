\version "2.24.0"

titleLeft = "You'd Be So Nice"
titleRight = "To Come Home To"
titleFull = "You'd Be So Nice To Come Home To"
composerName = "C. Porter"
lyricistName = "C. Porter"
arranger = ""
copyright = ""

%{

killPreview ; rm youd-be-so-nice-to-come-home-to*pdf ; lilypond ly/songs/standards/youd-be-so-nice-to-come-home-to.ly ; for file in youd-be-so-nice-to-come-home-to*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/youd-be-so-nice-to-come-home-to*
lilypond ly/songs/standards/youd-be-so-nice-to-come-home-to.ly 
mv youd-be-so-nice-to-come-home-to*pdf pdf/songs/standards
for file in pdf/songs/standards/youd-be-so-nice-to-come-home-to*pdf ; do op $file ; done 

git add . ; git commit -m"transposing" ; git push 
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

    \key c \major
    \time 2/2

    \partial 2 
    s2  

    \startSection "A"
    \startRepeat
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
    s1*4
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    s2
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

    s2 ||
    a1:m | b2:m7.5- e:7 | a:m e:7 | a1:m | 
    g1:m9 | c:7 | f2:maj7 c:aug7 | f1:maj7 ||

    d2:m7 b:7.5- | e1:7 | e:7.9- | a2:m a:m/g | 
    fs1:m7.5- | f2:7 b:7.9- | e:7 f:7.5- | e1:7 || 

    a1:m | b2:m7.5- e:7 | a:m e:7 | a1:m | 
    g1:m9 | c:7 | f2:maj7 c:aug7 | f1:maj7 ||

    ds1:dim7 | c/e | f:6 | fs:dim7 | 
    c2:/g af:7 | d:7.9- g:7 | c1 | b2:m7.5- e:7 ||
}

chordsSongVolOne = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s2 ||
    a1:m6 | e:7 | a:m6 | s | 
    g1:m7 | c:7 | f:maj7 | s ||
    
    b1:m7 | e:7 | a:m | a2:m a:m/g |
    fs1:m7.5 | b:7 | b:m7 | e:7 ||

    a1:m6 | e:7 | a:m6 | s | 
    g1:m7 | c:7 | f:maj7 | s ||

    ds1:dim7 | e:m7 | gs:dim7 | a:m | 
    d:7 | g:7 | c1:maj7 | s ||
}

melody = \relative c'' { 
    \accidentalStyle default
    a4 b ||

    c1 | b2 ~ 8 a4 gs8 | a2 e ~ | 2 ds4 e | 
    a1 | g2 ~ 8 e4 d8 | c1 ~ | 2 d4 e ||

    f2. ds4 | e2 ~ 8 gs4 b8 | d2. b4 | c2 ~ 8 d4 ds8 |
    e2. c4 | ef2 c4. b8 | 1 ~ | 2 a4 b ||

    c1 | b2 ~ 8 a4 gs8 | a2 e ~ | 2 \tuplet 3/2 { e4 f g } | 
    a4 c a2 |  g2 ~ 8 e4 c8 | d1 ~ | 2 e4 f ||

    a1 | g2 r8 a4 b8 | d2. c4 | a2 c4 d | 
    e2 ef ~ | 2 d | c1 ~ | 2 r || 
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    You'd Be So Nice To Come Home To, 
    you'd be so nice by the fire. 

    While the breeze on high, 
    sang a lull -- a -- by, 
    you'd be all that I could de -- sire.

    Un -- der stars, chilled by the win -- ter, 
    un -- der an Aug -- ust moon, 
    burn -- ing a -- bove.

    You'd be so nice, 
    you'd be par -- a -- dise 
    to come home to and love.
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
  \bookOutputSuffix "in-C-for-C"
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
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Bb"
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
  \bookOutputSuffix "in-C-for-Eb"
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
  \bookOutputSuffix "in-C-Vol-I-for-C"
    \header {
        subtitle = "(Vol. I changes)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
   \score {
        \transpose c c <<
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


\book {
  \bookOutputSuffix "in-A-for-C"
    \header {
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c a, <<
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
  \bookOutputSuffix "in-A-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose c a, <<
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
  \bookOutputSuffix "in-A-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose bs a <<
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


