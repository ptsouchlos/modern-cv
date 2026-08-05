#import "@local/modern-cv:0.11.0": *

// exercise non-default `resume()` options: no profile picture, disabled
// colored headers, and overridden page margins.
#show: resume.with(
  author: (
    firstname: "John",
    lastname: "Smith",
    birth: "January 1, 1970",
    email: "career@totally.rip",
    phone: "(+1) 111-111-111",
    github: "john",
    positions: (),
  ),
  profile-picture: none,
  colored-headers: false,
  margins: (left: 25mm, right: 25mm, top: 20mm, bottom: 20mm),
)

= Education
#lorem(80)

// standalone right-header building blocks
#secondary-right-header[Secondary right header]
#linebreak()
#tertiary-right-header[Tertiary right header]

// resume-entry with overridden spacing above/below
#resume-entry(
  title: "Overridden Spacing Entry",
  location: "Example City",
  date: "2023 - Present",
  description: "Uses non-default spacing-above/spacing-below.",
  spacing-above: 2em,
  spacing-below: 1.5em,
)
