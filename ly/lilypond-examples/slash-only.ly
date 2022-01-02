\version "2.19.83"

#(define Bass_changes_equal_root_engraver
  (lambda (ctx)
  "For sequential ChordNames with same root, but different bass, the root markup
is dropped: D D/C D/B  -> D /C /B
The behaviour may be controlled by setting the chordChanges context-property."
    (define sort-procedure (lambda (p1 p2) (< (car p1) (car p2))))
    (let ((chord-pitches '())
          (last-chord-pitches '())
          (bass-pitch #f))
      (make-engraver
        ((initialize this-engraver)
          (ly:context-set-property! ctx 'chordNoteNamer note-name->markup))
        (listeners
          ((note-event this-engraver event)
            (let* ((pitch (ly:event-property event 'pitch))
                   (pitch-name (ly:pitch-notename pitch))
                   (pitch-alt (ly:pitch-alteration pitch))
                   (bass (ly:event-property event 'bass #f))
                   (inversion (ly:event-property event 'inversion #f))
                   (chord-changes (ly:context-property ctx 'chordChanges #f)))
            (cond (bass (set! bass-pitch pitch-name))
                  (inversion
                    (set! bass-pitch pitch-name)
                    (set! chord-pitches
                          (cons (cons pitch-name pitch-alt) chord-pitches)))
                  (else
                    (set! chord-pitches
                          (cons (cons pitch-name pitch-alt) chord-pitches))))

            (if (and bass-pitch
                     chord-changes
                     (equal?
                       (sort chord-pitches sort-procedure)
                       (sort last-chord-pitches sort-procedure)))
                (begin
                  (ly:context-set-property! ctx 'minorChordModifier "")
                  (ly:context-set-property! ctx 'chordRootNamer
                    (lambda (x y) "")))
                (begin
                  (ly:context-set-property! ctx 'minorChordModifier "m")
                  (ly:context-set-property! ctx 'chordRootNamer
                    note-name->markup))))))
        (acknowledgers
          ((chord-name-interface this-engraver grob source-engraver)
            (set! last-chord-pitches chord-pitches)
            (set! chord-pitches '())
            (set! bass-pitch #f)))
        ((finalize this-engraver)
          (set! last-chord-pitches '()))))))

myChords = \chordmode {
  \set chordChanges = ##t
  d2:m d:m/cis 

  d2:m7 d:m7/c 

  d d/cis

  d:maj7 d:maj7/cis 

  d:7 d:7/c \break

  d:m7.5- d:m7.5-/c 

  d:aug d:aug/c

  d:aug7 d:aug7/c 

  d:dim d:dim/bes

  d:dim7 d:dim7/bes \break


  \set chordChanges = ##f
  d:m/b e1:7
  \set chordChanges = ##t
  e
  \break
  \once \set chordChanges = ##f
  e1/f e2/gis e/+gis e e:m/f d:m d:m/cis d:m/c
  \set chordChanges = ##f
  d:m/b
}

<<
    \new ChordNames \with { 
        \consists #Bass_changes_equal_root_engraver 
    } \myChords
    \new Staff \myChords
>>

