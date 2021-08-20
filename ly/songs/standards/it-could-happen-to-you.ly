\version "2.19.81"

titleLeft = "It Could Hap"
titleRight = "pen To You"
title = "It Could Happen To You"
composerName = "J. Van Heusen"
lyricistName = "J. Burke"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm it-could-happen-to-you*pdf
lilypond ly/songs/standards/it-could-happen-to-you*.ly
mv it-could-happen-to-you*.pdf pdf/songs/standards
for file in pdf/songs/standards/it-could-happen-to-you*pdf ; do open -a Preview $file ; done

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

voltaAllXButLast = \markup { \text \italic \large { All X but last } }
voltaLast = \markup { \text \italic \large { Last X } }

structureIntro = \relative c' {
    \key ff \major
    s1*3
    s2 s4 \bar "" \break s4 
    \bar "||" 
    
    s1*3
    s2 s4 \bar "" \break s4
    
    s1*3
    s2 s4 \bar "" \break s4

    s1*4
    s1*4
    \bar "[|:"
}
structureIntroForEb = \relative c' {
    \key e \major
    s1*3
    s2 s4 \bar "" \break s4 
    \bar "||" 
    
    s1*3
    s2 s4 \bar "" \break s4
    
    s1*3
    s2 s4 \bar "" \break s4

    s1*4
    s1*4
    \bar "[|:"
}

structure = \relative c' { 
    \key ef \major
    \override Score.RehearsalMark #'extra-offset = #'( -4 . -1 )
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break 
        \bar "||"
        s1*4 \break
        s1*4 
        \override Score.RehearsalMark #'extra-offset = #'( -4 . -1 )
        \startSection "B"
        s1*4 \break
        s1*4 \break 
        \bar "||"
        s1*4 \break
        s1*2    
    } 
    \alternative { 
        {
            \set Score.repeatCommands = #(list (list 'volta voltaAllXButLast)) 
            s1*2 \bar ":|]" 
        }
        { 
            \set Score.repeatCommands = #(list (list 'volta voltaLast)) 
            s1*2 
        }
    }
    \bar "|."
}

chordsReal = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    ef1:maj7 | g2:m7.5- c:7.9- | f1:m7 | a2:m7.5- d:7.9- | 
    ef1:maj7 | af:7 | g:m7.5- | c:7.9- ||

    f1:m7 | df:7.11+ | ef:maj7 | d2:m7.5- g:7.9- |
    c2:m c:m7.7+ | c:m7 f:7 | f1:m7 | bf:7 ||

    ef1:maj7 | g2:m7.5- c:7.9- | f1:m7 | a2:m7.5- d:7.9- | 
    ef1:maj7 | af:7 | g:m7.5- | c:7.9- ||

    f1:m7 | df:7.11+ | ef2:maj7 af:7 | g2:m7.5- c:7 |
    f1:m | f2:m7 bf:7 | ef:6 c:m7 | f:m7 bf:7 ||
        ef1:6 | s ||
}
chordsIntroOrigInG = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf1:m9 | df:m7.7+ | af2/ef c4:7/e f:m | bf2:m7 ef4:9 ef:aug7/df ||
    af1/c | b:dim7 | bf:m7 | a:7 | 
    af2 ef:aug | c:m7.5- f:7 | bf1:m7 | ef:7 | 
    c2:1.4.5.7/g c:7/g | f1:m7 | bf2:7 bf:7/af | ef1/g | 
    bf:m7/af | g1:m7.5- | af:maj9 | a2:1.3-.5.7.11 d4:1.4.5.7 d:7 ||     
}
chordsIntro = \transpose g ds \chordsIntroOrigInG

