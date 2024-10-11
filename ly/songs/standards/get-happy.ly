\version "2.24.0"

titleLeft = "Get"
titleRight = "Happy"
titleFull = "Get Happy"
composerName = "H. Arlen"
lyricistName = "T. Koehler"
arranger = ""
copyright = ""

%{

killPreview ; rm get-happy*pdf ; lilypond ly/songs/standards/get-happy.ly ; for file in get-happy*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/get-happy*
lilypond ly/songs/standards/get-happy.ly 
mv get-happy*pdf pdf/songs/standards
for file in pdf/songs/standards/get-happy*pdf ; do op $file ; done 

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

    \key f \major
    \time 4/4

    \partial 4. 
    s4. 

    \startSection "A"
    s1*4 \break
    s1*4 \break
    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "C"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 \break
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    s4. 
    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )

}

rehearsalMarkTweaksForSharps = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 1 . 1 )
    s4. 
    \once \override Score.RehearsalMark.extra-offset = #'( -1 . 1 )
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 0 )
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )

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

    s4. 

    f1:6 | g2:m7 c:7 | f:6 d:aug7 | g:m7 c:7 | 
    f1:6 | bf2:6 b:dim7 | f:6/c c:7 | f:6 f:7 ||

    bf1:6 | c2:m7 f:7 | bf:6 g:aug7 | c:m7 f:7 | 
    bf1:6 | ef2:6 e:dim7 | bf:6/f f:7 | bf:6 c:7 ||

    c2:m7 f:7 | bf:m7 ef:7 | af:m7 df:7 | g:m7 c:7 |     
    c2:m7 f:7 | bf:m7 ef:7 | af:m7 df:7 | g:m7 c:7 |     

    f1:6 | g2:m7 c:7 | f:6 d:aug7 | g:m7 c:7 | 
    f1:6 | bf2:6 b:dim7 | f:6/c c:7 | f:6 g4:m7 c:7 ||
}


melody = \relative c' { 
    \accidentalStyle default

    c8 f [ a ] || 
    c8 4 8 bf4 a8 c ~ | 8 c4. r8 c, f [ a ] | c8 4 8 bf4 a8 f ~ | 2 r8 c f [ a ] | 
    c8 4 8 bf4 a8 c ~ | 8 c4. r8 f4 8 ~ | 8 a, bf b c4 a8 f ~ | 2 r8 f bf [ d ] ||

    f8 4 8 ef4 d8 f ~ | 8 4. r8 f, bf [ d ] | f8 4 8 ef4 d8 bf ~ | 2 r8 f bf [ d ] |
    f8 4 8 ef4 d8 f ~ | 8 4. r8 bf4 8 ~ | 8 d, ef e f4 d8 bf ~ | 2. r4 ||

    r8 d r d c4 r | c4 8 bf r4 r8 bf | r bf r bf af4 r | a?4 8 g r2 | 
    r8 d'4. c2 | 4. bf8 ~ 2 | r8 bf4. af4 4 | a?4. g8 ~ 8 c, f a || 

    c8 4 8 bf4 a8 c ~ | 8 c4. r8 c, f [ a ] | c8 4 8 bf4 a8 f ~ | 2 r8 c f [ a ] | 
    c8 4 8 bf4 a8 c ~ | 8 c4. r8 f4 8 ~ | 8 a, bf b c4 8 f ~ | 2 r ||
}
melodyForElaine = \relative c' { 
    \accidentalStyle default

    c8 f [ a ] || 
    c8 4 8 bf4 a8 c ~ | 8 c4. r8 c, f [ a ] | c8 4 8 bf4 a8 f ~ | 2 r8 c f [ a ] | 
    c8 4 8 bf4 a8 c ~ | 8 c4. r8 f4 8 ~ | 8 a, bf b c4 a8 f ~ | 2 r8 f bf [ d ] ||

    f8 4 8 ef4 d8 f ~ | 8 4. r8 f, bf [ d ] | f8 4 8 ef4 d8 bf ~ | 2 r8 f bf [ d ] |
    f8 4 8 ef4 d8 f ~ | 8 4. r8 bf,4 8 ~ | 8 d, ef e f4 d8 bf ~ | 2. r4 ||

    r8 d' r d c4 r | c4 8 bf r4 r8 bf | r bf r bf af4 r | a?4 8 g r2 | 
    r8 d'4. c2 | 4. bf8 ~ 2 | r8 bf4. af4 4 | a?4. g8 ~ 8 c, f a || 

    c8 4 8 bf4 a8 c ~ | 8 c4. r8 c, f [ a ] | c8 4 8 bf4 a8 f ~ | 2 r8 c f [ a ] | 
    c8 4 8 bf4 a8 c ~ | 8 c4. r8 f4 8 ~ | 8 a, bf b c4 8 f ~ | 2 r ||
}
melodyForFlats = \relative c'' { 
    \melody
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    For -- get your trou -- bles and just get hap -- py, 
    You'd bet -- ter chase all your cares a -- way.  

    Sing Hal -- le -- lu -- jah, come on, get hap -- py, 
    Get read -- y for the judge -- ment day.  

    The sun is shin -- in', come on, get hap -- py, 
    The Lord is wait -- ing to take your hand.  

    Shout Hal -- le -- lu -- jah, come on, get hap -- py, 
    We're go -- ing to the prom -- ised land.  

    Head a -- cross the Riv -- er, 
    wash sins a -- way in the tide.

    It's so peace -- ful  
    on the o -- ther side.

    For - get your trou -- bles and just get hap -- py, 
    You'd bet -- ter chase all your cares a -- way.  

    Shout Hal -- le -- lu -- jah, come on, get hap -- py, 
    Get read -- y for the judge -- ment day.  
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
  \bookOutputSuffix "in-F-for-C"
    \header {
        subtitle = "(with alternate bridge)"
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
  \bookOutputSuffix "in-E-for-C"
    \header {
        subtitle = "(Elaine key candidate)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose f e <<
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
                    \rehearsalMarkTweaksForSharps
                    \melodyForElaine
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
        subtitle = "(Elaine key candidate)"
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
                    \melodyForElaine
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
        subtitle = "(with alternate bridge)"
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
        subtitle = "(with alternate bridge)"
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

