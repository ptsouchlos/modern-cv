#import "@local/modern-cv:0.11.0": *

// hiring-entity-info() takes its own `language` argument, independent of
// coverletter()'s — its docstring calls this out explicitly, since it's
// easy to assume the two stay in sync automatically. Uses different
// languages for each to prove they're independently controlled: the
// coverletter footer date is formatted per the `fr` locale ("28/08/2026")
// while the hiring-entity-info date is formatted per an explicitly
// different `de` locale ("28.08.2026"), even though both format the same
// underlying datetime.
#show: coverletter.with(
  author: (
    firstname: "John",
    lastname: "Smith",
    email: "js@example.com",
    positions: ("Software Engineer",),
  ),
  profile-picture: none,
  language: "fr",
  date: datetime(year: 2026, month: 8, day: 28),
)

#hiring-entity-info(
  entity-info: (
    target: "Recruitment Team",
    name: "Example, Inc.",
    street-address: "111 Example St.",
    city: "Example City, EX 11111",
  ),
  date: datetime(year: 2026, month: 8, day: 28),
  language: "de",
)
