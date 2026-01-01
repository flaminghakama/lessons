\version "2.24.0"

titleLeft = "All"
titleRight = "Of Me"
title = "All Of Me"
composerName = "S. Simons/G. Marks"
lyricistName = ""
arranger = ""
copyright = ""

%{

killPreview ; rm caravan*pdf ; lilypond ly/songs/standards/caravan*.ly ; for file in caravan*pdf ; do open -a Preview $file ; done

killPreview
rm caravan*pdf
lilypond ly/songs/standards/caravan*.ly
mv caravan*.pdf pdf/songs/standards
for file in pdf/songs/standards/caravan*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"tranposed" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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

structureIntro = \relative c' { 
    \key a \minor
    \tempo "Moderato"
    \time 4/4
    s1*4 \break
    s1*4 \break

    \mark \markup "Vamp"
    \bar "[|:"
    s1*2 
    \bar ":|]" \break
}

structureVerse = \relative c' { 
    \override Staff.TimeSignature #'stencil = ##f  
    \key a \minor
    \startSectionNoBarline "Verse"
    s1*4 \break 
    s1*4 \break  
    s1*4 \bar "||"
}

structureHead = \relative c' { 
    \override Staff.TimeSignature #'stencil = ##f  
    \key a \minor
    \startSectionNoBarline "Chorus"
    \bar "[|:" 
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break
        \bar "||"
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*2 
    }
    \alternative { 
        { s1*2  \bar ":|]" \break }
        { s1*2 }
    }
    s1*4 
    \bar "|."
}

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:6 | f:m6 | c2:maj7/e g:6/bf | a1:9 | 
    d1:m7.5- | g:13 | c2 f:m6 | c1 ||

    c2 cs:dim7 | d:m6 g:7 ||
}

chordsVerse = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c2 cs:dim7 | d:m6 g:7 | c/e ef:dim7 | d:1.3-.5.7.11 g:7 |
    c2/e c:m/ef | g/d e:m | a:m7 d:13 | g1:7 |

    d2:7/fs f:dim7 | c/e ef:dim7 | d:m7 a:7/cs | af/c g4:7 g:aug7 ||
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7 | s | e:7 | s | 
    a1:7 | s | d:m | s | 
    e1:7 | s | a:m | s | 
    d1:7 | s | d:m7 | g:7 ||

    c1:maj7 | s | e:7 | s | 
    a1:7 | s | d:m | s | 
    f1 | f:m | c2:maj7 g:m/bf | a1:9 | 
    d1:m7.5- | g:13 | c2:6 ef:dim7 | d:m7 g:aug7 ||

    e1:m7.5- | a:aug7 | d1:m7.5- | g:13 | 
    c2:maj7 f:m6 | s c |

}

