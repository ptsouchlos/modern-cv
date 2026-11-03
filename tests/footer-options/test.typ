#import "@local/modern-cv:0.11.0": *

// Assert on page settings directly: a blank footer must keep its reserved
// margin, while show-footer: false must suppress any footer and its margin.
#let author = (firstname: "John", lastname: "Smith", positions: ())
#let custom-footer = [Custom footer]
#let hidden-footer = [#context panic("a hidden footer must not be evaluated")]

#for render in (resume, coverletter) {
  for (options, expected-footer, expected-margin) in (
    ((:), none, 20mm),
    ((footer: none), none, 20mm),
    ((footer: custom-footer), custom-footer, 20mm),
    ((footer: []), [], 20mm),
    ((show-footer: false), [], 10mm),
    ((show-footer: false, footer: hidden-footer), [], 10mm),
  ) {
    render(
      author: author,
      profile-picture: none,
      date: "August 28, 2026",
      ..options,
    )[
      Footer options
      #context {
        assert.eq(page.margin.bottom, expected-margin)
        if expected-footer == none {
          assert.ne(page.footer, [])
        } else {
          assert.eq(page.footer, expected-footer)
        }
      }
    ]
  }
}
