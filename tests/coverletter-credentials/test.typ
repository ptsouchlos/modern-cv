#import "../../src/lib.typ": *

// exercise `author.credentials` in the default signature with the default
// `credentials-separator` (a single space).
#show: coverletter.with(
  author: (
    firstname: "John",
    lastname: "Smith",
    email: "js@example.com",
    positions: ("Software Engineer",),
    credentials: "PhD",
  ),
  profile-picture: none,
)

= About Me
#lorem(20)
