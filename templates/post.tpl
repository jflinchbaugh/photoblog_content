layout(
    'layout/main.tpl',
    true,
    pageTitle: content.title,
    alltags: alltags,
    bodyContents: contents {
        h1(content.title)
        p {
            em(content.date.format('dd MMMM yyyy'))
        }
        p {
            yieldUnescaped content.body
        }
        hr(style: 'clear: both', '')
        p {
            yield 'Filed Under: '
            em {
                content.tags.each { t ->
                    a(
                        href: "${content.rootpath}tags/${t.replace(' ', '-')}.html",
                        t
                    )
                    yield ' '
                }
            }
        }
    }
)
