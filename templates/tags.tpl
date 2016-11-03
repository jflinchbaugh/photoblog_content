layout(
    'layout/main.tpl',
    true,
    alltags: alltags,
    bodyContents: contents {
        div(class: 'page-header') {
            h1("Tag: ${tag}")
        }
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
