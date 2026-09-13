clairnote-type = dn
\include "clairnote.ly"

\version "2.26.0"

U = \tweak Stem.direction #UP \etc

trebleMusic = \relative e {
  \clef "treble" \numericTimeSignature \time 4/4 \key c \major
  \U <e gis>4 \U <e gis>8 \U <e gis b e gis!>4 \U <e gis b e gis>8 [ \U <e gis>8 \U <e gis>8 ] | % 1
  \U <e gis>4 \U <e gis>8 \U <e gis b e gis!>4 \U <e gis b e gis>8 [ \U <e gis>8 \U <e gis>8 ] | % 2
  \U <e gis>4 \U <e gis>8 \U <e gis b e gis!>4 \U <e gis b e gis>8 [ \U <e gis>8 \U <e gis>8 ] | % 3
  \U <e gis>4 \U <e gis>8 \U <e gis b e gis!>4 \U <e gis b e gis>8 [ \U <e gis>8 \U <e gis>8 ] | % 4
}

bassMusic = \relative c' {
  \clef "bass" \numericTimeSignature \time 4/4 \key c \major
  r4 r4 r2 | % 1
  R1 | % 2
  R1 | % 3
  R1 | % 4
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano"
    \set PianoStaff.shortInstrumentName = "Pno."
    \new Staff = "treble" \trebleMusic
    \new Staff = "bass" \bassMusic
  >>
  \layout {}
}
