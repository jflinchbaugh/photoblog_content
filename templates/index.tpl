layout(
    'layout/main.tpl',
    true,
    pageTitle: 'Blog',
    alltags: alltags,
    bodyContents: contents {
        published_posts.take(20).each { post ->
            a(href: post.uri) {
                h1(post.title)
            }
            p(
                new java.text.SimpleDateFormat(
                    'dd MMMM yyyy',
                    Locale.ENGLISH
                ).format(post.date)
            )
            p(post.body)
            hr(class: 'clear-fix', '')
        }
        p {
            yield 'Older posts are available in the '
            a(
                href: "${content.rootpath}${config.archive_file}",
                'archive'
            )
            yield '.'
        }
    }
)
