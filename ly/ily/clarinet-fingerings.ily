% #(print-keys-verbose 'clarinet (current-error-port))

%{

Fingering options for clarinet

cc
   possibilities for one:
      (one oneT one1qT oneT1q one1q one1qT1h one1hT1q one1qT3q one3qT1q one1qTF oneFT1q one1hT oneT1h one1h one1hT3q one3qT1h one1hTF oneFT1h one3qT oneT3q one3q one3qTF oneFT3q oneFT oneF)
   possibilities for two:
      (two twoT two1qT twoT1q two1q two1qT1h two1hT1q two1qT3q two3qT1q two1qTF twoFT1q two1hT twoT1h two1h two1hT3q two3qT1h two1hTF twoFT1h two3qT twoT3q two3q two3qTF twoFT3q twoFT twoF)
   possibilities for three:
      (three threeT three1qT threeT1q three1q three1qT1h three1hT1q three1qT3q three3qT1q three1qTF threeFT1q three1hT threeT1h three1h three1hT3q three3qT1h three1hTF threeFT1h three3qT threeT3q three3q three3qTF threeFT3q threeFT threeF)
   possibilities for four:
      (four fourT four1qT fourT1q four1q four1qT1h four1hT1q four1qT3q four3qT1q four1qTF fourFT1q four1hT fourT1h four1h four1hT3q four3qT1h four1hTF fourFT1h four3qT fourT3q four3q four3qTF fourFT3q fourFT fourF)
   possibilities for five:
      (five fiveT five1qT fiveT1q five1q five1qT1h five1hT1q five1qT3q five3qT1q five1qTF fiveFT1q five1hT fiveT1h five1h five1hT3q five3qT1h five1hTF fiveFT1h five3qT fiveT3q five3q five3qTF fiveFT3q fiveFT fiveF)
   possibilities for six:
      (six sixT six1qT sixT1q six1q six1qT1h six1hT1q six1qT3q six3qT1q six1qTF sixFT1q six1hT sixT1h six1h six1hT3q six3qT1h six1hTF sixFT1h six3qT sixT3q six3q six3qTF sixFT3q sixFT sixF)
   possibilities for h:
      (h hT h1qT hT1q h1q h1qT1h h1hT1q h1qT3q h3qT1q h1qTF hFT1q h1hT hT1h h1h h1hT3q h3qT1h h1hTF hFT1h h3qT hT3q h3q h3qTF hFT3q hFT hF)
lh
   possibilities for thumb:
      (thumb thumbT)
   possibilities for R:
      (R RT)
   possibilities for a:
      (a aT)
   possibilities for gis:
      (gis gisT)
   possibilities for ees:
      (ees eesT)
   possibilities for cis:
      (cis cisT)
   possibilities for f:
      (f fT)
   possibilities for e:
      (e eT)
   possibilities for fis:
      (fis fisT)
rh
   possibilities for one:
      (one oneT)
   possibilities for two:
      (two twoT)
   possibilities for three:
      (three threeT)
   possibilities for four:
      (four fourT)
   possibilities for b:
      (b bT)
   possibilities for fis:
      (fis fisT)
   possibilities for gis:
      (gis gisT)
   possibilities for e:
      (e eT)
   possibilities for f:
      (f fT)
%}

lowERight = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two three four five six))
        (rh . (e))
    )
}
lowELeft = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb e))
        (cc . (one two three four five six))
        (rh . ())
    )
}
lowFRight = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two three four five six))
        (rh . (f))
    )
}
lowFLeft = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb f))
        (cc . (one two three four five six))
        (rh . ())
    )
}
lowGbRight = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two three four five six))
        (rh . (fis))
    )
}
lowGbLeft = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb fis))
        (cc . (one two three four five six))
        (rh . ())
    )
}

lowG = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
    	(cc . (one two three four five six))
    	(rh . ())
    )
}
lowAb = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two three four five six))
        (rh . (gis))
    )
}
lowA = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
    	(cc . (one two three four five))
    	(rh . ())
    )
}
lowBb = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two three four))
        (rh . ())
    )
}
lowB = \markup \center-align \pad-markup #2 {
    \override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two three five))
        (rh . ())
    )
}
lowBAlt = \markup \center-align \pad-markup #2 {
    \override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two three four))
        (rh . (b))
    )
}

lowC = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two three))
        (rh . ())
    )
}
lowDb = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb cis))
        (cc . (one two three))
        (rh . ())
    )
}
lowD = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two))
        (rh . ())
    )
}
%{ lowEb = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one two))
        (rh . ())
    )
    }
   
%}

midE = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . (one))
        (rh . ())
    )
}
midF = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . ())
        (rh . ())
    )
}
midGb = \markup \center-align \pad-markup #2 {
  \override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . ())
        (cc . (one))
        (rh . ())
    )
}
midGbAlt = \markup \center-align \pad-markup #2 {
  \override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . (thumb))
        (cc . ())
        (rh . (three four))
    )
}

midG = \markup \center-align \pad-markup #2 {
	\override #'(size . 0.7) \woodwind-diagram #'clarinet #'(
        (lh . ())
        (cc . ())
        (rh . ())
    )
}