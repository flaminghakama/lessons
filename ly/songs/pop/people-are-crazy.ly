\version "2.24.0"

titleLeft = "People"
titleRight = "Are Crazy"
titleFull = "People Are Crazy"
composerName = "B. Braddock & T. Jones"
arranger = ""
copyright = ""

%{

killPreview ; rm people-are-crazy*pdf ;  lilypond ly/songs/pop/people-are-crazy.ly  ; for file in people-are-crazy*.pdf ; do op $file ; done  

killPreview
rm people-are-crazy*pdf
lilypond ly/songs/pop/people-are-crazy.ly
mv people-are-crazy*.pdf pdf/songs/pop
for file in pdf/songs/pop/people-are-crazy*.pdf ; do op $file ; done  

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

    \key c \major
    \time 4/4

    \startSection "Intro"
    s1*8

    \startSection "Verse 1"
    s1*8

    \startSection "Verse 2"
    s1*8

    \startSection "Verse 3"
    s1*8

    \startSection "Chorus 1"
    s1*8

    \pageBreak

    \startSection "Verse 3"
    s1*8

    \startSection "Verse 4"
    s1*8

    \startSection "Verse 6"
    s1*8

    \startSection "Chorus 2"
    s1*6


    \pageBreak


    \startSection "Bridge"
    s1*9

    \startSection "Verse 7"
    s1*8

    \startSection "Verse 8"
    s1*8

    \startSection "Verse 9"
    s1*8

    \startSection "Chorus 3"
    s1*8

    \startSection "Chorus 4"
    s1*8

    \startSection "Chorus 5"
    s1*4

    \startSection "Outro"
    s1*10
    \bar "|."
}


rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.extra-offset = #'( 0 . 2 )
    % "Drums"
    s1*2 

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





verseMelody = \relative c'' { 
    e16 ~ 16 d c a || c8. e16 ~ 16 d c a  c8. e16 ~ 16 d c a | c8 8 a' g ~ 8 [
    r16 e16 ] ~ 16 d c a | c8. e16 ~ 16 d c a  c8. e16 ~ 16 d c a | c8 8 a' g ~ 8 [
}
verseHook = \relative c'' { 
    e16 ] ~ 16 d c a | \stemUp c4 \stemNeutral 
}
verseHookForHorns = \relative c'' { 
    e16 ] ~ 16 d c a | 
}
chorusHook = \relative c''  { 
    d8 8 8 c  e8. c16 ~ 8 a | 
}
chorus = \relative c''' { 
    r8 g e [ g ] e g d4 | 
    r8 g e [ g ] e g d4 | 
    r8 g e [ g ] e g d4 | 
    \chorusHook
}
bridgeFirst = \relative c' { 
    d8 c || a' g a ( g ) e4  d8 c | d8 4 e8 ~ 8 c d c | 
    a'8 g g a  e d8 8 8 | c8 8 8 8  4  c'8 8 |
}
bridgeSecond = \relative c''' { 
    a8 g a4  e d8 c | d8 4 e8 ~ 4 d8 c | 
    a'8 g a d, ~ 16 8. 8 8 | d8. c16 ~ 8 8 ~ 4 r4 |   
}
bridge = { 
    \bridgeFirst
    \bridgeSecond
}
bridgeHorns = \transpose c, c { 
    \bridgeFirst
    \transpose c c, \bridgeSecond
}
hornLineLick = \relative c' { 
    e8. g16  a g a c  e [ e r d ]  r c a8 |
}
hornLineVerse = \relative c' { 
    \hornLineLick
    e8. g16  a g a c  e [ e r c ]  r4 |
}
hornLineVerseTwo = \relative c' { 
    \hornLineLick
    e8. g16  a g a c  e e r s s4 |
}
hornLineChorus = \relative c' { 
    \hornLineVerse
    \hornLineLick 
    s1 |
}
hornBreakdown = \relative c' { 
    a2. b4 | c2. e4 | d2. e4 | c1 |  
}

