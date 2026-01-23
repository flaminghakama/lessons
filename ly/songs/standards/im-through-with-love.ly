\version "2.24.0"

titleLeft = "I'm Through"
titleRight = "With Love"
titleFull = "I'm Through With Love"
composerName = "M. Malneck & F. Livingston"
lyricistName = "G. Kahn"
arranger = ""
copyright = ""

%{

killPreview ; rm im-through-with-love*pdf ; lilypond ly/songs/standards/im-through-with-love.ly ; for file in im-through-with-love*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/im-through-with-love*
lilypond ly/songs/standards/im-through-with-love.ly 
mv im-through-with-love*pdf pdf/songs/standards
for file in pdf/songs/standards/im-through-with-love*pdf ; do op $file ; done 

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

    \key f \major
    \time 4/4

    \partial 8 
    s8 

    \startSection "A"
    s1*4 
    s1*4 
    \startSection ""
    s1*4 
    s1*4 

    \startSection "B"
    s1*4 
    s1*4 

    \startSection "C"
    s1*4 
    s1*4 
    \bar "||"

}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    s8 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s1*4  
    s1*4 \break 
    % ""
    s1*4  
    s1*4 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "B"
    s1*4  
    s1*4 \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "C"
    s1*4  
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
    s8 

    f2:maj7 af:dim7 | g:m7 c:7 | 
    f2:maj9 f:7 | bf:maj7 ef:7 |  

    a2:m7 d:aug7.9- | g:m7 d:aug7.9- |
    g2:m7 c:7 | a4:m7 d:7.9- g:m7 c:7.9- ||

    f2:maj7 af:dim7 | g:m7 c:7 | 
    f2:maj9 f:7 | bf:maj7 ef:7 |  

    a2:m7 d:aug7.9- | g:m7 d:aug7.9- |
    g2:m7 c:7 | f:6 e:7.9- ||


    a2:m a:1.3-.5.13- | a:m6 a:1.3-.5.13- | 
    a2:m a:1.3-.5.13- | a:m6 d:7 | 

    c2:6 a:m7 | d:m7 g:13 |
    g2:m7 d:aug7.9- | g:m7 c:7 ||


    f2:maj7 af:dim7 | g:m7 c:7 | 
    f2:maj9 f:7 | bf:maj7 ef:7 |  

    a2:m7 d:aug7.9- | g:m7 d:aug7.9- |
    g2:m7 c:7 | f:6 c:7.9- ||
}

melody = \relative c' { 
    \accidentalStyle default

    f8 || 
    e4. d8 f4. d8 | e d f d  e4 f8 fs | 
    g4. f8 a4. f8 | g f a f  g4 a8 bf | 
    c4. a8 ef'4. d8 | c bf4. ~ 2 | 
    r8 d, cs [ d ]  bf'4 a | c2. r8 f, ||

    e4. d8 f4. d8 | e d f d  e4 f8 fs | 
    g4. f8 a4. f8 | g f a f  g4 a8 bf | 
    c4. a8 ef'4. d8 | c bf4. ~ 2 | 
    r8 d, cs [ d ]  bf'4 a | f1 ||

    r8 a b [ a ]  c8 4 a8 | b8 4 a8 c2 | 
    r8 a b [ a ]  c8 4 a8 | b8 4 a8 c2 |
    r8 c d [ c ]  e8 4 c8 | d8 4 c8  e4 g, |
    c4. g8  bf8 4 f8 | a8 4 e8  g4. f8 ||

    e4. d8 f4. d8 | e d f d  e4 f8 fs | 
    g4. f8 a4. f8 | g f a f  g4 a8 bf | 
    c4. a8 ef'4. d8 | c bf4. ~ 2 | 
    r8 d, cs [ d ]  bf'4 a | f2 r ||
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    I'm through with love 
    I'll ne -- ver fall a -- gain. 
    
    Said "\"a"  -- "dieu\""  to love, 
    "\"Don't" e -- ver call a -- "gain\""

    for I must have you or no -- one, 
    and so I'm through with love.


    I've locked my heart, 
    I'll keep my feel -- ing there.

    I have stocked my heart 
    with i -- cy, frig -- id air, 

    and I mean to care for no -- one, 
    be -- cause I'm through with love.


        Why did you lead me to think you could care?
        You did -- n't need me for you had your share
        of slaves a -- round you to hound you and swear, 
        with deep e -- mo -- tion, de -- vo -- tion to you.


    Good -- bye to Spring, 
    and all it meant to me, 

    It can ne -- ver bring 
    the thing that used to be, 

    for I must have you or no -- one, 
    and so I'm through with love. 
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
        subtitle = "(Elaine key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f ef <<
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
        subtitle = "(Elaine key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f ef \transpose bf, c <<
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
        subtitle = "(Elaine key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f ef \transpose ef, c <<
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
        subtitle = "(hipsteria key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f bf <<
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
        subtitle = "(hipsteria key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f bf \transpose bf, c <<
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
        subtitle = "(hipsteria key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f bf \transpose ef c <<
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
