\version "2.24.0"

titleLeft = "Bernie's"
titleRight = "Tune"
titleFull = "Bernie's Tune"
composerName = "B. Miller"
lyricistName = "M. Stoller & J. Lieber"
arranger = "G. Mulligan"
copyright = ""

%{

killPreview ; rm bernie*pdf ; lilypond ly/songs/standards/bernie*.ly ; mv bernie*.pdf pdf/songs/standards ; for file in pdf/songs/standards/bernie*pdf ; do open -a Preview $file ; done

killPreview
rm bernie*pdf
lilypond ly/songs/standards/bernie*.ly
mv bernie*.pdf pdf/songs/standards
for file in pdf/songs/standards/bernie*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"fixing pitch" ; git push 
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
    \key d \minor
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 \bar "||" \break
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m | s | bf:7.11+ | s | 
    e1:m7.5- | a:7 | d:m | e2:m7.5- a:7 | 
    d1:m | s | bf:7.11+ | s |  
    e1:m7.5- | a:7 | d:m | s | 
    bf2 g:7 | c:m7 f:7 | bf g:7 | c:m7 f:7 | 
    bf2 g:7 | c:m7 f:7 | bf1| e2:m7.5- a:7 | 
    d1:m | s | bf:7.11+ | s |  
    e1:m7.5- | a:7 | d:m | s | 
}

melodyA = \relative c'' { 
    r8 a r gs a4 r8 a | r gs a4 a,8 d f a | af2 ~ 4. e8 ~ | 1 |  
    r8 g r fs g4 r8 g | r fs g4 a,8 cs e g | f2 ~ 4. d8 ~ | 1 | 
}
melodyB = \relative c' { 
    bf4 4 g'8 f4 d8 | c4. d8 ~ 2 | 
    bf4 4 g'8 f4 d8 | c1| 
    bf4 4 g'8 f4 d8 | c4. d8 ~ 2 | 
    r8 a'4 8 2 ~ | 8 g f e cs2 | 
}
melodyForm = \relative c' { 
    \melodyA
    \melodyA
    \melodyB
    \melodyA
}

harmonyA = \relative c'' { 
    r8 d r cs d4 r8 d | r cs d4 d,8 f a cs | c2 ~ 4. af8 ~ | 1 |  
    r8 b r as b4 r8 b | r as b4 cs,8 e g b | a2 ~ 4. f8 ~ | 2  
}
harmonyB = \relative c'' { 
    g8 f d c ||
    bf1 | c2 g'8 f d c | bf1 | c2 g'8 f d c |
    bf1 | c2 g'8 f d c | bf2. c8 a ~ | 1 ||
}
harmonyForm = \relative c' { 
    \harmonyA r2 
    \harmonyA
    \harmonyB
    \harmonyA r2
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    In the park, in the dark, un -- er -- neath the moon.
    Heard a boy and a girl hum -- min' Ber -- nie's Tune.

    Went to sleep, count -- in' sheep, by a blue la -- goon.
    Heard a frog, on a log, croak -- in' Ber -- nie's Tune.

    It's so ea -- sy to whist -- le, 
    It's so ea -- sy to sing.
    E -- ven hum -- ming birds hum it, 
    it's the thing.

    Of -- fice clerks, so -- da jerks picked it up so soon.
    Mil -- lion -- aires, e -- ven squares, whist - le Ber -- nie's Tune.
}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Hark the lark, in the park, cra -- zy as a loon.
    In a tree, skill -- ful -- ly sing -- in' Ber -- nie's Tune.

    Lit -- tle kids go to school sing-- in' Ber -- nie's Tune.
    Gurg -- lin' brooks, bub -- lin pools, bab -- ble Ber -- nie's Tune.

    You don't have to read mu -- sic
    you don't have to be smart.
    Ber -- nie said you can sing it, 
    from the heart.

    So if you hap -- pen to get the urge to croon,
    Take a tip, man get hip, make it Ber -- nie's Tune.
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
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadTwo } 
            }
        >>
    }
}

\book {
  \bookOutputSuffix "lead-and-harmony-for-C"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Concert Lead & Harmony"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \with {
                \consists Merge_rests_engraver
            } \transpose c, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \accidentalStyle modern
                    \structure
                    <<
                        \melodyForm \\
                        \transpose d d, \harmonyForm
                    >>
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
        >>
    }
}


\book {
  \bookOutputSuffix "harmony-for-Bb"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Bb Harmony"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \accidentalStyle modern
                    \structure
                    \harmonyForm
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "lead-and-harmony-for-Bb"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Bb Lead & Harmony"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \with {
                \consists Merge_rests_engraver
            } \transpose bf,, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \accidentalStyle modern
                    \structure
                    <<
                        \melodyForm \\
                        \transpose d d, \harmonyForm
                    >>
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "harmony-for-Eb"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Eb Harmony"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \accidentalStyle modern
                    \structure
                    \harmonyForm
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "lead-and-harmony-for-Eb"
    \header {
        subtitle = ""
        arranger = ""
        instrumentName = "Eb Lead & Harmony"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsForm 
            }
            \new Staff = "voice" \with {
                \consists Merge_rests_engraver
            } \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \accidentalStyle modern
                    \structure
                    <<
                        \melodyForm \\
                        \transpose d d, \harmonyForm
                    >>
                >>
            }
        >>
    }
}
