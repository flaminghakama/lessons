\version "2.19.83"

titleLeft = "Never Gonna"
titleRight = "Let You Go"
title = "Never Gonna Let You Go"
composerName = "B. Mann & C. Weil"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"

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

\include "ly/ily/layout.ily"

structure = \relative c' { 

}


introChords = \chordmode {
	fs2:m7 b:m7 | e4 e/gs a a/cs | d2:1.2.3.5 e:1.2.3.5 | fs1:1.2.3.5 | 
}

verseOneChords = \chordmode {
	g2:m7 c:m7 | f bf/d | ef bf/d | ef/af ef4/f f/g |
	e2:m7 a:m7 | d4 d/c g2/b | c g/b | c/d d/c | 
}

preChorusChords = \chordmode {
	bf2:1.2.5 f:1.2.5/a | g4:m7 c/e c/f f | c2:1.2.5 g/b | 
	fs2:m7 b:m7 | b4/e e b/e e | ef2:m7.5- af:7.9- | 
}

chorusChords = \chordmode { 
	f2:m7 bf:m7 | ef4 ef/df c2:m7.13- | df g:7 | c bf4/c c/d | 
	fs2:m7 b:m7 | e4 e/d cs2:m7.13- | d:1.2.3.5 e:1.2.3.5 | fs1:1.2.3.5 |
}

verseTwoChords = \chordmode {
	g2:m7 c:m7 | f bf/d | ef bf/d | ef/af ef4/f f/g |
	e2:m7 a:m7 | d4 d/c g2/b | c g/b | c/d d/c | 
}

soloChords = \chordmode { 
	ef4:m7 ef:m/df af/c cs/b | bf2:m7 b:a | gs:m7 fs/as | 
	b2 f4:m7.5- bf:7.9- | ef1:maj7 | d2:m7.5- g:7.9- |
}

chorusTwoChords = \chordmode { 
	e2:m7 a:m7 | d4 d/c b:m7.13- | c2 fs:7 | b a4/b b/cs | 
	f2:m7 bf:m7 | ef4 ef/df af2/c | df ef | f ef4/f f/g | 
}

outChorusChords = \chordmode { 
	bf2:m7 ef:m7 | af4 af/gf df2/f | fs:7 c | f ef4/f f/g | 
	bf2:m7 ef:m7 | af4 af/gf df2/f | gf af | bf1 |
} 


lyricsHead = \lyricmode {

	I was as wrong as I could be
	To let you get a -- way from me
	I'll re -- gret that move
	For as long as I'm liv -- in'

	But now that I've come to see the light
	All I want to do is make things right
	So just say the word
	And tell me that I'm for -- giv -- en

	You and me
	We're gon -- na be better than we were before
	I loved you then but now I intend
	To open up and love you even more
	This time you can be sure

	I'm never gon -- na let you go
	I'm gon -- na hold you in my arms forever
	Gon -- na try and make up for all the times
	I hurt you so

	Gon -- na hold your body close to mine
	From this day on we're gon -- na be together
	Oh I swear this time
	I'm never gon -- na let you go

	Looking back now
	It seems so clear
	I had it all when you were here
	Oh you gave it all
	And I took it for granted

	But if there's some feeling left in you
	Some flickers of love
	That still shines through
	Let's talk it out
	Let's talk about second chances

	Wait and see
	It's gon -- na be sweeter than it was before
	I gave some then but now I intend
	To dedicate myself to giving more
	This time you can be sure

	I'm never gon -- na let you go
	I'm gon -- na hold you in my arms forever
	Gon -- na try and make up for all the times
	I hurt you so

	Oh, so if you'll just say
	You want me too
}

melodyHead = \relative c' { 
	% intro
	s1*4

	% verse 1
	r4  bf16 c d d ~  8 ef16 c ~  16 8 16 ~ | 4 
	a16 bf c ef ~  8 d16 bf ~  16 g8 16 ~ | 4 
	r8 bf16 16  16 g8 f16 ~ 8  a16 bf | 
	d16 c bf16 16 ~  16 c8. ~  8. d16 ~  8 r8 |
}