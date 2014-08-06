
\version "2.18.2"

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  r4 e8 f8 g4. g8 | a4. bes8~ bes8 g4.
}

harmonies = \chordmode {
  e a g a
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
  \midi {}
}
