layout(
    'layout/main.tpl',
    true,
    pageTitle: content.title,
    alltags: alltags,
    bodyContents: contents {
        div(class: 'page-header') {
            h1(content.title)
        }
        p {
            em(content.date.format('dd MMMM yyyy'))
        }
        p {
            yieldUnescaped content.body
        }
        hr(style: 'clear: both', '')
        p {
            em(content.date.format('dd MMMM yyyy'))
        }
    }
)
