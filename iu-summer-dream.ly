
\version "2.18.2"

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  r4 e8 f8 g4. g8 | a4. bes8~ bes8 g4. | r4 a8 b8 c8 c4 d8~ | d8 c4 g4. r4 |
  f8 g e f~ f4. g8 | e4 g8 c~ c4 r4 | r4 a8 b c c4 a8~ | a8 c4. b4 r4 |
  
  r4 e,8 f8 g4. c,8 | a'4. bes8~ bes8 g4. | r4 a8 b8 c8 d4 c8 | b4. g8~ g4 r4 |
  f8 g e f~ f4. g8 | e4 g8 c~ c4 r4 | a8 b c c~ c c4 d8~ | d8 c4. r2 |

  r4 a8 b c d4 c8 | b4 c8 b~ b g4. | r4 f8 e f f4 g8 | a4 b8 g~ g4 r4 
  r4 a8 b c d4 c8~ | c8 g'4 f8~ f8 e4. | f8 e c c~ c4. a8 | c4. d~ d4 e8 f |

  e4. e8 e d16 d~ d8 c | d4. g16 g8~ g4 r4 | f8 e f c16 c~ c8 d4 g8 | g8 g g d16 d~ d8 e4 e8 

}

harmonies = \chordmode {
  c1 | c1:7 | f1 | e2:m a2:m |
  d2:m g2:7 | c2 a2:m | f1 | g1

  c1 | c1:7 | f1 | e2:m a2:m |
  d2:m g2:7 | c2 a2:m | f2 g2 | c1

  f1 | e2:m a2:m | d2:m g2 | c1
  f1 | e2:m a2:m | d2:m d2 | g1

  f2 g2 | e2:m a2:m | d2:m g2 | e2:m a2:m
  f2 g2 | e2:m a2:m | d2:m g2 | c1

  

}


\header {
  title = "summer night's dream"
  composer = "IU"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" {
      \autoBeamOff \melody
    }
  >>
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}
