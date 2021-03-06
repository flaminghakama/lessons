pentatonicExerciseOneAMinor = \relative c'' { 
    \key ONE \minor
    \time 4/4
    \tuplet 3/2 4 { 
        ONE8 SEVEN ONE  THREE ONE THREE  FOUR THREE FOUR  FIVE FOUR FIVE | 
        SEVEN8 FIVE SEVEN } ONE4  

    \tuplet 3/2 4 { 
        ONE8 SEVEN ONE  THREE ONE THREE  |
        FOUR8 THREE FOUR  FIVE FOUR FIVE  
        SEVEN8 FIVE SEVEN  FLATFIV FOUR THREE } | 
        ONE2 

    \tuplet 3/2 4 { 
        FIVE'?8 SEVEN FIVE  FOUR FIVE FOUR  |
        THREE8 FOUR THREE  ONE THREE ONE  
        SEVEN8 ONE SEVEN  FIVE SEVEN FIVE  |
        FOUR8 FIVE FOUR  THREE8 FOUR THREE } 

        ONE4 
    \tuplet 3/2 4 { 
        ONE8 THREE ONE  |
        SEVEN8 ONE SEVEN  FIVE SEVEN FIVE  
        FOUR8 FIVE FOUR  THREE8 FOUR THREE |
         FOUR FIVE FOUR  FIVE SEVEN FIVE  SEVEN ONE SEVEN } ONE4 
    \bar "|."
}

