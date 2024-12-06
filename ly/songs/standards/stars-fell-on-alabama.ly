\version "2.24.0"

titleLeft = "Stars Fell"
titleRight = "On Alabama"
titleFull = "Stars Fell On Alabama"
composerName = "F. Perkins"
lyricistName = "M. Parish"
arranger = ""
copyright = ""

%{

killPreview ; rm stars-fell-on-alabama*pdf ; lilypond ly/songs/standards/stars-fell-on-alabama.ly ; for file in stars-fell-on-alabama*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/stars-fell-on-alabama*
lilypond ly/songs/standards/stars-fell-on-alabama.ly 
mv stars-fell-on-alabama*pdf pdf/songs/standards
for file in pdf/songs/standards/stars-fell-on-alabama*pdf ; do op $file ; done 

git add . ; git commit -m"fixing lyric" ; git push 
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
    s1*4 \break
    s1*4 \break

    \bar "|."

}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "A"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
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

    c2:maj7 a:7.9- | d:7 g:aug7 | c:maj7 d:m7 | e:m7 a:7.9- | 
    d1:m7 | g:13 | c2:maj7 a:7.9- | d:m7 g:7.9- ||

    c2:maj7 a:7.9- | d:7 g:aug7 | c:maj7 d:m7 | e:m7 a:7.9- | 
    d1:m7 | g:13 | c2:6 bf:9 | c:6 a:7.9- ||

    d2:m7 g:7 | e:m7 ef:dim7 | d:m7 g:7 | c:6 a:7.9- |
    d2:m7 b4:m7.5- e:7.9- | a2:m7 a2:m7/g | fs:m11 b:9 | e4:maj7 cs:m7 d:m7 g:7 ||


    c2:maj7 a:7.9- | d:7 g:aug7 | c:maj7 d:m7 | e:m7 a:7.9- | 
    d1:m7 | g:13 | c2:maj7 a:m7 | d:m7 g:7 ||
}

melody = \relative c' { 
    \accidentalStyle default

    e2 ds8 e ds e | a4 2 g4 | e'2 ds8 e ds e | b2. bf4 | 
    a2 gs8 a gs a | e4 2 d4 | g1 | R1 ||

    e2 ds8 e ds e | a4 2 g4 | e'2 ds8 e ds e | b2. bf4 | 
    a2 gs8 a gs a | e4 2 4 | c1 | r2 r8 e f [ g ] ||

    a4. 8 g f e d | b'4 4 ~ 8 c d c | g4 4 ~ 8 a b g | e2 r8 e f [ g ] |
    a4. 8 g f e d | c'4 4 ~ 8 d e c | b4 4 ~ 8 cs ds b | gs2 g ||

    e2 ds8 e ds e | a4 2 g4 | e'2 ds8 e ds e | b2. bf4 | 
    a2 gs8 a gs a | e4 2 4 | c1 | R1 ||

}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    We lived our lit -- tle dra -- ma.
    We kissed in a field of white, 
    and stars fell on Al -- a -- bam -- a last night.

    I can't for -- get the glam -- our.
    Your eyes held a ten -- der light, 
    and stars fell on Al -- a -- bam -- a last night.

    I nev -- er planned in my im -- a -- gi -- na -- tion 
    a sit -- u -- a -- tion so hea -- ven -- ly, 
    a fair -- y land where no one else could en -- ter, 
    and in the cen -- ter just you and me, dear. 

    My heart beat like a ham -- mer.
    My arms wound a -- round you tight 
    and stars fell on Al -- a -- bam -- a last night.
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
  \bookOutputSuffix "in-Bb-for-C"
    \header {
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c bf, <<
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
  \bookOutputSuffix "in-Bb-for-Bb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c \transpose c bf,  <<
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
  \bookOutputSuffix "in-Bb-for-Eb"
    \header {
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c \transpose c bf,  <<
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
