\version "2.23.2"
                \autoPageBreaksOff
                \numericTimeSignature 
                \compressEmptyMeasures
                \override MultiMeasureRest.expand-limit = #1
                \accidentalStyle modern-voice-cautionary
                \override Accidental.hide-tied-accidental-after-break = ##t
                \override Beam.damping = #2.75 
                \override Stem.length-fraction = #(magstep 1.2) 
                \override DynamicLineSpanner.staff-padding = #2.6
