\version "2.24.0"

titleLeft = "Star"
titleRight = "dust"
titleFull = "Stardust"
composerName = "H. Carmichael"
lyricistName = "M. Parish"
arranger = ""
copyright = ""

%{

killPreview ; rm stardust*pdf ; lilypond ly/songs/standards/stardust*.ly ; for file in stardust*pdf ; do open -a Preview $file ; done

killPreview
rm stardust*pdf
lilypond ly/songs/standards/stardust*.ly
mv stardust*.pdf pdf/songs/standards
for file in pdf/songs/standards/stardust*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"fix lyrics" ; git push 
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
  system-system-spacing.padding = #4

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
    \key df \major

    \time 4/4
    \startSection "Refrain" 
    \repeat volta 2 {
        \startRepeat
        s1*6 
    }
    \alternative { 
        { s1*2 \endRepeat }
        { s1 }
    }
    s1 \break

    \startSection "Chorus"
    \repeat volta 2 { 
        \segnoRepeat
        s1*8
    }
    \alternative { 
        { s1*8 \endRepeat } 
        { s1 }
    } s1*7 
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 0 )
    % "Intro" 
    s1*6 \break 
    s1*4 \pageBreak 

    % "Chorus"
    s1*8 \break
    s1*8 \break
    s1*8 
}

rehearsalMarkTweaksForFlats = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 0 )
    % "Intro" 
    s1*6 \break 
    s1*4 \break 

    % "Chorus"
    s1*8 \break
    s1*8 \break
    s1*4 \break
    s1*4
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    df1:maj7 | gf:9.11+ | f:7.9- | bf:7 |
    ef2:m7 af:7 | f:m7 bf:m7 | g:m7 c:7 | ef:m7 af:7 ||
        ef:m7 af:7 | df:maj7 df:aug7 ||

    
    gf1:maj7 | s | gf:m7.7+ | fs2:m7 b:7 |
    df1:maj7 | f2:m7 bf:7 | ef:m7 bf:7 | ef1:m7 |

    af1:7 | ef2:m7 af:7 | df:maj7 e4:m7 e:dim7 | f2:m7 bf:m7 | 
    ef1:9 | bf2:m7 ef:7 | af:7 ef:m7 | af:7 df:7 ||

    fs1:m7 | b:13 | df2:maj7 bf:m7 | f2:m7 bf:m7 | 
    ef1:7 | af:7 | df:maj7 | af2:7 df:7 ||
}
chordsSharps = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    df1:maj7 | gf:9.11+ | f:7.9- | bf:7 |
    ef2:m7 af:7 | f:m7 bf:m7 | g:m7 c:7 | ef:m7 af:7 ||
        ef:m7 af:7 | df:maj7 df:aug7 ||

    
    gf1:maj7 | s | gf:m7.7+ | gf2:m7 cf:7 |
    df1:maj7 | f2:m7 bf:7 | ef:m7 bf:7 | ef1:m7 |

    af1:7 | ef2:m7 af:7 | df:maj7 ff4:m7 ff:dim7 | f2:m7 bf:m7 | 
    ef1:9 | bf2:m7 ef:7 | af:7 ef:m7 | af:7 df:7 ||

    gf1:m7 | cf:13 | df2:maj7 bf:m7 | f2:m7 bf:m7 | 
    ef1:7 | af:7 | df:maj7 | af2:7 df:7 ||
}

chordsFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    df1:maj7 | gf:9.11+ | gff:7.9- | cff:7 |
    ef2:m7 af:7 | gff:m7 cff:m7 | aff:m7 dff:7 | ef:m7 af:7 ||
        ef:m7 af:7 | df:maj7 df:aug7 ||

    
    gf1:maj7 | s | gf:m7.7+ | gf2:m7 cf:7 |
    df1:maj7 | gff2:m7 cff:7 | ef:m7 bf:7 | ef1:m7 |

    af1:7 | ef2:m7 af:7 | df:maj7 ff4:m7 ff:dim7 | gff2:m7 cff:m7 | 
    ef1:9 | bf2:m7 ef:7 | af:7 ef:m7 | af:7 df:7 ||

    gf1:m7 | cf:13 | df2:maj7 bf:m7 | gff2:m7 cff:m7 | 
    ef1:7 | af:7 | df:maj7 | af2:7 df:7 ||
}

melodyIntroCommon = \relative c'' { 
    r8 df f [ df ]  ef c df bf | c bf af2. | 
    gf8 f e f  df' c a f | d1 | 

    r4 ef8 gf  bf ef, gf bf | \tuplet 3/2 { af4 f af } df2 | 
}
melodyIntroEndings = \relative c'' { 
    c4 c,8 e  bf' c, e bf' | af4 4 2 ||
    r8 af bf [ gf ]  af f gf ef | df2 
}

