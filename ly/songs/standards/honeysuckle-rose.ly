\version "2.19.83"

titleLeft = "Honeysuckle"
titleRight = "Rose"
title = "Honeysuckle Rose"
composerName = " T. 'F.' Waller"
lyricistName = "A. Razaf"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview
rm pdf/songs/standards/honeysuckle-rose*
lilypond ly/songs/standards/honeysuckle-rose.ly 
mv honeysuckle-rose*pdf pdf/songs/standards
for file in pdf/songs/standards/honeysuckle-rose*pdf ; do op $file ; done 

%}

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

\include "ly/ily/layout.ily"

structure = \relative c' { 

    \key f \major
    \tempo "Medium, with a lift"

    s1*8 \break

    \bar "[|:"

    \repeat volta 2 { 
        \mark \markup \box "A"
        s1*4 \break
        s1*4 \bar "||" \break

        \mark \markup \box "A"
        s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
        s1*4 \bar "||" \break

        \mark \markup \box "B"
        s1*4 \break
        s1*4 \bar "||" \break

        \mark \markup \box "A"
        s1*4 \break
        s1*2 
    }
    \alternative {
        { s1*2  \bar ":|]" } 
        { s1*2 }
    }
    \bar "|."    
}


chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1:m7 | c:7 | g:m7 | c:7 | 
    f1 | g2:m7 c:7 | a1:m7.5- | d:7.9- ||
}
chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g2:m7 c:7 | g:m7 c:7 | g:m7 c:7 | g:m9 c:7 | 
    f2 d:m7 | g:m7 c:7 | f1 | a2:m7.5- d:7.9- ||

    g2:m7 c:7 | g:m7 c:7 | g:m7 c:7 | g:m9 c:7 | 
    f2 af:dim7 | g:m7 c:7 | f df:7 | g:m7 f ||

    f2:7 c:m7 | f:dim7 f:7 | bf f:9 | gf4:9 f:9 bf2 | 
    g2:7 d:m7 | g:dim7 g:7 | c:7 g:m7 | af4:9 g:9 c2:7 ||

    g2:m7 c:7 | g:m7 c:7 | g:m7 c:7 | g:m9 c:7 | 
    f2 af:dim7 | g:m7 c:7 | f1 | a2:m7.5- d:7.9- ||
        f2  df:7 | g4:m7 gf:7 f2:6 ||
}
chordsSong = \chordmode { 
    \chordsIntro
    \chordsForm
}

melodyIntro = \relative c' { 
    \comp #4 \comp #4 \comp #4 \comp #4 
    \comp #4 \comp #4 \comp #4 \comp #4 
}
melodyHead = \relative c'' { 
    c8 bf d, f a2 | c8 bf d, f a2 | c8 bf d, f a4 4 | 2 8 g f d | 
    f4 4 2 ~ | 2 a8 g f d | f1 ~ | 4 r r2 ||

    c'8 bf d, f a2 | c8 bf d, f a2 | c8 bf d, f a4 4 | 2 8 g f d | 
    f4 4 2 ~ | 2 a8 g f d | f1 ~ | 4 r r2 ||

    f2 g | gs a | r4 bf8 c r bf c4 | df4 c8 bf ~ 2 | 
    g2 a | as b | r4 c8 d r c d4 | ef d8 c ~ 2 ||

    c8 bf d, f a2 | c8 bf d, f a2 | c8 bf d, f a4 4 | 2 8 g f d | 
    f4 4 2 ~ | 2 a8 g f d | f1 ~ | 4 r r2 ||
        f1 ~ | 2 ~ 8 r r4 ||
}
melodySong = \relative c' { 
    \melodyIntro
    \melodyHead
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Ev -- 'ry hon -- ey bee
    fills with jeal -- ous -- y 
    when they see you out with me.

    I don't blame them, 
    good -- ness knows, 
    Hon -- ey -- suck -- le Rose.

    When you're pass -- ing by, 
    flow -- ers droop and sigh, 
    and I know the rea -- son why:

    You're much swee -- ter
    good -- ness knows, 
    Hon -- ey -- suck -- le Rose.

    Don't buy su -- gar, 
    you just have to touch my cup.
    You're my su -- gar, 
    it's sweet when you stir it up.

    When I'm tak -- ing sips
    from your tas -- ty lips, 
    seems the hon -- ey fair -- ly drips.

    You're con -- fec -- tion, 
    good -- nees knows, 
    Hon -- ey -- suck -- le Rose.
    Rose.

    Rose.
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
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
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
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
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
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-C"
    \header {
        subtitle = "(Amy Carr key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose f, c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose f, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Bb"
    \header {
        subtitle = "(Amy Carr key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose f c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose f, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-C-for-Eb"
    \header {
        subtitle = "(Amy Carr key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose f c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose f, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
    }
}
