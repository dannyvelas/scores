clairnote-type = dn
\include "clairnote.ly"

\version "2.26.0"

U = \tweak Stem.direction #UP \etc

trebleMusic = {
  \clef "treble" \numericTimeSignature \time 4/4 \key c \major
  r4 r8 \U <e' gis'>4 \U <e' gis'>8 r8 r8 | % 1
  r4 r8 \U <e' gis'>4 \U <e' gis'>8 r8 r8 | % 2
  r4 r8 \U <e' gis'>4 \U <e' gis'>8 r8 r8 | % 3
  r4 r8 \U <e' gis'>4 \U <e' gis'>8 r8 r8 | % 4
}

bassMusic = {
  \clef "bass" \numericTimeSignature \time 4/4 \key c \major
  \U <e, e gis>4 \U <e, e gis>8 \U <e gis b>4 \U <e a b>8 [ \U <e, e a>8 \U <e, e gis>8 ] | % 1
  \U <e, e fis>4 \U <e, e gis>8 \U <e gis b>4 \U <e a b>8 [ \U <e, e a>8 \U <e, e gis>8 ] | % 2
  \U <e, e fis>4 \U <e, e gis>8 \U <e gis b>4 \U <e a b>8 [ \U <e, e a>8 \U <e, e gis>8 ] | % 3
  \U <e, e fis>4 \U <e, e gis>8 \U <e gis b>4 \U <e a b>8 [ \U <e, e a>8 \U <e, e gis>8 ] | % 4
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
