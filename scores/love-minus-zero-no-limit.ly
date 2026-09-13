\version "2.26.0"

U = \tweak Stem.direction #UP \etc

% Capo IV; low string tuned to C2 (a whole step below standard drop D)
% instead of E2, so open-string pitches are C2 A2 D3 G3 B3 E4. With the
% capo up 4 semitones, the pitches a fretted note is measured from
% (relative to the capo) become E2 C#3 F#3 B3 D#4 G#4.
capoTuning = \stringTuning <e, cis fis b dis' gis'>

guitarMusic = {
  \numericTimeSignature \time 4/4 \key e \major
  \mark \markup { \bold "Capo IV" }
  \U <e e' gis'>4 \U <e e' gis'>8 [ \U <e' gis' b' e'' gis''>8 ] \U <e' gis' b' e'' gis''>8\p [ \U <e' a' b' e'' gis''>8\mf ] \U <e e' a'>8 [ \U <e e' gis'>8 ] | % 1
  \U <e e' fis'>4 \U <e e' gis'>8 [ \U <e' gis' b' e'' gis''>8 ] \U <e' gis' b' e'' gis''>8\p [ \U <e' a' b' e'' gis''>8\mf ] \U <e e' a'>8 [ \U <e e' gis'>8 ] | % 2
  \U <e e' fis'>4 \U <e e' gis'>8 [ \U <e' gis' b' e'' gis''>8 ] \U <e' gis' b' e'' gis''>8\p [ \U <e' a' b' e'' gis''>8\mf ] \U <e e' a'>8 [ \U <e e' gis'>8 ] | % 3
  \U <e e' fis'>4 \U <e e' gis'>8 [ \U <e' gis' b' e'' gis''>8 ] \U <e' gis' b' e'' gis''>8\p [ \U <e' a' b' e'' gis''>8\mf ] \U <e e' a'>8 [ \U <e e' gis'>8 ] | % 4
  \U <e e' fis'>4 \U <e e' gis'>8 [ \U <e' gis' b' e'' gis''>8 ] \U <e' gis' b' e'' gis''>8\p [ \U <e' a' b' e'' gis''>8\mf ] \U <e e' a'>8 [ \U <e e' gis'>8 ] | % 5
  \U <e e' fis'>4 \U <e e' gis'>8 [ \U <e' gis' b' e'' gis''>8 ] \U <e' gis' b' e'' gis''>8\p [ \U <fis fis' b' dis'' gis''>8\mf ] \U <fis fis' b' dis'' gis''>8 [ \U <e e' a' cis'' e'' gis''>8 ] | % 6
  \U <e e' a' cis'' e'' gis''>8 [ \U <e' a' cis'' e'' gis''>8 \U <e e' a' cis'' e'' gis''>8 \U <e' a' cis'' e'' gis''>8 ] \U <e e' a' cis'' e'' gis''>8 [ \U <e' a' cis'' e'' gis''>8 ] r4 | % 7
}

\score {
  <<
    \new Staff = "guitar" <<
      \set Staff.instrumentName = "Guitar"
      \set Staff.shortInstrumentName = "Gtr."
      \clef "treble_8"
      \guitarMusic
    >>
    \new TabStaff = "tab" \with {
      stringTunings = \capoTuning
    } { \transpose c' c \guitarMusic }
  >>
  \layout {}
}
