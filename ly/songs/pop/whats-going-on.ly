\version "2.19.83"

titleLeft = "What's"
titleRight = "Going On"
title = "What's Going On"
composerName = "M. Gaye"
lyricistName = "M. Gaye"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"


%{

killPreview ; rm whats-going-on*pdf ; lilypond ly/songs/pop/whats-going-on.ly ; for file in whats-going-on*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/whats-going-on*
lilypond ly/songs/pop/whats-going-on.ly 
mv whats-going-on*pdf pdf/songs/pop
for file in pdf/songs/pop/whats-going-on*pdf ; do op $file ; done 

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
 
    \key e \major
    \tempo 4=96
    \time 4/4
    \startSectionNoBarline "Intro"
    s1*4

    \bar "[|:"
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \startSectionNoBarline "Verse I"
    s1*12
    \bar ":|]"

    \startSectionNoBarline "Chorus"    
    s1*6
    s1*2
    s1*2

    \startSection "Bridge"
    s1*4 
    s1*4
    s1*4 
    \bar "|."    
}

pageBreaksVocal = \relative c' { 

    s1*4
    \break

    % "Verse I"
    s1*12

    \pageBreak

    % "Chorus"    
    s1*6
    \break 
    s1*2
    \break
    s1*2

    \break
    %  "Bridge"
    s1*4 \break
    s1*4 \break
    s1*4 
}

pageBreaksLead = \relative c' { 

    s1*4
    \break

    % "Verse I"
    s1*12
    \break

    % "Chorus"    
    s1*6
    \break 
    s1*2
    \break
    s1*2

    \break
    %  "Bridge"
    s1*4 \break
    s1*4 \break
    s1*4 
}


chordsIntro = \chordmode { 
    e1:maj7 | s | s | s |
}

chordsVerse = \chordmode { 
    e1:maj7 | s | cs:m7 | s | 
    e1:maj7 | s | cs:m7 | s | 
    fs1:m7 | s | b:7 | s | 
}

chordsChorus = \chordmode { 
    fs1:m9 | b:13 | fs:m9 | b:13 |
    fs1:m9 | b2:1.4.5.7.9.13 b:13 | 
    e1:maj7 | cs:m7 | e:maj7 | cs:m7 | 
}

chordsBridge = \chordmode {
    a1:m9 | s | s | s | 
    a1:m9 | s | s | s | 
    b1:1.4.5.7.9.13 | s | s | s | 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsIntro
    \chordsVerse
    \chordsChorus
    \chordsBridge
}
chordsSongForEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \chordsSong
}

melodyIntro = \relative c'' { 
    \comp #16
}
rhythmIntro = \relative c'' { 
    c4 8. 16 ~ 8 4 8 | 
    c4 8. 16 ~ 8 4 8 | 
}
bassIntro = \relative c, { 
    e4 ~ 8. b'16 ~ 8 cs b cs | 
    e,4 ~ 8. b'16 ~ 8 cs b cs | 
    \comp #8
}

melodyVerse = \relative c'' { 
    cs4 gs8 b ~ 16 cs8. r4 | r r8. cs16 ~ 8 b b cs | 
    gs8 4 fs8 ~ 8 e4. | R1 | 

    e'8 b16 cs ~ 16 gs8 b16 ~ 8 cs r4 | r r16 b8. cs8 b8 16 cs8. | 
    gs8 4 fs8 ~ 8 e4. | r4 r8. cs'16 ~ 8 gs ~ 16 fs8. | 

    e8 fs16 gs ~ 8 e8 2 | r2 \tuplet 3/2 { cs'4 e fs } |
    gs8 4 8 r16 fs16 8 ( ~ 8 cs ) | r8 ds4 ( cs8 ~ 8 b4. ) |
}
melodyChorus = \relative c'' { 
    gs16 b8 cs16 ~ 4 r r8 e, | gs16 b8 cs16 ~ 4 r r8 e, | 
    gs16 b8 cs16 ~ 4 r8 cs ~ 16 e8. | cs8 b cs4 r2 | 
    gs8 b cs4 r r8 e,8 | gs b cs4 r8 gs'4 8 |
    fs8 e16 16 ( ~ 16 b cs8 ) r4 r8 gs' | fs8 e16 16 ( ~ 16 b cs8 ) r8 fs4 gs8 | 
    fs8 e16 16 ( ~ 16 b cs8 ) r8 fs4 gs8 | fs8 e16 16 ( ~ 16 b cs8 ) r4 \comp #1 | 
}
harmonyChorus = \relative c'' { 
    r2 e8. cs16 ~ 4 | r2 e8. cs16 ~ 4 |
    r2 e8. cs16 ~ 4 | r2 e8. cs16 ~ 4 | 
    r2 e8. cs16 ~ 4 | r2 e8. cs16 ~ 4 | 
    r4 r8 cs e8 16 cs ~ 4 | r r8 cs e8 16 cs ~ 4 |     
    r4 r8 cs e8 16 cs ~ 4 | r r8 cs e8 16 cs ~ 4 |     
}
melodyBridge = \relative c'' { 
    b1 | c2 d | e1 ~ | 2 d4 c | 
    b1 | g2 d' | b1 ~ | 2 4 g | 
    gs1 | a2 b | cs1 | ds2 e | 
}

melodySong = \relative c' { 
    \melodyIntro
    \melodyVerse
    \melodyChorus
    \melodyBridge
}
melodySongForEb = \relative c' { 
    \melodySong
}