chordsIntroOrigInGForSharps = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf1:m9 | df:m7.7+ | af2/ef c4:7/ff f:m | bf2:m7 ef4:9 ef:aug7/df ||
    af1/c | cf:dim7 | bf:m7 | bff:7 | 
    af2 ef:aug | c:m7.5- f:7 | bf1:m7 | ef:7 | 
    c2:1.4.5.7/g c:7/g | f1:m7 | bf2:7 bf:7/af | ef1/g | 
    bf:m7/af | g1:m7.5- | af:maj9 | bff2:1.3-.5.7.11 eff4:1.4.5.7 eff:7 ||     
}
chordsIntro = \transpose g ds \chordsIntroOrigInG
chordsIntroForEb = \transpose g ds \chordsIntroOrigInGForSharps
chordsIntroForFlats = \transpose g ef \chordsIntroOrigInG

chordsOrigInG = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1 | gs:dim7 | a:m | bf:dim7 |
    g1/b | c:1.3.5.9 | b:aug7 | b2:m7.5- e:7.9- ||

    a1:m9 | c:m13.7+ | g:maj13 | fs2:m7 b:7.9- |
    e2:m c:7/bf | a1:7 | a:m7 | a2:m6 af:9 ||

    g1 | gs:dim7 | a:m | bf:dim7 |
    g1/b | c:1.3.5.9 | b:aug7 | b2:m7.5- e:7.9- ||

    a1:m9 | c:m13.7+ | g:maj7/d | b2:m7.5- e:7.9- |
    a1:m7 | a2:m7 d:7.9- | g2 e:m | a:m7 d:aug7.9- ||
        g2 c:13 | g1:maj7 ||
}
chordsOrig = \transpose g ef \chordsOrigInG

chordsOrigInGForFlats = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1 | gs:dim7 | a:m | as:dim7 |
    g1/b | c:1.3.5.9 | b:aug7 | b2:m7.5- e:7.9- ||

    a1:m9 | c:m13.7+ | g:maj13 | fs2:m7 b:7.9- |
    e2:m c:7/bf | a1:7 | a:m7 | a2:m6 gs:9 ||

    g1 | gs:dim7 | a:m | as:dim7 |
    g1/b | c:1.3.5.9 | b:aug7 | b2:m7.5- e:7.9- ||

    a1:m9 | c:m13.7+ | g:maj7/d | b2:m7.5- e:7.9- |
    a1:m7 | a2:m7 d:7.9- | g2 e:m | a:m7 d:aug7.9- ||
        g2 c:13 | g1:maj7 ||
}
chordsOrigForFlats = \transpose g ef \chordsOrigInGForFlats

melodyIntroInG = \relative c'' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.15) 
    c2 2 | 4 df af bf | c g bf af | af df, \fermata f ef ||

    ef2. af4 | g2. f4 | ef2. af4 | g2. f4 | 
    ef4 af g f | ef gf f ef | df2. f4 | ef2. df4 | 
    c2. g'4 | af2. ef4 | d2. af'4 | bf1 |
    bf2. df4 | c2. bf4 | ef,1 | d ||
}
melodyIntro = \transpose g ef \melodyIntroInG
melodyIntroInGForFlats = \relative c'' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.15) 
    c2 2 | 4 df af bf | c g bf af | af df, \fermata f ef ||

    ef2. af4 | g2. f4 | ef2. af4 | g2. f4 | 
    ef4 af g f | ef gf f ef | df2. f4 | ef2. df4 | 
    c2. g'4 | af2. ef4 | d2. af'4 | bf1 |
    bf2. df4 | c2. bf4 | ef,1 | eff ||
}
melodyIntroForEb = \transpose g ds \melodyIntroInGForFlats
melodyIntroForFlats = \transpose g ef \melodyIntroInGForFlats

