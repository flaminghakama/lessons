\version "2.24.0"

titleLeft = "All Of"
titleRight = "You"
titleFull = "All Of You"
composerName = "C. Porter"
lyricistName = "C. Porter"
arranger = ""
copyright = ""

%{

killPreview ; rm all-of-you*pdf ; lilypond ly/songs/standards/all-of-you.ly ; for file in all-of-you*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/all-of-you*
lilypond ly/songs/standards/all-of-you.ly 
mv all-of-you*pdf pdf/songs/standards
for file in pdf/songs/standards/all-of-you*pdf ; do op $file ; done 

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

    \key ef \major
    \time 2/2

    \partial 2.
    s2. 

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
    s2. 

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -4 )
    % \startSection "A"
    s1*4
    s1*4 
    % \startSection ""
    s1*4 
    s1*4 

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -4 )
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
    s2.
    af1/ef | ef | f:m7.5- | bf:7.9- | 
    af1/ef | ef | af:m7 | df:7 ||

    ef1 | c:7.9- | f:m7 | bf2.:7 bf4:7/af | 
    g1:m7 | c:7.9- | f:m7 | bf:7 ||

    af1/ef | ef | f:m7.5- | bf:7.9- | 
    af1/ef | ef | g:m7 | c:7 ||

    af1:1.4.5 | a2:m7.5- d:7.9- | g:aug7 df:9 | c1:7 | 
    f2:m c:7/g | f:m/af bf:7 | ef1 | f2:m7 bf:7 ||  
        ef2 df4:6 d:6 | ef1:6.9 ||

}

chordsSongVolOne = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s2.
    af1:m6 | ef:maj7 | f:m7.5- | bf:7.9- | 
    af1:m6 | ef:maj7| af:m7 | df:7 ||

    g1:m7 | gf:dim7 | f:m7 | bf:7 | 
    ef2:maj7 d:7 | g:m7.5-/df c:7.9- | f1:m7 | bf:7 ||

    af1:m6 | ef:maj7 | f:m7.5- | bf:7.9- | 
    af1:m6 | ef:maj7| g:m7 | c:7.9- ||

    af1:maj7 | a2:m7.5- d:7.9- | g:m7 df:9 | c1:7 | 
    f2:m c:7 | f:m7 bf:7 | ef1:6 | f:m7 ||  
        ef2 df4:6 d:6 | ef1:6.9 ||

}

melody = \relative c' { 
    \accidentalStyle default

    ef4 f g ||
    af2. g4 | 2. bf,4 | cf2. af'4 | 2. f4 | 
    af2. g4 | 2. bf,4 | cf2. bf'4 | 2. af4 ||

    c2. bf4 | c2. bf4 | c2. d,4 | 2. c4 | 
    bf'2 2 | 4 df2 c4 | bf2 c,4 4 ~ | 4 d ef f ||

    af2. g4 | 2. bf,4 | cf2. af'4 | 2. f4 | 
    af2. g4 | 4 bf,8 c d4 ef | c2. bf'4 | 2. b4 ||

    d4. c8 d4. c8 | d4 c8 ef ~ 8 d c4 | g1 ~ | 2. c,4 | 
    af'2 bf | c d, | ef1 | r4 ef f g ||  ef1 ~ | 4 r r2 || 


}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I love the looks of you, 
    the lure of you, 
    the sweet of you
    the pure of you; 

    the eyes, the arms, 
    the mouth of you, 
    the East, West, North  
    and the South of you.

    I'd love to gain com -- plete 
    con -- trol of you,
    and han -- dle e -- ven the 
    heart and soul of you.

    So love, at least, 
    a small per -- cent of me, 
    do, 
    for I love All Of You.

    I love the 
    You.

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I Con -- cen -- trate On You.
    I con -- cen -- trate, and con -- cen -- trate on you.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Eb-for-C"
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
  \bookOutputSuffix "in-Eb-for-Bb"
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
  \bookOutputSuffix "in-Eb-for-Eb"
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
  \bookOutputSuffix "in-Eb-Vol-I-for-C"
    \header {
        subtitle = "(Vol. I changes)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
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