harmonySong = \relative c { 
    \clef bass
    \bassIntro
    s1*12
    \clef treble
    \harmonyChorus
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    %\repeat unfold 28 { \skip 1 }

    Mo -- ther, mo -- ther,
    There's too ma -- ny of you cry -- in'.

    Bro -- ther, bro -- ther, bro -- ther,
    There's far too ma -- ny of you dy -- in'.
    
    You know we've got to find a way
    To bring some lov -- in' here to -- day. Yeah

    Pick -- et lines and pick -- et signs
    Don't pun -- ish me with bru -- tal -- i -- ty
    Talk to me
    So you can see
    Oh, what's go -- ing on, 
    %(What's go -- ing on)
    what's go -- ing on, yeah, 
    %(What's go -- ing on)
    what's go -- ing on, ah, 
    %(What's go -- ing on)
    What's go -- ing on.
    %(What's go -- ing on)

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Fa -- ther, fa -- ther,
    We don't need to es -- ca -- late. \skip 1

    War is not the an -- swer
    For on -- ly love can con -- quer hate.

    \repeat unfold 9 { \skip 1 } 
    To bring some lov -- in' here to -- day. Yeah
}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Mo -- ther, mo -- ther,
    Eve -- ry -- bo -- dy thinks we're wrong. \skip 1
    
    Who are they to judge us
    Sim -- ply 'cause \skip 1 our hair is long?

    \repeat unfold 9 { \skip 1 } 
    To bring some under -- standing here to -- day.
}
lyricsHarmonyOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }

    Sis -- ter, Sis -- ter, 
    Sis -- ter, Sis -- ter, 
    Sis -- ter, Sis -- ter, 
    What's go -- ing on, 
    what's go -- ing on, 
    what's go -- ing on, 
    what's go -- ing on. 
}
lyricsHarmonyTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 10 { \skip 1 }

    Bro -- ther, Bro -- ther, 
    Bro -- ther, Bro -- ther, 
    Bro -- ther, Bro -- ther, 
}

\layout {
    \context {
        \Staff
        \RemoveEmptyStaves
    }
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
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    {    
                        \melodyIntro
                        \melodyVerse
                        <<
                            \melodyChorus \\
                            \harmonyChorus
                        >>
                        \melodyBridge
                    }
                    \pageBreaksLead
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Vocal"
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
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
                    \pageBreaksVocal
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
            \new Staff = "harmony" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "harmony" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \harmonySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "harmony" { \lyricsHarmonyOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "harmony" { \lyricsHarmonyTwo } 
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
        \transpose as, c <<
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
                    {    
                        \melodyIntro
                        \melodyVerse
                        <<
                            \melodyChorus \\
                            \harmonyChorus
                        >>
                        \melodyBridge
                    }
                    \pageBreaksLead
                >>
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
        \transpose ds c <<
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
                    {    
                        \melodyIntro
                        \melodyVerse
                        <<
                            \melodyChorus \\
                            \harmonyChorus
                        >>
                        \melodyBridge
                    }
                    \pageBreaksLead
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-D-for-C"
    \header {
        subtitle = "(Rado key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose e d <<
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
                    {    
                        \melodyIntro
                        \melodyVerse
                        <<
                            \melodyChorus \\
                            \harmonyChorus
                        >>
                        \melodyBridge
                    }
                    \pageBreaksLead
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "Vocal-in-D"
    \header {
        subtitle = "(Rado key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose e d <<
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
                    \melodySong
                    \pageBreaksVocal
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadThree } 
            }
            \new Staff = "harmony" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "harmony" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \harmonySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "harmony" { \lyricsHarmonyOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "harmony" { \lyricsHarmonyTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-D-for-Bb"
    \header {
        subtitle = "(Rado key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose e d \transpose bf, c <<
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
                    {    
                        \melodyIntro
                        \melodyVerse
                        <<
                            \melodyChorus \\
                            \harmonyChorus
                        >>
                        \melodyBridge
                    }
                    \pageBreaksLead
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "in-D-for-Eb"
    \header {
        subtitle = "(Rado key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose e d \transpose ef c <<
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
                    {    
                        \melodyIntro
                        \melodyVerse
                        <<
                            \melodyChorus \\
                            \harmonyChorus
                        >>
                        \melodyBridge
                    }
                    \pageBreaksLead
                >>
            }
        >>
    }
}