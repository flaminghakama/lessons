
First of all, thanks for the considered response.

Regarding 1 => 1 vs N => 1 vs 1 => N, 
yes I agree I was hand wavy and incorrect.

What I meant to say was that there is a reliable way to find a default.



It is likely that your suggestion for an even broader feature
to support arbitrary musical content as the denominator, 
would be the best approach in practice.

Since even using a default musical representation, 
people will want to fiddle with the tuplet font, size, bracket, placement, etc.,
and that is likely easier done in the music expression than in time signature properties or defaults. 



In any case, here is an example of an algo that could provide a reasonable default representation.
I would guess that this would satisfy the use cases that are motivating this.  

1) Determine N = how many times the length of the denominator goes into a whole note.
For cases where the time sig is of the form */N, this is simply N. 
This is also true for cases that don't divide evenly.  
For example, with denominator "4.", that is equivalent to the value 3/8, so this divides a whole note 2 2/3 times, or 2.66... 

2) Find D = the (integer) power of 2 that is closest to N, with ties going to the lower power.
To find the candidates, we take the integers above and below log2(N), which we'll call x and x+1.  
Then compare (N - 2^x) and (2^(x+1) - N), and find the smaller value, then use that x (or x+1) to find D = 2^x.

Example: N is 17 
log2(17) = 4.08....
we see if 17 is closer to 2^4 or 2^5
Since (17 - 2^4) < (2^5 - 17), we use x=4 or D = 2^4 = 16

Example: N is 12 
log2(12) = 3.58....
we see if 12 is closer to 2^3 or 2^4
In this case, (12 - 2^3) = (2^4 - 12), so we go with the lower x=3 or D = 2^3 = 8

Example: N is 6 
log2(6) = 2.58....
we see if 6 is closer to 2^2 or 2^3
In this case, (6 - 2^2) = (2^3 - 6), so we go with the lower x=2 or D = 2^2 = 4

Example N is "4." or 8/3 
log2(8/3) = 1.4...
we see if 8/3 is closer to 2^1 or 2^2
In this case, (2.66... - 2^1) < (2^2 - 2.66...), so we go with the lower x=1 or D = 2^1 = 2

Example N is 20 
log2(20) = 1.4...
we see if 8/3 is closer to 2^1 or 2^2
In this case, (2.66... - 2^1) < (2^2 - 2.66...), so we go with the lower x=1 or D = 2^1 = 2

3) This value D corresponds to:
* the duration to use for the note in the tuplet in the denominator
* one of the inputs into determining the tuplet number

4) Determine if there is a need for a tuplet.
If N is a power of 2, there is no need for a tuplet number, 
and our representation is the note for duration N

4) Otherwise, reduce the ratio N:D, to get n:d, and print n as the tuplet number 
Which is to say, if you replaced n, d and D with numbers, 
this suggested default representation would be  \tuplet n/d { D } 


To check how this would work for a few common values:


For 4/17:
N=17 is between 2^4 and 2^4 (16 and 32), and is closer to 16, so we use D=16
N:D is 17:16, and does not reduce
denominator: \tuplet 17/16 { 16 } 

For 5/12:
N=12 is midway between 2^3 and 2^4 (8 and 16), so we go with the smaller D=8
N:D is 12:8, which reduces to 3:2
denominator: \tuplet 3/2 { 8 } 

For 2/6:
N=6 is midway between 2^2 and 2^3 (4 and 8), so we go with the smaller D=4
N:D is 6:4, which reduces to 3:2
denominator: \tuplet 3/2 { 4 } 

For 1/20:

N=20 is between 2^4 and 2^5 (16 and 32), and is closer to 16, so we use D=16
N:D is 20:16 which reduces to 5:4

So we use duration D=16 and tuplet nubmer n=5 or 

denominator: tuplet 5/4 { 16 } 


For 4/4:

N=4 is equal to 2^2 so we use D=4
Since this is a power of 2, we just use duration D=4 and no tuplet

denominator: 4







\version "2.19.83"

\fixed c' {
    \tuplet 5/4 { a16 }
}