melodyChorusCommon = \relative c'' { 
    ef4 df bf gf | ef gf bf f' | 1 | ef8 df a gf  ef4. ef'8 | 
    df4 af df2 | c8 f c af f2 | r8 bf df [ bf ]  gf af f gf | ef2 r8 f4 ef8 |
}
melodyChorus = \relative c'' { 
    r8 c df [ d ] ||
    \melodyChorusCommon  
    af4 4 2 | r8 ef4 f8  af ef e af | f2 bf ~ | 2 r4 f' | 
    f8 ef df bf f4 g | c8 ef, d df ~ 8 bf'4 ef,8 | af4 4 bf8 ef ef, bf' | af2. 
    df4 ||

    gs,4 g fs2 ~ | 2 r4 df8 ef | f4 af df f | c2. df4 | 
    ef8 df bf gf bf2 ~ | 8 af bf gf af f gf ef | df1 | R1 ||
}

melodyFlatsIntroCommon = \relative c'' { 
    r8 df f [ df ]  ef c df bf | c bf af2. | 
    gf8 gff ff gff  df' dff bff gff | eff1 | 

    r4 ef8 gf  bf ef, gf bf | \tuplet 3/2 { af4 f af } df2 | 
}
melodyFlatsIntroEndings = \relative c'' { 
    dff4 dff,8 ff  bf dff, ff bf | af4 4 2 ||
    r8 af bf [ gf ]  af f gf ef | df2 
}

melodyFlatsChorusCommon = \relative c'' { 
    ef4 df bf gf | ef gf bf f' | 1 | ef8 df bff gf  ef4. ef'8 | 
    df4 af df2 | c8 f c af f2 | r8 bf df [ bf ]  gf af f gf | ef2 r8 f4 ef8 |
}
melodyFlatsChorus = \relative c'' { 
    r8 c df [ d ] ||
    \melodyFlatsChorusCommon  
    af4 4 2 | r8 ef4 f8  af ef ff af | f2 bf ~ | 2 r4 f' | 
    f8 ef df bf f4 g | c8 ef, eff df ~ 8 bf'4 ef,8 | af4 4 bf8 ef ef, bf' | af2. 
    df4 ||

    af4 g gf2 ~ | 2 r4 df8 ef | f4 af df f | c2. df4 | 
    ef8 df bf gf bf2 ~ | 8 af bf gf af f gf ef | df1 | R1 ||
}


melody = {
    \melodyIntroCommon
    \melodyIntroEndings
    \melodyChorus
}
melodyFlats = {
    \melodyFlatsIntroCommon
    \melodyFlatsIntroEndings
    \melodyFlatsChorus
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    And now the pur -- ple dusk of twi -- light time 
    steals a -- cross the mea -- dows of my heart. 

    High up in the sky the lit -- tle stars climb, 
    Al -- ways re -- mind -- ing me that we're a -- part. 

    The mu -- sic of the years gone by.

        Some -- times I won -- der why I spendf the lone -- ly night
        dream -- ing of a song, 

        The mel -- o -- dy haunts my rev -- er -- ie,  
        And I am once a -- gain with you, 

        When our love was new, 
        and each kiss an in -- spir -- a -- tion, 

        But that was long a -- go,  
        now my con -- so -- la -- tion is in the star dust of a song.

        Be --

    
        dream in vain, in my heaart it will re -- main:

        My star dust mel -- o -- dy, 
        the mem -- o -- ry of love's re -- frain.
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2


    You wan -- dered down the land and far a -- way.
    Leav -- ing me a song that will not die.

    Love is now the star dust of yes -- ter -- day

    \repeat unfold 21 { \skip 1 }

        side a gar -- den wall, when starts are bright, 
        you are in my arms.  

        The night -- in - gale tells his fair -- y tale
        of par -- a -- dise where ros -- es grew. 

        Though I 
}


\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    arranger = \markup \italic { "lyrics by" \lyricistName }
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "in-Db-for-C" 
    \header {
        subtitle = "(original key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \accidentalStyle modern
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
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
  \bookOutputSuffix "in-Db-for-Bb" 
    \header {
        subtitle = "(original key)"
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \accidentalStyle modern
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForFlats
                    \melody
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-Db-for-Eb" 
    \header {
        subtitle = "(original key)"
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                \chordsForm
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \accidentalStyle modern
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForFlats
                    \melody
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-A-for-C" 
    \header {
        subtitle = "(Elaine key)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose df a, <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                \chordsSharps
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \accidentalStyle modern
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
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
  \bookOutputSuffix "in-A-for-Bb" 
    \header {
        subtitle = "(Elaine key)"
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose bf c \transpose df a <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                \chordsFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \accidentalStyle modern
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForFlats
                    \melodyFlats
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}

\book {
  \bookOutputSuffix "in-A-for-Eb" 
    \header {
        subtitle = "(Elaine key)"
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef c \transpose df a <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"                \include "ly/ily/chord-names-properties.ily"\include "ly/ily/chord-names-properties.ily" 
                \chordsFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \accidentalStyle modern
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \structure
                    \rehearsalMarkTweaksForFlats
                    \melodyFlats
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadOne } 
            % }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}
