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

lowBb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (low-bes))
            (cc . (one two three four five six))
            (rh . (c))
        )
        \huge "Bb"
    }
}

lowB = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (b))
            (cc . (one two three four five six))
            (rh . (c))
        )
        \huge "B"
    }
}

lowC = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three four five six))
                (rh . (c))
        )
        \huge "C"
    }
}

lowCs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (cis))
            (cc . (one two three four five six))
            (rh . (c))
        )
        \huge "C#"
    }
}
lowDb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (cis))
            (cc . (one two three four five six))
            (rh . (c))
        )
        \huge "Db"
    }
}

lowD = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge "D"
    }
}

lowDs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three four five six))
            (rh . (ees))
        )
        \huge "D#"
    }
}
lowEb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three four five six))
            (rh . (ees))
        )
        \huge "Eb"
    }
}

lowE = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three four five))
            (rh . ())
        )
        \huge "E"
    }
}

lowF = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three four))
            (rh . ())
        )
        \huge "F"
    }
}

lowFs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three five))
            (rh . ())
        )
        \huge "F#"
    }
}
lowGb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three five))
            (rh . ())
        )
        \huge "Gb"
    }
}

lowG = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two three))
            (rh . ())
        )
        \huge "G"
    }
}

lowAb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (gis))
            (cc . (one two three))
            (rh . ())
        )
        \huge "Ab"
    }
}
lowGs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (gis))
            (cc . (one two three))
            (rh . ())
        )
        \huge "G#"
    }
}

lowA = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two))
            (rh . ())
        )
        \huge "A"
    }
}

midAs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two))
            (rh . (bes))
        )
        \huge "A#"
    }
}
midBb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one two))
            (rh . (bes))
        )
        \huge "Bb"
    }
}

midB = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (one))
            (rh . ())
        )
        \huge "B"
    }
}

midC = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . (two))
            (rh . ())
        )
        \huge "C"
    }
}

midCs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . ())
            (rh . ())
        )
        \huge "C#"
    }
}
midDb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . ())
            (cc . ())
            (rh . ())
        )
        \huge "Db"
    }
}

midD = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge "D"
    }
}

midDs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two three four five six))
            (rh . (ees))
        )
        \huge "D#"
    }
}
midEb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two three four five six))
            (rh . (ees))
        )
        \huge "Eb"
    }
}

midE = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two three four five))
            (rh . ())
        )
        \huge "E"
    }
}

midF = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two three four))
            (rh . ())
        )
        \huge "F"
    }
}

midFs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two three five))
            (rh . ())
        )
        \huge "F#"
    }
}
midGb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two three five))
            (rh . ())
        )
        \huge "Gb"
    }
}

midG = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two three))
            (rh . ())
        )
        \huge "G"
    }
}

midGs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T gis))
            (cc . (one two three))
            (rh . ())
        )
        \huge "G#"
    }
}
midAb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T gis))
            (cc . (one two three))
            (rh . ())
        )
        \huge "Ab"
    }
}

midA = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two))
            (rh . ())
        )
        \huge "A"
    }
}

highAs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two))
            (rh . (bes))
        )
        \huge "A#"
    }
}
highBb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one two))
            (rh . (bes))
        )
        \huge "Bb"
    }
}

highB = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (one))
            (rh . ())
        )
        \huge "B"
    }
}

highC = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . (two))
            (rh . ())
        )
        \huge "C"
    }
}

highCs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . ())
            (rh . ())
        )
        \huge "C#"
    }
}
highDb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T))
            (cc . ())
            (rh . ())
        )
        \huge "Db"
    }
}

highD = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T d))
            (cc . ())
            (rh . ())
        )
        \huge "D"
    }
}

highDs = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T d ees))
            (cc . ())
            (rh . ())
        )
        \huge "D#"
    }
}
highEb = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T d ees))
            (cc . ())
            (rh . ())
        )
        \huge "Eb"
    }
}

highE = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T d ees))
            (cc . ())
            (rh . (e))
        )
        \huge "E"
    }
}

highF = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (T d ees f))
            (cc . (e))
            (rh . ())
        )
        \huge "F"
    }
}
