
alternateFingering = <>^\markup \raise #0.2 { \fontsize #5 \bold "+" }

carelessWhisperLickChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m | s | g:m | s2 a2:m7 |
    bf1:maj7 | s | a:m7 | s |  
}

carelessWhisperSongChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 ||
    \carelessWhisperLickChords
    \carelessWhisperLickChords
}
carelessWhisperSong = \relative c' {
    \key f \major
    r2 r4 f4 \glissando \bar "||" 

    e'4 d8 a ~ 8 f4 e'8 ~ | 
    4 d8 a ~ 8 f4. |
    c'4 bf8 f ~ 8 d4 c'8 ~ | \break
    4 bf8 f ~ 2 | 
    
    bf4 a8 f ~ 8 d4 bf8 ~ | 
    2. r4 | 
    a4 bf c d | \break
    e f g a  \glissando |

    e'4 d8 a ~ 8 f4 e'8 ~ | 
    4 d8 a ~ 8 f4. |
    c'4 bf8 f ~ 8 d4 c'8 ~ | \break
    4 bf8 f ~ 2 | 
    
    bf4 a8 f ~ 8 d4 bf8 ~ | 
    2. r4 | 
    a4 bf c d |
    e f g a \bar "||" \break
}

carelessWhisperRhythmOne = \relative c' {
    \key f \major
    d4 e8 d ~ 8 e4 d8 ~ | 
    4 e8 d ~ 2 |

    f4 g8 f ~ 8 g4 f8 ~ | 
    4 g8 f ~ 2 | \break

    a4 bf8 a ~ 8 bf4 a8 ~ | 
    4 bf8 a ~ 2 |

    c4 d8 c ~ 8 d4 c8 ~ | 
    4 d8 c ~ 2 \bar "||" \break

    a4 d8 a ~ 8 d4 a8 ~ | 
    4 d8 a ~ 2 |

    bf4 d8 bf ~ 8 d4 bf8 ~ | 
    4 d8 bf ~ 2 |

    d4 f8 d ~ 8 f4 d8 ~ | 
    4 f8 d ~ 2 |

    d4 e8 d ~ 8 e4 d8 ~ | 
    4 e8 d ~ 2 \bar "|."
}
carelessWhisperRhythmOneChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \carelessWhisperLickChords
    \carelessWhisperLickChords
}

carelessWhisperRhythmTwo = \relative c' {
    \key f \major
    r4 d8 f ~ 8 a4 c8 ~ | 
    4 e8 c ~ 8 a4. |

    r4 g,8 bf ~ 8 d4 f8 ~ | 
    4 a8 c ~ 8 a4. | \break

    r4 f,8 bf ~ 8 d4 f8 ~ | 
    4 a8 c ~ 8 a4.  |

    r4 a,8 bf ~ 8 c4 d8 ~ | 
    4 e8 f ~ 8 g4. \bar "||" \break

    r4 f'8 d ~ 8 a4 f'8 ~ | 
    4 d8 a ~ 8 f4. |

    r4 d'8 c ~ 8 bf4 d8 ~ | 
    4 c8 bf ~ 8 a4. | \break

    r4 d8 bf ~ 8 a4 d8 ~ | 
    4 bf8 a ~ 8 f4. |

    r4 e'8 c ~ 8 a4 e'8 ~ | 
    4 c8 a ~ 8 g4. \bar "|." 
}
carelessWhisperRhythmTwoChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \carelessWhisperLickChords
    \carelessWhisperLickChords
}
    