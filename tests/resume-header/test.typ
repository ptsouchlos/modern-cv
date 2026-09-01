#import "@local/modern-cv:0.11.0": *

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
  profile-picture: image("../../template/assets/profile.png"),
  // change this accordingly
  profile-picture-diameter: 3cm,
  // accent-color also accepts a hex string, converted to a color internally
  // (`if type(accent-color) == str { accent-color = rgb(accent-color) }`).
  accent-color: "#e91e63",
)

= Education
#lorem(200)