melody = \relative c'' { 

    \accidentalStyle modern-cautionary
    \customScripts #flaming-articulations


    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.25)

    r8. \verseMelody
    r16 \verseHook s4 s2 | s1*2 | s2

    r8. \verseMelody
    r16 \verseHook  
    \relative c'' { 
        \stemUp
        s4 s2 | s2 r8 d4 8 ~ | 8 a4. s2 | s1 |  
        \stemNeutral
    }

    \chorus
    \chorus
    s1*3
    \chorusHook

    \relative c''  {
        R1 | r4 r8 d ~ 8. 
    } \verseMelody
    r16 \verseHook 
    \relative c'' {
        \stemUp 
        s4 s2 | s2 r8 d4 8 ~ | 8 a4. s2 | s1 | 
        \stemNeutral
    } 

    \chorus
    \chorus
    s1*3
    \chorusHook


    s1*3 s2 s4 
    \bridge

    \chorus
    \chorus

    s1*3
    \chorusHook

    s1*3
    \chorusHook

}


melodyForHorns = \relative c'' { 

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.25)

    r8. \verseMelody
    r16 \verseHookForHorns s1*3 | s2

    r8. \verseMelody
    r16 \verseHookForHorns  
    s1*4
    \chorus
    \chorus
    s1*3
    \chorusHook

    \relative c''  {
        R1 | r4 r8 d ~ 8. 
    } \verseMelody
    r16 \verseHookForHorns 
    s1*4

    \chorus
    \chorus
    s1*3
    \chorusHook

    s1*3 s2 s4 
    \bridgeHorns

    \chorus
    \chorus

    s1*3
    \chorusHook

    s1*3
    \chorusHook

}

horns = \relative c'' { 

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.25)

    s2 | s1*4 
    \hornLineVerse
    \hornLineVerseTwo

    s1*4 
    \hornLineVerse
    \hornLineVerse

    s1*8
    \hornLineChorus

    s1*2 ||
    s1*4 
    \hornLineVerse
    \hornLineVerse

    s1*8
    \hornLineChorus

    \hornBreakdown

    s1*8
    s1*8

    \hornLineChorus
    \hornLineChorus
}
melodySong = \relative c' << 
    \new Voice = "lead" \melody \\
    { \horns }
>>
melodySongForEb = \relative c' << 
    \new Voice = "lead" \melodyForHorns \\
    { \transpose c, c \horns }
>>

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Used to keep it cool
    Used to be a fool
    All a -- bout the bounce in my step

    Watch it on the news
    What -- cha gon -- na do?
    I could hit re -- fresh and for -- get

    Used to keep it cool
    Should I keep it light?
    Stay out of the fight?
    No one's gon -- na lis -- ten to me

    If I write a song
    Preach -- ing what is wrong
    Will they let me sing on T -- V?

    Should I keep it light?
    Is that right?

    Way up way up we go
    Been up and down that road
    Way up way up, oh no
    We gon' burn the whole house down

    Watch me stand in the line
    You're on -- ly ser -- ving lies
    You've got some -- thing to hide
    
    We gon' burn the whole house down
    We gon' burn the whole house down
    Yeah, used to let it go
    
    Walk in -- to the show
    Gawk -- ing at the tricks up your sleeve
    
    Too good to be true
    But I'm in a room
    Full of en -- ter -- tain -- ers and thieves
    
    Used to let it go
    Woah, oh no

    Way up way up we go
    Been up and down that road
    Way up way up, oh no

    We gon' burn the whole house down

    Watch me stand in the line
    You're on -- ly ser -- ving lies
    You've got some -- thing to hide
    We gon' burn the whole house down
    We gon' burn the whole house down

    Should I hang my head low?
    Should I bite my tongue?
    Or should I march with eve -- ry stran -- ger
    From Twit -- ter to get shit done?

    Used to hang my head low
    Now I hear it loud
    Eve -- ry stranger from Twit -- ter is gon -- na burn this down
    
    Way up way up we go
    Been up and down that road
    Way up way up, oh no
    We gon' burn the whole house down
    
    Watch me stand in the line 
    You're on -- ly ser -- ving lies
    You've got some -- thing to hide
    We gon' burn the whole house down

    We gon' burn the whole house down

    We gon' burn the whole house down
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
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySong
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
  \bookOutputSuffix "for-Eb"
    \header {
        subtitle = ""
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff = "voice" \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \override Stem.length-fraction = #(magstep 1.2)
                    \structure
                    \melodySongForEb
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

