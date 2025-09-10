\version "2.24.0"

titleLeft = "Wein A"
titleRight = "Ramallah"
titleFull = "Wein A  Ramallah"
composerName = "trad. Palestine"
arranger = "Arranged by Boutros/Giaquinto/Alt"
copyright = ""

%{

killPreview ; rm wein-a-ramallah*pdf ; lilypond ly/songs/blo/wein-a-ramallah.ly ; for file in wein-a-ramallah*.pdf ; do op $file ; done  

killPreview
rm wein-a-ramallah*pdf
lilypond ly/songs/blo/wein-a-ramallah.ly
mv wein-a-ramallah*.pdf pdf/songs/blo
for file in pdf/songs/blo/wein-a-ramallah*.pdf ; do op $file ; done  

git add . ; git commit -m"changing accidental style" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"
\include "../../../../engraving/flaming-libs/flaming-roadmap.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.padding = #3.4

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #4

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


\layout {
    \context {
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}

structure = \relative c' { 

    \key c \minor
    \tempo 4=120
    \fourFour
    \startSection "Intro"
    s1*4

    \startSection "Head"
    \segnoRepeat
    s1*3
    \twoFour
    s2  

    \fourFour
    s1*3
    \twoFour
    s2  

    \fourFour
    \startSection "Bridge"
    \doubleRepeat
    s1*4 
    s1*4 


    \startSection "Head"
    \doubleRepeat
    s1*3
    \twoFour
    s2  

    \fourFour
    s1
    s2....
    \toCoda
    s32
    s1
    \twoFour
    s2  \break

    \startSection "Solos"
    \fourFour
    \doubleRepeat
    s1*3
    s2.
    \dsAlCodaBelow
    s4
    \endRepeat
}

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \once \override Score.RehearsalMark.extra-offset = #'( -12 . -3 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \key c \minor
    \fourFour
    \tempo "ritardando"
    s1*2
    \bar "|."    
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -1 )
    % "Intro"
    s1*4

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Head"
    s1*3
    s2  \break

    s1*3
    s2 \break

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*4 
    s1*4 \break


    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Head"
    s1*3
    s2  \break

    s1*2
    s1
    s2  

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Solos"
    s1*4
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForBb
}

rehearsalMarkTweaksForScore = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \override Score.RehearsalMark.extra-offset = #'( 4 . -1 )
    % "Intro"
    s1*4

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Head"
    s1*3
    s2  \break

    s1*3
    s2 \break

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Bridge"
    s1*4 
    \pageBreak 
    s1*4 


    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Head"
    s1*3
    s2  \break

    s1*2
    s1
    s2

    \pageBreak   

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "Solos"
    s1*4
}

chordsHead = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    c1:m | s | f2:m af4 bf || c2:m ||
    f2:m af | bf c:m | f:m af4 bf | c2:m ||
}
chordsBridge = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    c1:m | s | s | s | 
}
chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsBridge
    \chordsHead
    \chordsBridge
    \chordsBridge
    \chordsHead
    \chordsBridge
}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    f2:m af4 bf | c1:m ||
}

melodyHead = \relative c'' {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    ef4 d8 bf c4 4 | r8 ef d [ bf ]  c d ef f | f ef f d  ef4 d8 bf || c4 4 ||
    r8 f f [ f ]  ef4 d8 c | r8 f f [ f ]  ef4 d8 c | f ef f d  ef4 d8 bf || c4 4 || 
}
melodyBridge = \relative c'' {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    c8 d ef f  ef d c bf | c d ef f  ef d c4 | 
    c8 d ef f  ef d c bf | c d ef f  ef d c g' | 
    g8 8 8 8  f g16 f ef8 g | 8 8 8 8  f g16 f ef8 g | 
    af8 8 g8 8  f8 8 ef4 | af8 8 g8 8  f8 8 ef4 |
}

melodyCoda = \relative c'' { 
    f8 ef f d  ef4 d8 c | c4 2. ||
}

melody = {
    R1*4
    \melodyHead
    \melodyBridge
    \melodyHead
    <>\xmp \comp #16
}

basslineIntro = \relative c, {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    \repeat percent 4 { c8. c'16 r8 c  c,8. c'16 r8 c }
}
basslineBridge = \relative c, {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    \repeat percent 8 { c8. c'16 r8 c  c,8. c'16 r8 c }
}
basslineHead = \relative c, { 
    \repeat percent 2 { c8. c'16 r8 c  c,8. c'16 r8 c }
    f,8. f'16 r8 f  af,4 bf || c,8. c'16 r8 c ||

    f,8. f'16 r8 f  af,8. af'16 r8 af | bf,8. bf'16 r8 bf  c,8. c'16 r8 c | 
    f,,8. f'16 r8 f  af,4 bf | c,8. c'16 r8 c ||
}
bassline = \relative c {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    \basslineIntro
    \basslineHead
    \basslineBridge
    \basslineHead
    \basslineIntro
}

basslineCoda = \relative c, { 
    f8. f'16 r8 f  af,4 bf | c,1 ||
}

