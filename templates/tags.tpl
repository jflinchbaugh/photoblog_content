layout(
    'layout/main.tpl',
    true,
    pageTitle: tag,
    alltags: alltags,
    bodyContents: contents {
        div(class: 'page-header') {
            h1("Posts about ${tag}")
            a(href: '#all', 'All the posts...')
        }
        tag_posts.take(4).each { post ->
            a(href: post.uri) {
                h2(post.title)
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
        a(name: 'all', '')
        h2('All the Posts')
        tag_posts.collect().groupBy {
            it.date.format('MMMM yyyy')
        }.each { month, posts ->
            h4(month)
            ul {
                posts.each { post ->
                    li {
                        yield "${post.date.format('dd')} - "
                        a(
                            href: "${content.rootpath}${post.uri}",
                            post.title
                        )
                    }
                }
            }
        }
    }
)

