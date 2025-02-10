\version "2.24.0"

titleLeft = "Lift Every Voice"
titleRight = "And Sing"
titleFull = "Lift Every Voice And Sing"
composerName = "J. W. Johnson"
lyricistName = "J. W. Johnson"
arranger = ""
copyright = ""

%{

killPreview ; rm lift-every-voice-and-sing*pdf ; lilypond ly/songs/standards/lift-every-voice-and-sing.ly ; for file in lift-every-voice-and-sing*pdf ; do op $file ; done 

killPreview
rm pdf/songs/standards/lift-every-voice-and-sing*
lilypond ly/songs/standards/lift-every-voice-and-sing.ly 
mv lift-every-voice-and-sing*pdf pdf/songs/standards
for file in pdf/songs/standards/lift-every-voice-and-sing*pdf ; do op $file ; done 

git add . ; git commit -m"fixing chords" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #0

  % Spacing in between systems
  system-system-spacing.padding = #3

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0

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
    \key af \major
    \time 6/8
    \partial 4. 
    s4.  

    s2.*15

    \break
    \startSection ""

    s2.*15

    \partial 4. 
    s4.

    \bar "|."

}


chordsSong = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    ef4. ||
    af4. c:7 | f2.:m | 
    af4. e:dim7 | f2.:m | 
    bf4. c | df bf:m |
    af2. | ef:7 |

    af4. c:7 | f2. | 
    bf4.:m c | df2. | 
    af2. | ef:7 |
    af2. ||


    af4. ef | f2.:m | 
    f2.:m | ef | 
    af4. ef | ff2. |
    ff2. | af |

    ef2.:7 | af4. c:7 | 
    f2. | bf4.:m c | 
    df4. b:dim | af2. | 
    ef2. | af4.     
}

melody = \relative c'' { 
    \accidentalStyle default

    g8 af bf ||
    c4. 4. | 4. 8 df ef | 
    c4. bf | af4. 8 bf c | 
    df4. c | af bf | 
    af4. ~ 4 8 | g4. 8 af bf |

    c4. 4. | f4. 8 ef c | 
    df4. c4 ( bf8 ) | af4. 8 bf b | 
    c4. 8 bf af | bf4. ~ 4 af8 |
    af2. ||

    af4. ef | f4. 8 ef c | 
    f8 ef c f ef c | ef4. 4. |
    af4. ef | ff4. 8 ef df | 
    ff8 ef df ff ef df | c'2. |
    df4. g,8 af bf | c4. 4. | 
    f4. 8 ef c | df4. c4 ( bf8 ) | 
    g4. af8 bf b | c4. 8 bf af | 
    bf4. ~ 4 af8 | 4. ||
}

lyricsHeadOne = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Lift ev -- 'ry voice and sing,
    'Til earth and heav -- en ring,
    Ring with the har -- mo -- nies of Li -- ber -- ty;
    Let our re -- joic -- ing rise
    High as the lis -- t'ning skies,
    Let it re -- sound loud as the roll -- ing sea.

    Sing a song full of the faith that the dark past has taught us,
    Sing a song full of the hope that the pres -- ent has brought us;

    Fac -- ing the ris -- ing sun of our new day be -- gun,
    Let us march on 'til vic -- to -- ry is won.
}

lyricsHeadTwo = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    Sto -- ny the road we trod,
    Bit -- ter the chas -- t'ing rod,
    Felt in the days when hope un -- born had died;
    Yet with a stea -- dy beat,
    Have not our wea -- ry feet
    Come to the place for which our fa -- thers sighed?

    We have come o -- ver a way that with tears has been wa -- tered,
    We have come, tread -- ing our path through the blood of the slaugh -- tered,

    Out from the gloo -- my past,
    'Til now we stand at last
    Where the white gleam of our bright star is cast.
}

lyricsHeadThree = \lyricmode {
    \override LyricText.font-family = #'typewriter
    \override LyricText.font-size = #'2

    God of our wea -- ry years,
    God of our si -- lent tears,
    Thou who has brought us thus far on the way;
    Thou who has by Thy might
    Led us in -- to the light,
    Keep us for -- ev -- er in the path, we pray.

    Lest our feet stray from the pla -- ces, our God, where we met Thee,
    lest our hearts drunk with the wine of the world, we for -- get Thee;

    Sha -- dowed be -- neath Thy hand,
    May we for -- ev -- er stand,
    True to our God,
    True to our na -- tive land.
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
                    \melody
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
        >>
    }
}

