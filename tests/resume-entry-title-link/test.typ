#import "@local/modern-cv:0.11.0": *

// resume-entry()'s `title-link` wraps the title in a `link()` rather than
// rendering it as plain text. A visual snapshot can't distinguish the two
// (the template applies no link styling), so assert on the document
// structure directly instead: exactly one link is created, pointing at
// `title-link`.
#resume-entry(
  title: "Example University",
  title-link: "https://example.com",
  location: "Example City",
)

// A plain title (no title-link) creates no link at all.
#resume-entry(
  title: "Plain Title, No Link",
  location: "Example City",
)

#context {
  let links = query(link)
  assert.eq(links.len(), 1, message: "expected exactly one link on the page")
  assert.eq(links.first().dest, "https://example.com")
}