pentatonicExerciseTwoGMinor = \relative c'' { 
    \key ONE \minor
    \time 3/4
    ONE4 \tuplet 3/2 4 {
        FIVE8 FOUR THREE  SEVEN' FIVE FOUR |

        ONE'8 SEVEN FIVE  THREE' ONE SEVEN  FOUR' THREE ONE |
        FIVE'8 FOUR THREE  SEVEN'8 FIVE FOUR } ONE'4 | 
    \tuplet 3/2 4 { 
        ONE8 SEVEN FIVE  THREE' ONE SEVEN  
        FOUR'8 THREE ONE  FIVE' FOUR THREE 
        SEVEN'8 FIVE FOUR  FLATFIV FOUR THREE } |
        ONE4

    \tuplet 3/2 4 { 
        FOUR8 FIVE SEVEN  THREE,8 FOUR FIVE | 
        ONE,8 THREE FOUR  
        SEVEN,8 ONE THREE  
        d,8 SEVEN ONE |
        c,8 FIVE SEVEN  
        THREE,8 FOUR FIVE } ONE,4 |
    
    \tuplet 3/2 4 { 
        ONE8 THREE FOUR  SEVEN, ONE THREE 
        d,8 SEVEN ONE |
        c,8 FIVE SEVEN 
        THREE,8 FOUR FIVE  SEVEN ONE THREE } | 
        ONE2. | 
    \bar "|." 
}

pentatonicExerciseThreeGMinor = \relative c'' { 
    \key ONE \minor
    \time 4/4
    ONE2  SEVEN8 FIVE FOUR THREE | 
    ONE'8 SEVEN FIVE FOUR  THREE' ONE SEVEN FIVE |
    FOUR' THREE ONE SEVEN  FIVE' FOUR THREE ONE |
    SEVEN' FIVE FOUR THREE  ONE'2 |

    ONE8 SEVEN FIVE FOUR  THREE' ONE SEVEN FIVE |
    FOUR' THREE ONE SEVEN  FIVE' FOUR THREE ONE |
    SEVEN' FIVE FOUR THREE  ONE2 | 

    THREE8 FOUR FIVE SEVEN  ONE, THREE FOUR FIVE |
    SEVEN,8 ONE THREE FOUR  d, SEVEN ONE THREE |
    c,8 FIVE SEVEN ONE  THREE, FOUR FIVE SEVEN |
    ONE,2 

    ONE8 THREE FOUR FIVE |
    SEVEN,8 ONE THREE FOUR  d, SEVEN ONE THREE |
    c,8 FIVE SEVEN ONE  THREE, FOUR FIVE SEVEN | 
    ONE8 FLATFIV' FOUR THREE  ONE2  |
    \bar "|." 
}

pentatonicExerciseFourGMinor = \relative c'' { 
    \key ONE \minor
    \time 4/4
    ONE1 
    \tuplet 3/2 4 {
        THREE,8 FOUR FIVE  SEVEN ONE SEVEN 
        FOUR8 FIVE SEVEN  ONE THREE ONE |
        FIVE8 SEVEN ONE  THREE FOUR THREE  
        SEVEN8 ONE THREE  FOUR FIVE FOUR |

        ONE8 THREE FOUR  FIVE SEVEN FIVE 
        THREE8 FOUR FIVE  SEVEN ONE SEVEN |
        FOUR8 FIVE SEVEN  ONE THREE ONE 
        FIVE8 SEVEN ONE  THREE FOUR THREE | 
        SEVEN8 ONE THREE  FOUR FIVE FOUR } ONE2 |

    \tuplet 3/2 4 {
        SEVEN'8 FIVE FOUR  THREE ONE THREE 
        FIVE8 FOUR THREE  ONE SEVEN ONE | 
        FOUR8 THREE ONE  SEVEN FIVE SEVEN 
        THREE8 ONE SEVEN  FIVE FOUR FIVE } |  
        ONE2  
 
    \tuplet 3/2 4 {
        ONE8 SEVEN FIVE  FOUR THREE FOUR  |
        SEVEN8 FIVE FOUR  THREE ONE THREE 
        FIVE8 FOUR THREE  ONE SEVEN ONE | 
        FOUR8 THREE ONE  SEVEN FIVE SEVEN 
        THREE8 ONE SEVEN  FIVE FOUR FIVE  } |
    ONE2 \tuplet 3/2 4 {
        ONE8 SEVEN FIVE  FOUR THREE FOUR |
        SEVEN8 FIVE FOUR  THREE FOUR FIVE } ONE2 | 
    \bar "|." 
}

pentatonicExerciseFiveGMinor = \relative c'' {
    \key ONE \minor
    \time 6/4
    ONE8 SEVEN FLATFIV FOUR  THREE [ FOUR FIVE SEVEN ]  ONE2 | 
    FIVE8 SEVEN ONE FLATFIV'  FOUR [ THREE ONE SEVEN ]  ONE2 | 
    ONE8 THREE FOUR FLATFIV  FIVE [ FLATFIV FOUR THREE ]  ONE2 | 
    SEVEN8 ONE THREE FOUR  FLATFIV [ FOUR THREE SEVEN ]  ONE2 |
    THREE8 FOUR FIVE? SEVEN  ONE [ FLATFIV FOUR THREE ]  ONE2 | 
    FLATFIV'8 FOUR THREE ONE  FOUR [ THREE ONE SEVEN ]  ONE2 | 
    FLATFIV'8 FIVE ONE SEVEN  FIVE [ FLATFIV FOUR THREE ]  ONE2 |

    FIVE'8 SEVEN ONE FLATFIV'  FOUR [ THREE ONE SEVEN ]  ONE2 | 
    SEVEN8 ONE THREE FOUR  FLATFIV [ FOUR THREE SEVEN ]  ONE2 |
    ONE8 THREE FOUR FLATFIV  FIVE [ FLATFIV FOUR THREE ]  ONE2 | 
    THREE8 FOUR FLATFIV FIVE   SEVEN [ FLATFIV FOUR THREE ]  ONE2 | 
    FLATFIV'8 FOUR THREE ONE  FOUR [ THREE ONE SEVEN ]  ONE2 | 
    FLATFIV'8 FIVE SEVEN FLATFIV   FOUR [ THREE ONE SEVEN ]  ONE2 |

    SEVEN'8 FIVE FLATFIV FOUR  THREE [ ONE SEVEN FIVE ]  FLATFIV [ FOUR THREE ONE ] | 
    SEVEN8 FIVE? FOUR THREE  ONE'1 |  

    \bar "|."
}

%{}

pentatonicExerciseFiveDMinor = \relative c' {
    \key FIVE \minor
    \time 6/4
    ONE8 THREE FOUR FLATIVE  FIVE [ FLATIVE FOUR THREE ]  ONE2 | 
    SEVEN8 ONE THREE FOUR  FLATIVE [ FOUR THREE SEVEN ]  ONE2 |
    THREE8 FOUR FIVE? SEVEN  ONE [ FLATIVE FOUR THREE ]  ONE2 | 
    FLATIVE'8 FOUR THREE ONE  FOUR [ THREE ONE SEVEN ]  ONE2 | 
    FLATIVE'8 FIVE ONE SEVEN  FIVE [ FLATIVE FOUR THREE ]  ONE2 |

    SEVEN'8 ONE THREE FOUR  FLATIVE [ FOUR THREE SEVEN ]  ONE2 |
    ONE8 THREE FOUR FLATIVE  FIVE [ FLATIVE FOUR THREE ]  ONE2 | 
    THREE8 FOUR FIVE? SEVEN  ONE [ FLATIVE FOUR THREE ]  ONE2 | 
    FLATIVE'8 FOUR THREE ONE  FOUR [ THREE ONE SEVEN ]  ONE2 | 
    FLATIVE'8 FIVE ONE SEVEN  FIVE [ FLATIVE FOUR THREE ]  ONE2 |

    THREE'8 ONE SEVEN FIVE  FLATIVE [ FOUR THREE ONE ]  SEVEN [ FIVE FLATIVE FOUR ] | 
    THREE8 ONE SEVEN ONE  FLATIVE' [ FOUR THREE SEVEN ]  ONE SEVEN FIVE THREE | 

    \bar "|."
}

%}

pentatonicExerciseSixGMinor = \relative c'' {
    \key ONE \minor
    \time 4/4
    ONE8 THREE, FOUR FLATFIV  FIVE SEVEN ONE THREE |
    FOUR8 FLATFIV FIVE SEVEN  ONE8 THREE FOUR FLATFIV |
    FIVE?8 SEVEN FIVE FLATFIV  FOUR  THREE ONE SEVEN | 
    FIVE?8 FLATFIV FOUR THREE  ONE SEVEN FIVE FLATFIV |
    FOUR8 THREE FIVE? SEVEN  ONE2 |
    \bar "|."
}
