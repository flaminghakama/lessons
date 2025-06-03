\version "2.24.0"

titleLeft = "Joyce Is A"
titleRight = "Punk Rocker"
titleFull = "Joyce Is A Punk Rocker"
composerName = "E. Alt"
lyricistName = "K. C. Sulkis"
arranger = ""
copyright = ""

%{

killPreview ; rm joyce-is-a-punk-rocker*pdf ; lilypond ly/songs/alt/joyce-is-a-punk-rocker.ly ; for file in joyce-is-a-punk-rocker*pdf ; do op $file ; done 

killPreview
rm pdf/songs/alt/joyce-is-a-punk-rocker*
lilypond ly/songs/alt/joyce-is-a-punk-rocker.ly 
mv joyce-is-a-punk-rocker*pdf pdf/songs/alt
mv joyce-is-a-punk-rocker*midi midi
for file in pdf/songs/alt/joyce-is-a-punk-rocker*pdf ; do op $file ; done 

git add . ; git commit -m"new collab" ; git push 
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

    \tempo "Punk Rock" 4=200
    \key e \minor
    \time 4/4

    \startSection "Vamp"
    s1*4 

    \startSection "Verse 1"
    s1*12

    \startSection "Verse 2"
    s1*12

    \startSection "Bridge"
    s1*8

    \startSection "Vamp"
    s1*4 

    \startSection "Verse 3"
    s1*12

    \startSection "Verse 4"
    s1*12

    \startSection "Bridge"
    s1*8
    s1*8
    s1*8
    \bar "|."
}

rehearsalMarkTweaksForScore = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 1"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 2"
    s1*12
    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*8
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 3"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 4"
    s1*12
    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
}

rehearsalMarkTweaksForLeadSheet = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 1"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 2"
    s1*12
    \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*8
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 
    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 3"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 4"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
}

rehearsalMarkTweaksForBass = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( 3.5 . 0 )

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 1"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 2"
    s1*12
    \break 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*8
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Vamp"
    s1*4 
    \pageBreak 

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 3"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Verse 4"
    s1*12
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
}

chordsVamp = \chordmode { 
    e1:m | s | s | s | 
}
chordsVerse = \chordmode { 
    e1:m | s | s | s | 
    a1:m | s | e:m | s | 
    c1:m | b:7 | e:m | s | 
}
chordsBridge = \chordmode { 
    d1:7 | s | e2..:m e8:m | s1 | 
    d1:7 | s | e2..:m b2.:7 s4. | 
}
chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    \chordsVamp
    \chordsVerse
    \chordsVerse
    \chordsBridge
    \chordsVamp
    \chordsVerse
    \chordsVerse
    \chordsBridge
    \chordsBridge
    \chordsBridge
}

bassVamp = \relative c { 
    <>\xmf e8 <>\xmp 4 8  8 4 8 | <>\xmf e8 <>\xmp 4 8  8 4 8  | <>\xmf e8 <>\xmp 4 8  8 4 8  | <>\mf 4 4 r2 | 
}
bassVerse = \relative c { 
    \accidentalStyle default
    <>\xf e8 <>\xmp 4 8  <>\xf e8 <>\xmp 4 8 | <>\xf e8 <>\xmp 4 8  <>\xmf d2 | <>\xf e8 <>\xmp 4 8 <>\xf e8 <>\xmp 4 8 | <>\mf 4 4 r2 | 
    <>\xf a8 <>\xmp 4 8  <>\xf 8 <>\xmp 4 8 | <>\xf 8 <>\xmp 4 8  <>\xmf g2 | <>\xf e8 <>\xmp 4 8 <>\xf 8 <>\xmp 4 8 | <>\xmf 4 4 r2 | 
    <>\xf c'8 <>\xmp 4 8  <>\xf 8 <>\xmp 4 8 | <>\xf b8 <>\xmp 4 8  <>\xf 8 <>\xmp 4 8 | <>\xf e,8 <>\xmp 4 8  <>\xf 8 8 8 8 | <>\xff 4 r r e ||
}
bassBridge = \relative c { 
    <>\xmf d4. 8 4. 8 | r d r d8 2 | e2 8 4 8 ~ | 1 | 
    d4. 8 4. 8 | r d r d8 2 | e2 8 4 <>\xff b8 ~ | 1 | 
}
bassLine = { 
    \accidentalStyle default
    \bassVamp
    \bassVerse
    \bassVerse
    \bassBridge
    \bassVamp
    \bassVerse
    \bassVerse
    \bassBridge
    \bassBridge
    \bassBridge
}

melodyVamp = \relative c'' { 
    <>\xp R1*4 
}
melodyVerse = \relative c'' { 
    R1 | r2 <>\xmf e8 4 d8 | r2 r4 <>\xff e | e r r2 ||
    R1 | r2 <>\xmf e8 4 d8 | r4 d r8 <>\xf d8 e4 | 4 r r2 ||
    R1 | r2 <>\xmf d8 4 8 | <>\xff d4 e4 r2 | R1 ||
}
melodyBridge = \relative c'' { 
    <>\xp R1*8
}


melody = \relative c'' { 
    \accidentalStyle default
    \melodyVamp
    \melodyVerse
    \melodyVerse
    \melodyBridge
    \melodyVamp
    \melodyVerse
    \melodyVerse
    \melodyBridge
    \melodyBridge
    \melodyBridge
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    One, Two, Three. Four! Five!
    One, Two, Three, Four, Five! Six! Sept!
    One, Two, Three, Four, Five!
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
}

\book {
  \bookOutputSuffix "Score"
    \header {
        poet = "Concert Score"
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
                    \rehearsalMarkTweaksForScore
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                    \lyricsHeadOne 

                    \lyricsHeadOne 
                    \lyricsHeadOne 
                } 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \bassLine
                >>
            }
        >>

    }
}

\book {
  \bookOutputSuffix "Lead-Sheet"
    \header {
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
                    \rehearsalMarkTweaksForLeadSheet
                    \melody
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsHeadOne 
                    \lyricsHeadOne 

                    \lyricsHeadOne 
                    \lyricsHeadOne 
                } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "Bass"
    \header {
        poet = "Bass"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "bass" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \clef bass
                \new Voice = "bass" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForBass
                    \bassLine
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Sounds"
    \header {
        poet = "Chords"
        instrumentName = \poet
    }
    \score {
        <<
            \new Staff = "voice" <<
                \structure
                \melody
            >>
            \new ChordNames { 
                \chordsSong 
            }
            \new Staff = "bass" <<
                \structure
                \transpose c c,, \bassLine
            >>
        >>
        \midi {}
    }
}

