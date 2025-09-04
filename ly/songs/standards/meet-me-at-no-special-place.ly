\version "2.24.0"

titleLeft = "Meet Me At "
titleRight = "No Special Place"
titleFull = "Meet Me At  No Special Place"
composerName = "A. Terker, H. Pye & J. R. Robinson"
lyricistName = "A. Terker, H. Pye & J. R. Robinson"
arranger = ""
copyright = ""

%{

killPreview ; rm meet-me-at-no-special-place*pdf ; lilypond ly/songs/standards/meet-me-at-no-special-place.ly ; for file in meet-me-at-no-special-place*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/meet-me-at-no-special-place*
lilypond ly/songs/standards/meet-me-at-no-special-place.ly 
mv meet-me-at-no-special-place*pdf pdf/songs/standards
for file in pdf/songs/standards/meet-me-at-no-special-place*pdf ; do op $file ; done 

git add . ; git commit -m"lyrics" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.padding = #0

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##f
  ragged-right = ##f
  ragged-last-bottom = ##f

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

structureOriginal = \relative c' { 

    \tempo 4=84
    \key d \minor
    \startSection "Intro"
    s1*2

    \startSection "A"
    s1*8

    \startSection "A"
    s1*8

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8

    \startSection "A"
    s1*8

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8

    \startSection "Coda"
    s1*8
    \bar "|."
}

structureForm = \relative c' { 

    \tempo 4=84
    \key c \minor
    \startSection "Intro"
    s1*2

    \startSection "A"
    \repeat volta 2 { 
        \startRepeat
        s1*7
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8
    \bar "|."
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . -1 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key ef \major
    s1*6
    \bar "|."    
}

tweaksOriginal = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 

    % \tempo 4=84

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "Intro"
    s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "A"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "A"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "B"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "A"
    s1*8

    \pageBreak 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "A"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "B"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "A"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 ) 
    % "Coda"
    s1*6
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    bf1:13 | a:9 ||

    bf1:13 | s | s | s | 
    f2:7 ef:7 | d:m7 df:7 | g:m7 bf4:7 c:7 | f1 ||

    bf1:13 | s | s | s | 
    f2:7 ef:7 | d:m7 df:7 | g:m7 bf4:7 c:7 | f1 ||

    af1:m9 | df:13 | gf:13 | s |
    d1:m7 | g:7 | e:m7.5- | a:7 ||

    bf1:13 | s | s | s | 
    f2:7 ef:7 | d:m7 df:7 | g:m7 bf4:7 c:7 | f1 ||

    bf1:13 | s | s | s | 
    f2:7 ef:7 | d:m7 df:7 | g:m7 bf4:7 c:7 | f1 ||

    af1:m9 | df:13 | gf:13 | s | 
    d1:m7 | g:7 | e:m7.5- | a:7 ||

    bf1:13 | s | s | s | 
    f2:7 ef:7 | d:m7 df:7 | g:m7 bf4:7 c:7 | f1 ||

    bf1:7 | s | f:7 | s | 
    bf:1 | a2:m7.5- d:aug7 | g:m7 bf4:7 c:7 | f1 || 


}
melodyIntro = \relative c'' { 
    \comp #8 
}
melodyAOne = \relative c' { 
    r4 \tuplet 3/2 { d8 f af } g8 f4. | \tuplet 3/2 { g8 f d ~ } 2 r4 | 
    r8 d \tuplet 3/2 { f8 af g } r4 r8 f | \tuplet 3/2 { g8 f d ~ } 4 r \tuplet 3/2 { r8 a' ( c, ) } | 
    f8 a r4 r r8 f | c'4 \tuplet 3/2 { bf8 a f ~ } 8 c e g | 
    f8 c e g f c e f ~ | 2 r ||      

}
melodyATwo = \relative c' { 
    r4 \tuplet 3/2 { d8 f af } g8 f4. | \tuplet 3/2 { g8 f d ~ } 4 r2 | 
    r4 \tuplet 3/2 { r8 d f } af8 g ~ 8 f16 g ~ | 8 f16 d ~ 4 r \tuplet 3/2 { r8 a' ( c, ) } | 
    f8 a r4 r r8 f | c'4 \tuplet 3/2 { bf8 a f ~ } 8 c e g | 
    f8 c e g f c e f ~ | 2     
}
melodyB = \relative c' {  
    r8 f fs [ g ] ||
    af8 bf4 df8 ~ 4. cf8 | af bf4. r2 | 
    r8 ef, af [ bf ~ ] 8 df, ff af ~ | 2 r4 r8 g | 
    a8 d4 a8 ~ 8 d a4 | g8 d4. r4 r8 d |
    \tuplet 3/2 { e8 8 8 ~ } 4 r \tuplet 3/2 { r8 f e } | a8 b4 cs8 ~ 4 r || 
}
melodyCoda = \relative c'' { 
    r8 c ~ 16 c bf af  c8 8 r f, | 
    \tuplet 3/2 4 { c'4 c8  c bf af } c4 r8 f, | 
    
    \tuplet 3/2 { c'8 a c } r8 f,  \tuplet 3/2 { c'4 8 } r8 f,8 | 
    \tuplet 3/2 4 { c'8 4  c8 bf a } c4 r8 c |

    c8 bf4. r4 r8 f | a bf c bf ~ 8 f a bf | 
    a8 c bf a f c g' f ~ | 2 r2 |  
}

melody = \relative c' { 
    \melodyIntro
    \melodyAOne
    \melodyATwo
    \melodyB 
    \melodyATwo r2 
    <>\xmp \comp #16 
    <>\xmp \comp #14
    \melodyB 
    \melodyATwo r2 
    \melodyCoda
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    % A 
    Ba -- by, we two can't get a -- long.
    I'm ne -- ver right, you're ne -- ver wrong.
    So meet me at no spe -- cial place
    And I'll be there at no par -- tic -- u -- lar time.

    % A
    Ba -- by, it just ain't com -- mon sense
    Mix -- in' up love with ar -- gu -- ments.
    So meet me at no spe -- cial place
    And I'll be there at no par -- tic -- u -- lar time.

    % B 
    I'm all fed up on stor -- my wea -- ther.
    I'm go -- ing where it's June.
    Here's hop -- in' I see you ne -- ver
    'cause if I do, that will be too soon.

    % A
    Now that I've put my heart on ice
    Mis -- sing you will seem par -- a -- dise
    So meet me at no spe -- cial place
    And I'll be there at no par -- tic -- u -- lar time


    % A 

    % B
    You'd bet -- ter bring a -- long your glas -- ses
    In case I'm hard to find
    You'll wish you could see be -- fore you
    As clear -- ly as you can see be -- hind

    % A
    You can turn back in re -- tro -- spect
    Of the times you stuck out your neck.
    So meet me at no spe -- cial place,
    And I'll be there at no par -- tic -- u -- lar time.

    % Coda 
    All we do is make up
    Then quarrel all o -- ver a -- gain,
    But this is it, the break -- up
    From now on, you knew me when...

    So meet me at no spe -- cial place,
    And I'll be there at no par -- tic -- u -- lar time!

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

}
lyricsHeadThree = \lyricmode {
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
  \bookOutputSuffix "for-C"
    \header {
        subtitle = ""
        poet = "Concert Pitch"
    }
    \score {
        <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureOriginal
                    \tweaksOriginal
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne} 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadThree } 
            % }
        >>
    }
}
