div(id: 'footer') {
    div(class: 'container') {
        p(class: 'muted credit') {
            yieldUnescaped """
                &copy; John Flinchbaugh
                2003&ndash;${new Date().format('yyyy')}
            """
            yieldUnescaped " | Baked on ${new Date().format('yyyy-MM-dd')} with "
            a(href: 'http://jbake.org/', "JBake ${version}")
            yieldUnescaped ' &amp; '
            a(href: 'http://getbootstrap.com/', 'Bootstrap v3.1.1')
            yieldUnescaped ' | Licensed '
            a(
                href: 'https://creativecommons.org/licenses/by-sa/2.0/?',
                'CC BY-SA 2.0'
            )
            yieldUnescaped ' | Fork this at '
            a(
                href: 'https://github.com/jflinchbaugh/photoblog_content',
                'GitHub'
            )
        }
    }
}
