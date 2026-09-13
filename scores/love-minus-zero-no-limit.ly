\version "2.26.0"

U = \tweak Stem.direction #UP \etc
downStrum = \markup { "↓" }
upStrum = \markup { "↑" }

% Capo IV; low string tuned to C2 (a whole step below standard drop D)
% instead of E2, so open-string pitches are C2 A2 D3 G3 B3 E4. With the
% capo up 4 semitones, the pitches a fretted note is measured from
% (relative to the capo) become E2 C#3 F#3 B3 D#4 G#4.
capoTuning = \stringTuning <e, cis fis b dis' gis'>

guitarMusic = {
  \numericTimeSignature \time 4/4 \key e \major
  \mark \markup { \bold "Capo IV" }
  \U <e e' gis'>4^\downStrum \U <e e' gis'>8^\downStrum [ \U <e' gis' b' e'' gis''>8^\upStrum ] \U <e' gis' b' e'' gis''>8\p^\downStrum [ \U <e' a' b' e'' gis''>8\mf^\upStrum ] \U <e e' a'>8^\downStrum [ \U <e e' gis'>8^\upStrum ] | % 1
  \U <e e' fis'>4^\downStrum \U <e e' gis'>8^\downStrum [ \U <e' gis' b' e'' gis''>8^\upStrum ] \U <e' gis' b' e'' gis''>8\p^\downStrum [ \U <e' a' b' e'' gis''>8\mf^\upStrum ] \U <e e' a'>8^\downStrum [ \U <e e' gis'>8^\upStrum ] | % 2
  \U <e e' fis'>4^\downStrum \U <e e' gis'>8^\downStrum [ \U <e' gis' b' e'' gis''>8^\upStrum ] \U <e' gis' b' e'' gis''>8\p^\downStrum [ \U <e' a' b' e'' gis''>8\mf^\upStrum ] \U <e e' a'>8^\downStrum [ \U <e e' gis'>8^\upStrum ] | % 3
  \U <e e' fis'>4^\downStrum \U <e e' gis'>8^\downStrum [ \U <e' gis' b' e'' gis''>8^\upStrum ] \U <e' gis' b' e'' gis''>8\p^\downStrum [ \U <e' a' b' e'' gis''>8\mf^\upStrum ] \U <e e' a'>8^\downStrum [ \U <e e' gis'>8^\upStrum ] | % 4
  \U <e e' fis'>4^\downStrum \U <e e' gis'>8^\downStrum [ \U <e' gis' b' e'' gis''>8^\upStrum ] \U <e' gis' b' e'' gis''>8\p^\downStrum [ \U <e' a' b' e'' gis''>8\mf^\upStrum ] \U <e e' a'>8^\downStrum [ \U <e e' gis'>8^\upStrum ] | % 5
  \U <e e' fis'>4^\downStrum \U <e e' gis'>8^\downStrum [ \U <e' gis' b' e'' gis''>8^\upStrum ] \U <e' gis' b' e'' gis''>8\p^\downStrum [ \U <fis fis' b' dis'' gis''>8\mf^\upStrum ] \U <fis fis' b' dis'' gis''>8^\downStrum [ \U <e e' a' cis'' e'' gis''>8^\upStrum ] | % 6
  \U <e e' a' cis'' e'' gis''>8^\downStrum [ \U <e' a' cis'' e'' gis''>8^\upStrum ] \U <e e' a' cis'' e'' gis''>8^\downStrum [ \U <e' a' cis'' e'' gis''>8^\upStrum ] \U <e e' a' cis'' e'' gis''>8^\downStrum [ \U <e' a' cis'' e'' gis''>8^\upStrum ] \U <e e' a' cis'' e'' gis''>8^\downStrum [ \U <e' a' cis'' e'' gis''>8^\upStrum ] | % 7
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
