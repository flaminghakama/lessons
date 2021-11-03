\version "2.19.83"

titleLeft = "Burn The"
titleRight = "House Down"
title = "Burn The House Down"
composerName = "AJR"
%lyricistName = "V. de Moraes"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview ; rm burn-the-house-down*pdf ; lilypond ly/songs/pop/burn-the-house-down.ly ; for file in burn-the-house-down*pdf ; do op $file ; done 

killPreview
rm pdf/songs/pop/burn-the-house-down*
lilypond ly/songs/pop/burn-the-house-down.ly 
mv burn-the-house-down*pdf pdf/songs/pop
for file in pdf/songs/pop/burn-the-house-down*pdf ; do op $file ; done 

%}

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

    \time 4/4
    \partial 2 
    s2

    \startSection "Verse 1"
    s1*4

    \startSection "Horns 1"
    s1*4

    \startSection "Verse 2"
    s1*4

    \startSection "Horns 2"
    s1*4

    \startSection "Chorus 1"
    s1*4
    s1*4

    \startSection "Horns 3"
    s1*4 \pageBreak

    \startSection "Breakdown 1"
    s1*2

    \startSection "Verse 3"
    s1*4

    \startSection "Horns 4"
    s1*4

    \startSection "Chorus 2"
    s1*4
    s1*4

    \startSection "Horns 5"
    s1*4

    \startSection "Breakdown 2"
    s1*4

    \startSection "Bridge"
    s1*4
    s1*4

    \startSection "Verse 4"
    s1*4
    s1*4

    \startSection "Horns 6"
    s1*4
    s1*4
    s1*3
    \bar "|."
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
chorusHook = \relative c''  { 
    d8 8 8 c  e8. c16 ~ 8 a | 
}
chorus = \relative c''' { 
    r8 g e [ g ] e g d4 | 
    r8 g e [ g ] e g d4 | 
    r8 g e [ g ] e g d4 | 
    \chorusHook
}
bridge = \relative c' { 
    d8 c || a' g a ( g ) e4  d8 c | d8 4 e8 ~ 8 c d c | 
    a'8 g g a  e d8 8 8 | c8 8 8 8  4  c'8 8 |

    a'8 g a4  e d8 c | d8 4 e8 ~ 4 d8 c | 
    a'8 g a d ~ 16 8. 8 8 | d8. c16 ~ 8 8 ~ 4 |   
}
hornLineLick = \relative c' { 
    e8. g16  a g a c  e [ e r d ]  r c a8 |
}
hornLineVerse = \relative c' { 
    \hornLineLick
    e8. g16  a g a c  e [ e r c ]  r4 |
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

    s1*3 | s2 s4 

}

horns = \relative c'' { 
    s2 | s1*4 
    \hornLineVerse
    \hornLineVerse

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
    s1*2

}
melodySong = \relative c' << 
    \new Voice = "lead" \melody \\
    { \horns }
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
    (Woah, oh no)
    Way up way up we go
    Been up and down that road
    Way up way up, oh no

    We gon' burn the whole house down

    Watch me stand in the line
    You're only ser -- ving lies
    You've got some -- thing to hide
    We gon' burn the whole house down
    We gon' burn the whole house down

    Should I hang my head low?
    Should I bite my tongue?
    Or should I march with every stran -- ger
    From Twit -- ter to get shit done?

    Used to hang my head low
    Now I hear it loud
    Every stranger from Twit -- ter is gon -- na burn this down
    
    Way up way up we go
    Been up and down that road
    Way up way up, oh no
    We gon' burn the whole house down
    
    Watch me stand in the line (whoa oh)
    You're only ser -- ving lies (yeah)
    You've got some -- thing to hide
    We gon' burn the whole house down
    Woah oh, yeah
    We gon' burn the whole house down
    We burn it down, we burn it down
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