melodyIntro = \relative c'' { 
    d2 c4 b | d2. c4 | b2 e,4 g | b2. a4 | 
    c2 af4 c | e2 2 | c1 | s1 ||

    r8 g8 8 [ 8 ] 8 bf4 a8 | g d' b g ~ 2 ||
}
melodyVerse = \relative c'' { 
    r8 g8 8 [ 8 ] 8 bf4 a8 | g d' b g ~ 2 |
    r8 c8 8 [ 8 ] d4 c | g1 | 

    g8 8 8 8 ~ 8 a4 g8 | d'4 b8 g ~ 4. e8 |
    c'8 e, g b ~ 4 4 | g1 | 

    e'4 d c b | d c b4. a8 | 
    c4 b a g | bf af g2 ||
}
harmonyIntro = \relative c' { 
    f4 a2 d,4 | f af2 d,4 | e c d2 | cs4 g'2 cs,4 |
    d4 c f af | g fs f2 | r8 g, c [ e ]  f af c d | <e g,>2 c,4 r ||

    r4 e4 2 | f4. 8 ~ 2 ||
}
harmonyVerse = \relative c' { 
    r4 e4 2 | f4. 8 ~ 2 |
    r4 g4 fs2 | f1 | 

    c4. 8 ~ 2 | b'4 g8 d ~ 2 | 
    g4. fs8 ~ 4 c | c a b2 |  

    a'2 af | g fs | 
    f2 e | ef d4 ds ||
}
melodyForm = \relative c'' { 
    c4. g8 e2 ~ | 2 \tuplet 3/2 { c'4 d c } | b4. gs8 e2 ~ | 1 | 
    a4. g8 e2 ~ | 4 ds \tuplet 3/2 { e4 bf' a } | g2 f ~ | 1 | 

    e4. ef8 d2 ~ | 2 \tuplet 3/2 { e4 gs b } | d2 c ~ | 1 | 
    b4. bf8 a2 ~ | 2 \tuplet 3/2 { a4 d b } | a1 | b | 

    c4. g8 e2 ~ | 2 \tuplet 3/2 { c'4 d c } | b4. gs8 e2 ~ | 1 | 
    a4. g8 e2 ~ | 4 ds \tuplet 3/2 { e4 bf' a } | g2 f ~ | 1 | 

    d'2 c4 b | d2. c4 | b2 e,4 g | b2. a4 | 
    c2 af4 c | e2 2 | c1 | R1 |  
    
    d2 bf4 d | cs2 2 | c2 af4 c | e2 2 |
    c1 ~ | 2 c4 r  ||
}

lyricsVerse = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    You took my kis -- ses and you took my love,
    You taught me how to care;
    Am I to be just the rem -- nant of a one side -- ed love af -- fair?

    All you took,
    I glad -- ly gave,
    There's no -- thing left for me to save
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    All of me
    Why not take all of me
    Can't you see
    I'm no good with -- out you

    Take my lips
    I want to lose them
    Take my arms
    I'll ne -- ver use them

    Your good -- bye
    Left me with eyes that cry
    How can I
    Go on dear with -- out you

    You took the part
    That once was my heart
    So why not
    take all of me

    why not take all of 
    why not take all of me.
}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = ""
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
                \chordsIntro
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureIntro
                    << 
                        \melodyIntro \\
                        \harmonyIntro
                    >>
                >>
            }
        >>
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsVerse
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                    \structureVerse
                    \melodyVerse
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsVerse } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureHead
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
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
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureIntro
                    << 
                        \melodyIntro \\
                        \harmonyIntro
                    >>
                >>
            }
        >>
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsVerse
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureVerse
                    \melodyVerse
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsVerse } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureHead
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
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
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
            }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureIntro
                    << 
                        \melodyIntro \\
                        \harmonyIntro
                    >>
                >>
            }
        >>
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsVerse
            }
            \new Staff = "voice" \transpose ef c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureVerse
                    \melodyVerse
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsVerse } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureHead
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-for-C"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureIntro
                    << 
                        \melodyIntro \\
                        \harmonyIntro
                    >>
                >>
            }
        >>
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsVerse
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureVerse
                    \melodyVerse
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsVerse } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureHead
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-for-Bb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureIntro
                    << 
                        \melodyIntro \\
                        \harmonyIntro
                    >>
                >>
            }
        >>
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsVerse
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureVerse
                    \melodyVerse
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsVerse } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureHead
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "in-F-for-Eb"
    \header {
        subtitle = "(Amy Carr Key)"
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsIntro
            }
            \new Staff = "voice" \transpose ef c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureIntro
                    << 
                        \melodyIntro \\
                        \harmonyIntro
                    >>
                >>
            }
        >>
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsVerse
            }
            \new Staff = "voice" \transpose ef c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureVerse
                    \melodyVerse
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsVerse } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
    \score {
        \transpose c f <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "voice" \transpose ef c { 
                \include "ly/ily/staff-properties.ily"
                \override Staff.TimeSignature #'break-visibility = ##(#f #f #f)
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structureHead
                    \melodyForm
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
        >>
        \layout { 
            indent = 1.25\cm
        }
    }
}

