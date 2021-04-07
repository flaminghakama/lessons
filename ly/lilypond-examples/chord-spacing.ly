%{ 

Does anyone know how to get chord symbols to be higher up?  
I think they are too close to the notes on the staff.

I've tried messing with the VerticalAxisGroup stuff mentioned in 
http://lilypond.org/doc/v2.19/Documentation/internals/chordnames

but none of it seems to work for me.  


I've gotten the chords to move DOWN with 
\override ChordNames.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 3)

But I cannot seem to get them to go UP.



For bonus points, can anyone explain the interpretation 
of the property called "minimum-Y-extent", 
and why it takes a pair of numbers, rather than a single number?  


I would have liked to try messing with these two:
ChordNames.VerticalAxisGroup #'nonstaff-nonstaff-spacing.padding
ChordNames.VerticalAxisGroup #'nonstaff-relatedstaff-spacing.padding

The docs say the chord names context sets this to a number:
"Set grob-property nonstaff-nonstaff-spacing.padding in VerticalAxisGroup to 0.5."

But when trying to reassign that value, 
it does not appear that you can assign either a plain number like 4, 
a scheme number like #4, nor a pair like #(4 . 4)

So, how do you specify this number?



This one seems to do nothing in my mwe: 
\override ChordNames.VerticalAxisGroup #'remove-empty = ##f



This one seems to only accept 1, 0 or -1, and does not have an effect on the mwe: 
\override ChordNames.VerticalAxisGroup #'staff-affinity = -1

It is, however, the only one that will provide space, 
but only if you put in dan incorrect value, it complains and adds 
way too much space to be useful.

%}

\version "2.19.81"

chordsSong = \chordmode {     
    e1:m7 a:7 fis:m7 b:7 
}

melody = \relative c'' { 
	\key d \major
    r2 fis4-.\f e8 a-> ~ | 2. r4 | 
    r2 gis4-. fis8 b-> ~ | 2. r4 | 
}

<<
    \new ChordNames  { \chordsSong }
    \new Staff { 

    	%  This will push the chord symbols down, for values larger than about 3 
    	%  (of the second part of this number pair--I have yet to detect changes based on the first number)
    	%\override ChordNames.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 4)

    	%  This property does not seem to take a number, I get the error 
    	%  "warning: cannot find property type-check for `nonstaff-nonstaff-spacing.padding' (backend-type?)."
        %\override ChordNames.VerticalAxisGroup #'nonstaff-nonstaff-spacing.padding = 4 
        %\override ChordNames.VerticalAxisGroup #'nonstaff-nonstaff-spacing.padding = #4 
        %\override ChordNames.VerticalAxisGroup #'nonstaff-nonstaff-spacing.padding = #(4 . 4) 
        %\override ChordNames.VerticalAxisGroup #'nonstaff-nonstaff-spacing.padding = #4.0 
        %\override ChordNames.VerticalAxisGroup #'nonstaff-nonstaff-spacing.padding = 4.0 

    	%  Same deal with this one:
        %\override ChordNames.VerticalAxisGroup #'nonstaff-relatedstaff-spacing.padding = #0.5

        % Setting this to #f does not seem to change anything
        %\override ChordNames.VerticalAxisGroup #'remove-empty = ##f 

        %  This one will do nothing (to this mwe) with values -1, 0 or 1
        %  but it does add space with improper values
        %\override ChordNames.VerticalAxisGroup #'staff-affinity = foo

    	\melody 
    }
>>

