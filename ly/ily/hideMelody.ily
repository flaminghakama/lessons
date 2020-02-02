\version "2.19.81"

hideMelody = {
    \hideNotes
    \override TupletBracket.bracket-visibility = ##f
    \override TupletNumber.stencil = ##f
    \override Tie.transparent = ##t
    \override Rest.transparent = ##t
    \override Slur.transparent = ##t
    % hide the articulations
    \override Script.transparent = ##t
}
