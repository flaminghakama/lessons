\version "2.24.0"

titleLeft = "Ev'ry Time We"
titleRight = "Say Goodbye"
titleFull = "Ev'ry Time We Say Goodbye"
composerName = "C. Porter"
lyricistName = "C. Porter"
arranger = ""
copyright = ""

%{

killPreview ; rm evry-time-we-say-goodbye*pdf ; lilypond ly/songs/standards/evry-time-we-say-goodbye.ly ; for file in evry-time-we-say-goodbye*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/evry-time-we-say-goodbye*
lilypond ly/songs/standards/evry-time-we-say-goodbye.ly 
mv evry-time-we-say-goodbye*pdf pdf/songs/standards
for file in pdf/songs/standards/evry-time-we-say-goodbye*pdf ; do op $file ; done 

git add . ; git commit -m"fixing chords" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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

    \key ef \major
    \tempo "Slowly"
    \time 4/4

    \startSection "A"
    s1*4 
    s1*4 \break

    \startSection ""
    s1*4 
    s1*4 \break

    \startSection "B"
    s1*4 
    s1*4 \break

    \startSection ""
    s1*3 s2.. \toCoda s8 
    s1*4 
    \bar "||"
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key ef \major
    s1*4 \break 
    s1*4
    \bar "|."    
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 3.5 )
    % \startSection "A"
    s1*4 
    s1*4 

    % \startSection ""
    s1*4 
    s1*4 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
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
    ef1:maj7 | f2:m7 bf:7 | g:m7.5- c:7.9- | f:m7 bf4:7 bf:7/af|
    g2:m7.5- c:7.9- | f:m7 bf:7 | bf:m7 ef:7 | af:m7 df:9 ||

    ef2:/g gf:dim7 | f:m7.5- bf:7 | bf:m7 ef:7 | af1:maj7 |
    af2:m7 df:9 | ef1:maj7 | b:9 | f2:m7.5-/bf bf:7 ||

    ef1:maj7 | f2:m7 bf:7 | g:m7.5- c:7.9- | f:m7 bf4:7 bf:7/af |
    g2:m7.5- c:7.9- | f:m7 bf:7 | bf:m7 ef:7 | af:maj7 df:9 ||

    ef2:/g gf:dim7 | f:m7.5- bf:7 | bf:m7 ef:13 | af2:m7 df:13 | 
    ef2:maj7 c:7.9- | f:9 af4:/bf bf:7| ef2 gf:dim7 | f:m7 bf:7 ||
          
}

chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    ef2:maj7 c:7.9- | f:9 f4:m7/bf b:dim7 | c2:m c:m/bf | a:m7.5- d:7 | 
    g2:m7.5- c:7.9- | f:7 bf:7 | ef1 | s ||
}

melody = \relative c'' { 
    \accidentalStyle default

    g4. 8 2 ~ | 4 4 4 4 | 2. 4 | af2 ~ 8 f ef d | 
    r8 bf'4 8 2 ~ | 4 4 4 4 | 2 ~ 8 g af bf | cf2 ~ 8 af g f | 

    r8 ef'4 8 4 4 | 4 d2 bf4 | df r8 g, ~ 8 af4 bf8 | c1 | 
    r8 cf4 8 4 4 | 4 bf2 ef,8 f | gf8 4 ef8 gf4 ( f ~ 2. ) r4 ||

    g4. 8 2 ~ | 4 4 4 4 | 2. 4 | af2 ~ 8 f ef d | 
    r8 bf'4 8 2 ~ | 4 4 4 4 | 2 ~ 8 g af bf | c2 ~ 8 af g f | 

    r8 ef'4 8 f4 ef | 4 d2 bf8 c | df4. g,8  c4. f,8 | ef d ef bf' ~ 4 af |
    g4. 8 2 ~ | 4 f ef d | ef1 ~ | 4 r r2 ||
}
melodyForFlats = \relative c'' { 
    \melody
}

melodyCoda = \relative c'' { 
    \accidentalStyle default

    g4. 8 2 ~ | 4 f ef d | ef1 | d'4 df c cf | 
    bf2. c4 | f2. c4 | ef1 ~ | 2. r4 ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Ev 'ry Time We Say Good -- bye 
    I die a lit -- tle.

    Ev 'ry Time We Say Good -- bye 
    I won -- der why a lit -- tle.

    Why the gods a -- bove me, 
    who must be in the know, 
    think so lit -- tle of me 
    they al -- low you to go.

    When you're near there's such an air 
    of Spring a -- bout it.

    I can hear a lark some -- where 
    be -- gin to sing a -- bout it;
    there's no love song fin -- er.
    But how strange the change 
    from ma -- jor to mi -- nor

    Ev 'ry Time We Say Good -- bye. 

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }
}

lyricsCoda = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Ev -- 'ry Time We Say Good -- bye.
    Ev -- 'ry sin -- gle time we say good -- bye.
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


    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
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

    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
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

    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsCoda } 
            }
        >>
        \layout {
            indent = 2\cm
        }
    }
}
