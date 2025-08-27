\version "2.24.4"

\header {
  title = "Nandalaala Tune"
  composer = "Om Raheja"
  tagline = ##f  % Remove default footer
}

% Define standard guitar tuning (E2 A2 D3 G3 B3 E4)
standardTuning = \stringTuning <e, a, d g b e'>

music = {
  \key c \major
  \time 4/4
  
  % Example tab - replace with your actual tablature
  <g\3>4 <a\3> <b\3> <g\3>  |
  <g\3>4 <a\3> <b\3> <g\3>  |
  <g\3>4 <a\3> <b\3> <b\3>  |
  <c'\3>4 <b\3> <a\3>  r4   \break
  <fis\4>4 <g\4> <a\3> <fis\4>  |
  <fis\4>4 <g\4> <a\3> <fis\4>  |
  \time 6/8 <g'\1>8 <g'\1> <g'\1> <e'\1> <d'\2> <c'\2> |
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = \standardTuning
    \set TabStaff.instrumentName = #"Guitar"
    \set TabStaff.shortInstrumentName = #"Gtr."
    
    \clef "moderntab"
    \music
  }
  
  \layout {
    \context {
      \TabStaff
      \numericTimeSignature
      \override Stem.transparent = ##t       % Hide stems
      \override Flag.transparent = ##t       % Hide flags
      \override Beam.transparent = ##t       % Hide beams
    }
    
    \context {
      \TabVoice
      \override TextScript.padding = #2       % Add padding to string numbers
    }
    
    indent = #15  % Reduce indentation
    ragged-right = ##t
  }
}
