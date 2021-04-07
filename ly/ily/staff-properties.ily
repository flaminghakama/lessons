				\autoPageBreaksOff
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \numericTimeSignature 
                \compressFullBarRests
                \override MultiMeasureRest.expand-limit = #1
                \accidentalStyle modern-voice-cautionary
			    \override Beam.damping = #2.75 
			    \override Stem.length-fraction = #(magstep 1.00) 
			    \override DynamicLineSpanner.staff-padding = #2
				\override ChordNames.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
				\override ChordNames.VerticalAxisGroup #'nonstaff-nonstaff-spacing.padding = #5
 

				% \override Staff.VerticalAxisGroup #'remove-empty = ##f
				% \override Staff.VerticalAxisGroup #'nonstaff-nonstaff-spacing.padding = #10


