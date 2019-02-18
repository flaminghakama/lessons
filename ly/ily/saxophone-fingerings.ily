%{

cc
   possibilities for one:
      (one oneT)
   possibilities for two:
      (two twoT)
   possibilities for three:
      (three threeT)
   possibilities for four:
      (four fourT)
   possibilities for five:
      (five fiveT)
   possibilities for six:
      (six sixT)
lh
   possibilities for T:
      (T TT)
   possibilities for ees:
      (ees eesT)
   possibilities for d:
      (d dT)
   possibilities for f:
      (f fT)
   possibilities for front-f:
      (front-f front-fT)
   possibilities for bes:
      (bes besT)
   possibilities for gis:
      (gis gisT)
   possibilities for cis:
      (cis cisT)
   possibilities for b:
      (b bT)
   possibilities for low-bes:
      (low-bes low-besT)
rh
   possibilities for e:
      (e eT)
   possibilities for c:
      (c cT)
   possibilities for bes:
      (bes besT)
   possibilities for high-fis:
      (high-fis high-fisT)
   possibilities for fis:
      (fis fisT)
   possibilities for ees:
      (ees eesT)
   possibilities for low-c:
      (low-c low-cT)



%}

lowBb = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . (low-bes))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowB = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . (b))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowC = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowDb = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . (cis))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowD = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five six))
        (rh . ())
    )
}
lowEb = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five))
        (rh . (ees))
    )
}
lowE = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
    	(cc . (one two three four five))
    	(rh . ())
    )
}
lowF = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four))
        (rh . ())
    )
}
lowGb = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
    	(cc . (one two three five))
    	(rh . ())
    )
}
lowG = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three))
        (rh . ())
    )
}
lowAb = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three))
        (rh . (gis))
    )
}
lowA = \markup \center-align \pad-markup #2 {
	\woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two))
        (rh . ())
    )
}


midBb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two))
        (rh . (bes))
    )
}
midB = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one))
        (rh . ())
    )
}
midC = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (two))
        (rh . ())
    )
}
midDb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . ())
        (rh . ())
    )
}
midD = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five six))
        (rh . ())
    )
}
midEb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five))
        (rh . (ees))
    )
}
midE = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five))
        (rh . ())
    )
}
midF = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four))
        (rh . ())
    )
}
midGb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three five))
        (rh . ())
    )
}
midG = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three))
        (rh . ())
    )
}
midAb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three))
        (rh . (gis))
    )
}
midA = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two))
        (rh . ())
    )
}


highBb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two))
        (rh . (bes))
    )
}
highB = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one))
        (rh . ())
    )
}
highC = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (two))
        (rh . ())
    )
}
highDb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . ())
        (rh . ())
    )
}
highD = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d))
        (cc . ())
        (rh . ())
    )
}
highEb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees))
        (cc . ())
        (rh . ())
    )
}
highE = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees))
        (cc . ())
        (rh . (e))
    )
}
highF = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees f))
        (cc . (e))
        (rh . ())
    )
}
