#import "@local/modern-cv:0.11.0": *

// Exercises the CJK name-order branch of resume() (the
// `if language == "zh" or language == "ja"` check): lastname comes first,
// bold and accent-colored, immediately followed by firstname in a thin
// weight with no separating space — unlike the default "firstname lastname"
// order used for every other language.
//
// Uses Latin-script names rather than actual CJK glyphs: the branch only
// keys off the `language` argument, and the CI dev image
// (.devcontainer/Dockerfile) doesn't install a CJK-capable font, so real
// CJK text would render inconsistently between environments. The footer is
// disabled for the same reason, since its date would otherwise be formatted
// with literal CJK punctuation (already covered as a plain string
// comparison in tests/date-localization).
#show: resume.with(
  author: (
    firstname: "Wei",
    lastname: "Wang",
    email: "js@example.com",
    positions: (),
  ),
  profile-picture: none,
  language: "zh",
  show-footer: false,
)