tenorIntro = \relative c' { 
    R1*2 
    \repeat percent 2 { r8. <g c ef>16 r8 <g c ef>  r8. <g c ef>16 r8 <g c ef> } |
}
tenorHead = \relative c' {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    \repeat percent 2 { r8. <g c ef>16 r8 <g c ef>  r8. <g c ef>16 r8 <g c ef> } |
    r8. <af c f>16 r8 <af c f>  <af c ef>4 <f bf d> || r8. <g c ef>16 r8 <g c ef> ||

    r8. <af c f>16 r8 <af c f>  r8. <af c ef>16 r8 <af c ef> | 
    r8. <f bf d>16 r8 <f bf d>  r8. <g c ef>16 r8 <g c ef> |
    r8. <af c f>16 r8 <af c f>  <af c ef>4 <f bf d> || r8. <g c ef>16 r8 <g c ef> ||
}
tenorBridge = \relative c' {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    <c ef g>1 ~ | 2. r4 | 
    <ef g c>1 ~ | 2. r4 | 
    \repeat percent 4 { r8. <g, c ef>16 r8 <g c ef>  r8. <g c ef>16 r8 <g c ef> } |
}
tenorSolos = \relative c' {
    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    R1*2 
    \repeat percent 2 { r8. <g c ef>16 r8 <g c ef>  r8. <g c ef>16 r8 <g c ef> } |
}

tenorCoda = \relative c' { 
    r8. <af c f>16 r8 <af c f>  <af c ef>4 <f bf d> || <g c ef>1 ||
}

tenor = {
    \tenorIntro
    \tenorHead
    \tenorBridge
    \tenorHead
    \tenorSolos
}

\paper {

  % Spacing in between systems
  system-system-spacing.padding = #4

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0
}

\book {
  \bookOutputSuffix "Melody-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Melody"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \transpose c c \melody
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureCoda
                    % \tweaksCoda
                    \melodyCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\paper {

  % Spacing in between systems
  system-system-spacing.padding = #3.4

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0
}

\book {
  \bookOutputSuffix "Melody-for-C-bass-clef"
    \header {
        title = \title
        composer = \composerName
        poet = "Melody for Bass"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose d d <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \clef bass
                    \transpose c c,, \melody
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \clef bass
                    \structureCoda
                    % \tweaksCoda
                    \transpose c c,, \melodyCoda
                    \noPageBreak
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\paper {

  % Spacing in between systems
  system-system-spacing.padding = #2

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0
}


\book {
  \bookOutputSuffix "Tenor-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Tenor"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \transpose c c \tenor
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureCoda
                    % \tweaksCoda
                    \tenorCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\paper {

  % Spacing in between systems
  system-system-spacing.padding = #2

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0
}

\book {
  \bookOutputSuffix "Tenor-for-C-bass-clef"
    \header {
        title = \title
        composer = \composerName
        poet = "Tenor for Bass"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \clef bass
                    \structure
                    \rehearsalMarkTweaksForC
                    \transpose c c \tenor
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \clef bass
                    \structureCoda
                    % \tweaksCoda
                    \tenorCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\paper {

  % Spacing in between systems
  system-system-spacing.padding = #3

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0
}

\book {
  \bookOutputSuffix "Tenor-for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Tenor for Bb"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf,, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \transpose c c \tenor
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        \transpose bf,, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureCoda
                    % \tweaksCoda
                    \tenorCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\paper {

  % Spacing in between systems
  system-system-spacing.padding = #3.4

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0
}

\book {
  \bookOutputSuffix "Tenor-for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Tenor for Eb"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \transpose c c \tenor
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        \transpose ef, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureCoda
                    % \tweaksCoda
                    \tenorCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\paper {

  % Spacing in between systems
  system-system-spacing.padding = #3

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0
}

\book {
  \bookOutputSuffix "Bass"
    \header {
        title = \title
        composer = \composerName
        poet = "Bass"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose d d <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \clef bass
                    \bassline
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \clef bass
                    \structureCoda
                    % \tweaksCoda
                    \basslineCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\paper {

  % Spacing in between systems
  system-system-spacing.padding = #3.4

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0
}

\book {
  \bookOutputSuffix "Bass-for-Eb-treble"
    \header {
        title = \title
        composer = \composerName
        poet = "Bass for Eb"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef,, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \bassline
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        \transpose ef,, c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureCoda
                    % \tweaksCoda
                    \basslineCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\book {
  \bookOutputSuffix "Melody-for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Melody for Bb"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        \transpose bf c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureCoda
                    % \tweaksCoda
                    \melodyCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}

\book {
  \bookOutputSuffix "Melody-for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Melody for Eb"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        \transpose ef c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties-songs.ily"
                \autoPageBreaksOff    
                \new Voice = "lead" <<
                    \structureCoda
                    % \tweaksCoda
                    \melodyCoda
                >>
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsCoda } 
            % }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}


\paper {

  % Spacing in between staves
  staff-staff-spacing.padding = #6

  % Spacing in between systems
  system-system-spacing.padding = #8

}
\book {
  \bookOutputSuffix "Score-Concert"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Score"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForScore
                    \melody
                >>
            }
            \new Staff \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \clef bass
                    \structure
                    \transpose c c \tenor
                    \noPageBreak
                >>
            }
            \new Staff \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \clef bass
                    \structure
                    \transpose c c \bassline
                    \noPageBreak
                >>
            }
        >>
    }

    \score {
        \header {
            subtitle = " " 
            piece = " " 
        }
        \transpose c c <<
            \new ChordNames \transpose c c {
                \include "ly/ily/chord-names-properties.ily" 
                \chordsCoda
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structureCoda
                    \melodyCoda
                >>
            }
            \new Staff \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \clef bass
                    \structureCoda
                    \transpose c c \tenorCoda
                >>
            }
            \new Staff \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \clef bass
                    \structureCoda
                    \transpose c c \basslineCoda
                >>
            }
        >>
        \layout { 
            indent = 2.25\cm
            short-indent = 0.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
                \omit BarNumber
            }
        }
    }
}



