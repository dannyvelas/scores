clairnote-type = dn
\include "clairnote.ly"

\version "2.26.0"

U = \tweak Stem.direction #UP \etc

guitarMusic = {
  \clef "treble_8" \numericTimeSignature \time 4/4 \key c \major
  \U <e e' gis'>4 \U <e e' gis'>8 \U <e' gis' b' e'' gis''>4 \U <e' a' b' e'' gis''>8 [ \U <e e' a'>8 \U <e e' gis'>8 ] | % 1
  \U <e e' fis'>4 \U <e e' gis'>8 \U <e' gis' b' e'' gis''>4 \U <e' a' b' e'' gis''>8 [ \U <e e' a'>8 \U <e e' gis'>8 ] | % 2
  \U <e e' fis'>4 \U <e e' gis'>8 \U <e' gis' b' e'' gis''>4 \U <e' a' b' e'' gis''>8 [ \U <e e' a'>8 \U <e e' gis'>8 ] | % 3
  \U <e e' fis'>4 \U <e e' gis'>8 \U <e' gis' b' e'' gis''>4 \U <e' a' b' e'' gis''>8 [ \U <e e' a'>8 \U <e e' gis'>8 ] | % 4
  \U <e e' fis'>4 \U <e e' gis'>8 \U <e' gis' b' e'' gis''>4 \U <e' a' b' e'' gis''>8 [ \U <e e' a'>8 \U <e e' gis'>8 ] | % 5
  \U <e e' fis'>4 \U <e e' gis'>8 \U <e' gis' b' e'' gis''>4 \U <fis fis' b' dis'' gis''>8 [ \U <fis fis' b' dis'' gis''>8 \U <e e' a' cis'' e'' gis''>8 ] | % 6
  \U <e e' a' cis'' e'' gis''>8 [ \U <e' a' cis'' e'' gis''>8 \U <e e' a' cis'' e'' gis''>8 \U <e' a' cis'' e'' gis''>8 ] \U <e e' a' cis'' e'' gis''>8 [ \U <e' a' cis'' e'' gis''>8 ] r4 | % 7
}

\score {
  \new Staff = "guitar" <<
    \set Staff.instrumentName = "Guitar"
    \set Staff.shortInstrumentName = "Gtr."
    \guitarMusic
  >>
  \layout {}
}
