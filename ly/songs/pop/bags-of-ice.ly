\version "2.24.0"

titleLeft = "Bags"
titleRight = "of Ice"
titleFull = "Bags of Ice"
composerName = "Ada Luna (tiktok/@adanicklmao)"
arranger = ""
copyright = ""

%{

killPreview ; rm bags-of-ice*pdf ;  lilypond ly/songs/pop/bags-of-ice.ly  ; for file in bags-of-ice*.pdf ; do op $file ; done  

killPreview
rm bags-of-ice*pdf
lilypond ly/songs/pop/bags-of-ice.ly
mv bags-of-ice*.pdf pdf/songs/pop
for file in pdf/songs/pop/bags-of-ice*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #19

  % Spacing in between systems
  system-system-spacing.basic-distance = #20

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

    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \tempo 4=172
    \key fs \major
    \time 4/4

    \startSection "Verse 1"
    s1*8

    \startSection "Chorus 1"
    s1*8

    \startSection "Verse 2"
    s1*8

    \startSection "Chorus 2"
    s1*8

    \bar "|."
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 2 )
    % "Verse 1"
    s1*8

    % "Chorus 1"
    s1*8

    \pageBreak

    % "Verse 2"
    s1*8

    % "Chorus 2"
    s1*8

}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

}

melodyVerseOne = \relative c'' { 
    r8 ds fs4  fs8 ds fs ds | 
    fs8 ds fs ds  fs4  8 ds | 
    fs4 8 ds  fs4 as | 
    R1 ||

    r2 r8 fs8 8 [ ds ] |
    fs8 8 8 ds  as'4 fs | 
    r2 r8 ds fs4 | 
    r8 fs4 8 cs4 r | 
}
backupsVerseOne = \relative c' { 
    s1*3 | 
    fs4 8 ds  fs4 ds8 ( cs ) ||

    s1*4 ||    
}

melodyChorusOne = \relative c'' { 
    r2  r8 fs8 8 [ 8 ] | 
    gs8 fs ds fs  cs4 ds8 8 | 
    fs8 gs ds4  4 8 8 | 
    fs8 ds fs ds  fs8 8 8 as ~ | 

    as4 r  r8 ds, fs [ ds ] |
    fs4 4  ds8 cs fs4 | 
    ds8 ( cs 4. )  r8 cs ds4 | 
    r8 fs4 8  ds ( cs4 ) r8 |     
}
backupsChorusOne = \relative c' { 
    s1*4 | 

    s1*3 |
    r2 r4 cs4 |    
}

melodyVerseTwo = \relative c'' { 
    r8 fs cs'8 [ 8 ]  8 8 8 ds |
    cs8 8 8 ds  as4 gs8 fs | 
    gs8 as gs fs  gs4  8 fs |
    gs8 as gs fs  gs4 8 8 ||

    as8 8 8 8  8 8 gs fs | 
    gs8 as gs fs  ds4 cs | 
    r8 gs'8 8 [ 8 ]  8 8 as fs |
    gs4 s2. || 
}
backupsVerseTwo = \relative c { 
    fs4 r r2 | 
    s1*3

    s1*3 |
    r8 gs'8 8 [ 8 ]  8 8 8 fs |    
}

melodyChorusTwo = \relative c'' { 
    r4 cs8 8  8 8 as4 | 
    as4 8 8  8 gs fs8 8 | 
    gs8 fs8 8 8  8 8 4 | 
    as4 8 8  8 gs fs gs | 

    as8 8 8 8  4 fs |
    ds4 r  gs8. as16 ~ 8 gs ~ | 
    gs16 as8. gs16 as8. ~ 4 fs | 
    ds8 cs4 r8 r2 ||  
}
backupsChorusTwo = \relative c' { 
    cs4 r2. 
    s1*3 || 

    s1*4 ||  
}


melodySong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    \melodyVerseOne
    \melodyChorusOne
    \melodyVerseTwo
    \melodyChorusTwo
}
bgVocalSong = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations
    % \override Beam.damping = #2.75 
    % \override Stem.length-fraction = #(magstep 1.25)

    \backupsVerseOne
    \backupsChorusOne
    \backupsVerseTwo
    \backupsChorusTwo
}


lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Have y'all no -- ticed that the 
    Arc -- tic Gla -- cier bags 
    have a sans- -- ser -- if font now?


    Why did the lo -- go need an up -- date?
    They sell bags of ice.

    I mean I sor -- ta un -- der -- stand 
    if they were a tech brand
    and they want to look a -- head of the times.

    But was the old bag real -- ly that bad? 
    They sell bags of ice.

    And you can tell me that 
    ev -- ery -- thing has to change 
    ev -- en bags of fuck -- ing ice 
    got to keep up with the day.

    But they're the on -- ly brand of ice 
    where I ev -- en know the name 
    so why do they need to have an app?


    And they're do -- ing A I   
    and they're post -- ing Nate Ber -- gat -- ze 
    on their In -- sta -- gram page 
    and I think we're ov -- er -- com -- pli -- ca -- ting 
    this whole thing.

    Arc -- tic Gla -- cier, you sell bags of ice!
}
backupsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Sans- -- ser -- if font now.


    Bum bum.

    Why do they need to have an app?

}
lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }

}
lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    \repeat unfold 34 { \skip 1 }
    \repeat unfold 38 { \skip 1 }

}

\header {
    title = \title
    composer = \markup \italic { "composed by" \composerName }
    %arranger = \markup \italic { "lyrics by" \lyricistName }
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
            % \new ChordNames \transpose c c  { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsSong 
            % }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "lead" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodySong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "lead" { \lyricsHeadOne } 
            }
            \new Staff = "bgVocal" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \new Voice = "backups" <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \bgVocalSong
                >>
            }
            \new Lyrics \with { alignAboveContext = "staff" } {
                \lyricsto "backups" { \backupsHeadOne } 
            }
            % \new Lyrics \with { alignAboveContext = "staff" } {
            %     \lyricsto "lead" { \lyricsHeadTwo } 
            % }
        >>
    }
}
