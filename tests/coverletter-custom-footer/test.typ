#import "@local/modern-cv:0.11.0": *

// Cover letters expose the same custom-footer API as resumes.
#show: coverletter.with(
  author: (firstname: "John", lastname: "Smith", positions: ()),
  profile-picture: none,
  date: "August 28, 2026",
  signature: [],
  closing: [],
  footer: [
    #set text(size: 9pt, fill: blue)
    #align(center)[
      #link("https://example.com")[Portfolio] · Page #context {
        let number = counter(page).get().first()
        [#metadata(number) <custom-footer>]
        counter(page).display()
      }
    ]
  ],
)

= First page
The custom footer appears on each page.

#pagebreak()

= Second page
The footer's counter reflects the current page.

#context {
  let footers = query(<custom-footer>)
  assert.eq(footers.map(it => it.value), (1, 2))
  assert.eq(footers.map(it => it.location().page()), (1, 2))
  assert.eq(query(link).map(it => it.dest), ("https://example.com",) * 2)
}
