#import "@local/modern-cv:0.11.0": *

#show: coverletter.with(
  author: (
    firstname: "John",
    lastname: "Smith",
    email: "js@example.com",
    homepage: "https://example.com",
    phone: "(+1) 111-111-1111",
    github: "ptsouchlos",
    linkedin: "John Smith",
    address: "111 Example St. Apt. 111, Example City, EX 11111",
    website: "https://www.github.com/ptsouchlos",
    positions: (
      "Software Engineer",
      "Full Stack Developer",
    ),
    signature: image("../../template/assets/signature.png", width: 150pt),
  ),
  profile-picture: image("../../template/assets/profile.png"),
  language: "en",
  show-footer: false,
  show-address-icon: true,
  description: "Cover letter of John",
  keywords: "Software",
)

#hiring-entity-info(
  entity-info: (
    target: "Company Recruitment Team",
    name: "Example, Inc.",
    street-address: "111 Example St.",
    city: "Example City, EX 11111",
  ),
)

#letter-heading(job-position: "Software Engineer", addressee: "Sir or Madame")

= About Me
#lorem(80)

= Why This Role?
#lorem(90)
