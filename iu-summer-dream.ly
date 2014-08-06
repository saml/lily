
\version "2.18.2"

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  r4 e8 f8 g4. g8 | a4. bes8~ bes8 g4. | r4 a8 b8 c8 c4 d8~ | d8 c4 g4. r4 |
  f8 g e f~ f4. g8 | e4 g8 c~ c4 r4 | r4 a8 b c c4 a8~ | a8 c4. b4 r4 |
  
  r4 e,8 f8 g4. c,8 | a'4. bes8~ bes8 g4. | r4 a8 b8 c8 d4 c8 | b4. g8~ g4 r4 |
  f8 g e f~ f4. g8 | e4 g8 c~ c4 r4 | a8 b c c~ c c4 d8~ | d8 c4. r2 |

}

harmonies = \chordmode {
  c1 | c1:7 | f1 | e1:m |
  d2:m g2:7 | c2 a2:m | f1 | g1

  c1 | c1:7 | f1 | e1:m |
  d2:m g2:7 | c2 a2:m | f1 | g1

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
