
\version "2.18.2"

melody = \relative c' {
  \clef treble
  \key e \major
  \time 4/4

}

harmonies = \chordmode {
  e
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
