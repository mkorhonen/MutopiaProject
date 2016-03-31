%
%%--------------------------------------------------------------------
% Mutopia Project
% Johann Sebastian Bach
% Ouvertüre nach Französischer Art BWV 331
% (Overture in the French Style)
%%--------------------------------------------------------------------

\version "2.18.2"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum: 8 mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block 
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
    title = "Ouvertüre nach Französischer Art"
    composer = "Johann Sebastian Bach (1685–1750)"
    opus = "BWV 831"
    %piece = "Left-aligned header"
    date = "1735"
    style = "Baroque"
    source = "Breitkopf und Härtel, 1853"

    maintainer = "Mikko Korhonen"
    maintainerEmail = "mikko.korhonen@gmail.com"
    license = "Public Domain"
    %date = "2016/03/31"

    mutopiatitle = "Ouvertüre nach Französischer Art"
    mutopiaopus = "BWV 831"
    mutopiacomposer = "BachJS"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are separated by a comma
    mutopiainstrument = "Harpsichord"


    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
    footer = "Mutopia-2001/01/01-1"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}


%{
OuvertureUp = {
  \time 2/2
  \key d \major
  <<
    \new Voice = "one" \relative c' {
      r4 r8 r32 fis g e fis4.\mordent d'8 |
      \grace { d8 } \stemUp cis2 <fis, a cis fis ~ >4\arpeggio  fis'8( fis32) e d cis |
      b'4.
    }
    \new Voice = "two" \relative c' {
      <e, g>2 s2 |
    }
  >>
}
%}

\parallelMusic #'(voiceA voiceB voiceC voiceD) {
  \time 2/2
  \key d \major
  % 1
  b'4\rest b8\rest b32\rest fis32 g e fis4.\mordent d'8 | % TREBLE highest (upstem)
  s1                                                    | % TREBLE lowest (downstem)
  \time 2/2
  \key d \major
  <fis, b>2\arpeggio d'2                                | % BASS highest (upstem)
  <b, d>2\arpeggio b' ~                                 | % BASS lowest (downstem)
  % 2
  \grace { d8 } cis2 <fis, a cis fis>4\arpeggio ~ fis'8( fis32) e d cis |
  s1                                                    |
  s1                                                    |
  b4. ~ b32 a b g a8. fis16 d8. fis16                   |
  % 3
  b4. r16 b e2 ~                                          |
  r8 r32 a' g fis e4 ~ <e g b>4. d'16\rest cis            |
  \stemNeutral g,4 ~ g8( g32) fis e d cis4. ~ cis32 b a g |
  s1                                                      |
  % 4
  e8 e32 d e cis fis8. e16 d4.\prall r16 cis |
  ais4. r16 cis b4. r16 ais!                 |
  fis2 ~ fis8_( fis32) fis' g e fis8. fis,16 |
  s1                                         |
  % 5
  d4 \grace { cis8 } b4 \grace { g8 } fis4. r16 g |
  b4 fis d4. s8                                   |
  \stemUp r8 r16 cis'16 d8.[ fis16] b8 s8 s4      | % Maths: | [8 (16 16)] [8. 16] [8 8*] [4*] |
  b,2 ~ b8. b16 a8. g16                           |
  % 6
  a4.\mordent _~  a32 g a fis _~  << \stemDown fis4 \\ \stemUp a4 >> s4 |
  s2 d'4. \stemDown c16\rest e                                          |
  r8 r32 a, b cis d8. e16 fis8. s16 s4                                  | % {8 [(32 32) (32 32)]} {8. 16} {8. 16*} 4*
  fis2 ~ fis8. e16 fis8. g16                                            |
  % 7
  \stemUp \grace { d8 } <a cis>4 b8 a \grace { d8 } cis4. d16\rest dis |
  e,2 a2                                                               |
  a,2 ~ a8. a16 g8.\prall fis16                                        |
  s1                                                                   |
  % 8
  \grace { dis8 } e4 ~ e32 fis e dis! e16 fis fis4.\trill r16 e32 fis |
  b1 ~                                                                |
  s1                                                                  |
  g8. g'16 fis8. e16 dis8. e32 fis \stemUp b,8. cis32 dis             |
  % 9
  g4 ~ g8. fis16 e8.\prall d16 cis8.\prall b16 |
  b8. b16 ais4 b g                             |
  s2 r8 r16 b'16 e8.[ d16]                     |
  \stemDown e4 fis g e                         | 
  % 10
  ais4\prallprall ~ ais8.( e'16) d4\prallprall ~ d8. cis16 |
  fis2 fis                                                 |
  cis8. r16 r4 r8 r16 fis, gis8.[ a16]                     |
  fis8. e16 d8. cis16 b2 ~                                 |
  % 11
  cis4. ~ cis32 cis, d b cis4.\mordent cis'8 |
  eis8. s16 s4 s2                            |
  gis8. s16 s4 r8 r32 cis,32 dis eis fis4 ~  |
  b8. b16 a8.\prall gis16 a2 ~               |
  % 12
  b4.\arpeggio ~ b32 cis, d b cis4.\mordent b'8  |
  <d fis>4\arpeggio s4 s4. eis8                  |
  fis8. s16 s4 f8\rest d32\rest gis,! a b cis4 ~ |
  a8. a16 gis8. fis16 eis4. cis8                 |
  % 13
  \grace { b8 } a4. ~ a32 cis, d b \grace { b8 } cis4. a'8   |
  fis4 s4 s2                                                 |
  cis16[ cis dis eis] \stemDown fis[ eis fis gis] \stemUp a2 |
  fis4 s4 fis'2 ~                                            |
  % 14
  \grace { a8 } <b, d gis>2 cis'4.\arpeggio ~ cis32 b a gis |
  s2 <cis e gis!>4\arpeggio s4                              |
  s1                                                        |
  fis4. ~ fis32 e fis d e8. cis16 a8. cis16                 |
  
  \repeat unfold 50 {
    cis1 |
    cis1 |
    cis1 |
    cis1 |
  }
}



%-------Typeset music and generate midi
\book{
   \header {
     piece = "Ouverture"
   }
  \score {
      \context PianoStaff <<
          %-Midi instrument values at 
          % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
          \set PianoStaff.midiInstrument = "harpsichord"
          \set PianoStaff.connectArpeggios = ##t
          \new Staff << \relative c' \voiceA \\ \relative c' \voiceB >>
          \new Staff << \clef bass \relative c' \voiceC \\ \relative c' \voiceD >>
      >>
      \layout{ }
      \midi  { \tempo 4 = 70 }
  }
  %{
   \header {
     piece = \markup{\huge{Écho}}
   }
  \score {
      \context PianoStaff <<
          %-Midi instrument values at 
          % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
          \set PianoStaff.midiInstrument = "harpsichord"
          \new Staff = "upper" { \clef treble \OuvertureUp }
          \new Staff = "lower" { \clef bass  \OuvertureDown }
      >>
      \layout{ }
      \midi  { \tempo 4 = 70 }
  }%}
}
