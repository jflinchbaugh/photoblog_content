xmlDeclaration()
rss(version: '2.0', 'xmlns:atom': 'http://www.w3.org/2005/Atom') {
    channel {
        title(config.blog_title)
        newLine()
        link(config.site_host)
        newLine()
        'atom:link'(
            href: "${config.site_host}${config.feed_file}",
            rel: 'self',
            type: 'application/rss+xml'
        )
        newLine()
        description('Technology, Code, Photography, etc')
        newLine()
        language('en-us')
        newLine()
        pubDate(published_date.format('EEE, d MMM yyyy HH:mm:ss Z'))
        newLine()
        lastBuildDate(published_date.format('EEE, d MMM yyyy HH:mm:ss Z'))
        newLine()
        published_posts.each { post ->
            item {
                title {
                    yield post.title
                }
                newLine()
                link {
                    yield "${config.site_host}${post.uri}"
                }
                newLine()
                pubDate(post.date.format('EEE, d MMM yyyy HH:mm:ss Z'))
                newLine()
                guid(isPermaLink: 'false') {
                    yield "${config.site_host}${post.uri}"
                }
                newLine()
                description {
                    yield post.body
                }
                newLine()
            }
            newLine()
        }
    }
}