melodyForm = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.15) 

    bf2. c4 | df c8 g' ~ 2 | c,2. d4 | ef d8 a' ~ 2 | 
    bf2 2 | 4 af2 ef4 | g1 ~ | 2 r ||

    g2 4. 8 ~ | 4 af ef f | g4. 8 ~ 2 ~ | 2 r |
    ef2 4. 8 ~ | 4 f c d | ef2 f | c4. d8 ~ 2 ||

    bf2. c4 | df c8 g' ~ 2 | c,2. d4 | ef d8 a' ~ 2 | 
    bf2 2 | 4 af2 ef4 | g1 ~ | 2 r ||

    g2 2 | 4 af ef f | g d f ef8 bf'8 ~ | 1 |
    bf,2 2 | af'4 f2 g4 | ef1 | R1 ||
        ef1 ~ | 1 ||
}

lyricsIntro = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2
    \repeat unfold 13 { \skip 1 }
    Do you be -- lieve in charms and spells, 
    in mys -- tic words and ma -- gic wands and
    wish -- ing wells?

    Don't look so wise, 
    don't show your scorn;
    watch your -- self, 
    I warn you. 
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Hide your heart from sight,
    lock your dreams at night,
    it could hap -- pen to you.
    Don't count stars
    or you might stum -- ble,
    some -- one drops a sigh
    and down you tum -- ble,

    Keep an eye on spring,
    run when church bells ring.
    It could hap -- pen to you. 
    All I did was won -- der 
    how your arms would be
    and it hap -- pened to me.

    me.
}
lyricsHeadTwo = \lyricmode {
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
  \bookOutputSuffix "original-G-for-C"
    \header {
        subtitle = "(Original)"
        instrumentName = "Concert Pitch"
        poet = \instrumentName
    }
    \score {
        \transpose ef g <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsIntroForFlats
                \chordsOrig
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    { 
                        \structureIntro \pageBreak
                        \structure
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
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
  \bookOutputSuffix "original-G-for-Bb"
    \header {
        subtitle = "(Original)"
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose bf, c \transpose ef g <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsIntroForFlats
                \chordsOrig
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    { 
                        \structureIntro \pageBreak
                        \structure
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
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
  \bookOutputSuffix "original-G-for-Eb"
    \header {
        subtitle = "(Original)"
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef, c \transpose ef g <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsIntroForFlats
                \chordsOrig
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    { 
                        \structureIntro \pageBreak
                        \structure
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
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
  \bookOutputSuffix "in-Eb-original-for-C"
    \header {
        subtitle = "(Real Book key, original chords)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsIntroForEb
                \chordsOrigForFlats
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    { 
                        \structureIntroForEb \pageBreak
                        \structure
                    }
                    {
                        \melodyIntroForEb
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
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
  \bookOutputSuffix "in-Eb-original-for-Bb"
    \header {
        subtitle = "(Real Book key, original chords)"
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose bf, c <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsIntroForFlats
                \chordsOrig
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    { 
                        \structureIntro \pageBreak
                        \structure
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
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
  \bookOutputSuffix "in-Eb-original-for-Eb"
    \header {
        subtitle = "(Real Book key, original chords)"
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef, c <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsIntroForFlats
                \chordsOrig
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    { 
                        \structureIntro \pageBreak
                        \structure
                    }
                    {
                        \melodyIntro 
                        \melodyForm
                    }
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { 
                    \lyricsIntro
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
  \bookOutputSuffix "in-Eb-real-book-for-C"
    \header {
        subtitle = "(Real Book)"
        instrumentName = "Concert Lead Sheet"
        poet = \instrumentName
    }
    \score {
        <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsReal
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
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
  \bookOutputSuffix "in-Eb-real-book-for-Bb"
    \header {
        subtitle = "(Real Book)"
        instrumentName = "Bb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose bf, c <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsReal
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
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
  \bookOutputSuffix "in-Eb-real-book-for-Eb"
    \header {
        subtitle = "(Real Book)"
        instrumentName = "Eb Lead Sheet"
        poet = \instrumentName
    }
    \score {
        \transpose ef, c <<
            \include "ly/ily/score-properties.ily"
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsReal
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \new Voice = "lead" <<
                    \structure
                    \melodyForm
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

