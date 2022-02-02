\version "2.23.2"

%{
    killPreview
    rm bwv1007_prelude.pdf
    lilypond ly/songs/bach/bwv1007_prelude.ly
    mv bwv1007_prelude.pdf pdf/songs/bach
    a pdf/songs/back/bwv1007_prelude.pdf &
%}

#(ly:set-option 'relative-includes #t)

titleLeft = "Suite #1 for Violoncello"
titleRight = ""
titleFull = "Suite #1 for Violoncello"
instrumentName = ""
composerName = "Johann Sebastian Bach (1685-1750)"
copyright = \markup { \tiny "public domain" }
arranger = ""

\header {
  title =   "Suite for Violoncello #1"
  subtitle = "Prelude"
  opus =    "BWV 1007"
}

\include "../engraving/flaming-libs/flaming-standard.ily"
%#(set-default-paper-size "legal" 'landscape)

voiceone = \relative c' {

    \accidentalStyle modern-cautionary
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.03) 

	\time 4/4
	\key g \major

	% 1
	g16 ( d' b' a b ) d, ( b' d, ) g, ( d' b' a b ) d, ( b' d, ) |
	g, ( e' c' b c ) e, ( c' e, ) g, ( e' c' b c ) e, ( c' e, ) |
	g, ( fis' c' b c ) fis, ( c' fis, ) g, ( fis' c' b c ) fis, ( c' fis, ) |
	g, ( g' b a b ) g ( b g ) g, ( g' b a b ) g ( b fis ) \breathe |
	g, ( e' b' a b ) g ( fis g e ) g ( fis g b, ) d ( cis b  |
	% 6
	cis ) g' ( a g a ) g ( a g cis, ) g' ( a g a ) g ( a g |
	fis ) a ( d cis d ) a ( g a fis ) a ( g  a d, ) \breathe fis ( e d ) |
	e, ( b' g' fis g ) b, ( g' b, ) e, ( b' g' fis g ) b, ( g' b, ) |
	e, ( cis' d e d ) cis ( b a g' fis e ) d' ( cis b a g ) |
	fis ( e d d' a ) d ( fis, a ) d, ( e fis a g ) fis ( e d ) |
	% 11
	gis ( d f e f ) \breathe d ( gis d b'  d,  f e f ) \breathe d ( gis d ) |
	c ( e a b c ) a ( e d ) c ( e a b c ) a ( fis e ) |
	dis ( fis dis fis a ) fis ( a fis dis fis dis fis a ) \breathe fis ( a fis ) |
	g ( fis e g fis ) g ( a fis ) g ( fis e  d  c ) b ( a g ) |
	fis ( c' d c d ) c ( d c ) fis, ( c' d c d ) \breathe c ( d c ) |
	% 16
	g ( b f' e f ) b, ( f' b, ) g ( b f' e f ) b, ( f' b, ) |
	g ( c e d e ) c ( e c ) g ( c e d e ) \breathe c ( e c ) |
	g ( fis' c' b c ) fis, ( c' fis, ) g, ( fis' c' b c ) fis, ( c' fis, ) |
	g, ( d' b' a b ) g ( fis e ) d ( c b a g ) \breathe fis ( e d ) |
	cis ( a' e' fis g ) e ( fis g ) cis,, ( a' e' fis g ) e ( fis g ) | \pageBreak
	% 21
	c,,! ( a' d e fis ) d ( e fis ) c, ( a' d e fis ) d ( e fis ) |
	c, ( a' d fis a ) cis ( d8 \laissezVibrer \fermata d16 ) a, ( b c! d e fis g |
	a fis ) d ( e fis g a b c a ) fis ( g a b c d ) |
	ees ( d cis d ) d ( c b c ) c ( a fis e d ) \breathe a ( b c ) |
	d, ( a' d fis a ) b ( c a b  g  d c b ) g ( a b ) |
	% 26
	d, ( g b d g a b g ) cis ( bes a bes ) bes ( a gis a ) |
	a ( g fis g ) g ( e cis b a cis e g a ) cis ( d cis |
	d ) a ( fis e fis ) a ( d, fis a, ) d ( cis b a g fis e |
	d8 ) \breathe c''16 ( b a g fis e d ) c' ( b a g fis e d |
	c ) b' ( a g fis e d c b ) a' ( g fis e d c b |
	% 31
	a ) g' ( fis e fis ) a ( d, a' e  a  fis a g ) \breathe a ( e a |  \break
	fis ) a ( d, a' g a e a fis a d, a' g ) a ( e a |
	fis ) a ( d, a' e a fis a g ) \breathe a a a ( b a d, a' ) | \break
	a a ( b a  c a d, a' b ) a ( c a d a b a |
    c ) \breathe a ( b a c a ) a a ( b ) a a a ( b a g a ) |
	% 36
    a \breathe a ( g a ) a a ( fis a g ) a ( fis a g a e a |
	fis ) \breathe a ( d, e ) f ( d ) fis ( d ) g ( d ) gis ( d ) a' ( d, ) bes' ( d, ) |
	b'! ( d, ) c' ( d, ) cis' ( d, ) d' ( d, ) ees' ( d, ) e' ( d, ) f' ( d, ) fis' ( d, ) \breathe |
	g' ( b, d, b' g' ) b, ( g'  b, ) g' ( b, d, b' g' ) b, ( g' b, ) |
	g' ( a, d, a' g' ) a, ( g'  a, ) g' ( a, d, a' g' ) a, ( g' a, ) |
	% 41
	fis' ( c d, c' fis ) c ( fis c ) fis ( c d, c' fis ) c ( fis c ) \breathe |
	\grace { g,16 ( d' b' } \fermata g'1 ) | \bar "|."
}


\book {
    \bookOutputSuffix "for-C"
    \header {
        poet = "    Violoncello"
        instrumentName = \poet
    }
    \score {
        \new Staff << 
            \autoPageBreaksOff
            \voiceone 
        >>

        \layout { }
    }
}

\book {
    \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Alto or Baritone Sax"
        instrumentName = \poet
        subtitle = "(transposed down a half step to Ab)"
    }
    \score {
        \new Staff \transpose e f \transpose ees, c 
        << 
            \autoPageBreaksOff
            \voiceone 
        >>

        \layout { }
    }
}