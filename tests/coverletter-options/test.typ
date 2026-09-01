#import "@local/modern-cv:0.11.0": *

// exercise non-default coverletter() options: explicit `signature`/`closing`
// content, bypassing default-signature()/default-closing() entirely. Every
// other coverletter test relies on those defaults (by passing `none`, the
// default value for both params).
#show: coverletter.with(
  author: (
    firstname: "John",
    lastname: "Smith",
    email: "js@example.com",
    positions: ("Software Engineer",),
  ),
  profile-picture: none,
  signature: [Custom signature block],
  closing: [Custom closing block],
)

= About Me
#lorem(20)
