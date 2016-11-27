div(id: 'footer') {
    div(class: 'container') {
        p(class: 'muted credit') {
            yieldUnescaped """
                &copy; John Flinchbaugh
                2003&ndash;${new Date().format('yyyy')}
                | Mixed with
            """
            a(href: 'http://getbootstrap.com/', 'Bootstrap v3.1.1')
            yieldUnescaped ' | Baked with '
            a(href: 'http://jbake.org/', "JBake ${version}")
            yieldUnescaped ' | Licensed '
            a(
                href: 'https://creativecommons.org/licenses/by-sa/2.0/?',
                'CC BY-SA 2.0'
            )
            yieldUnescaped ' | Fork this site at '
            a(
                href: 'https://github.com/jflinchbaugh/techblog_content',
                'GitHub'
            )
        }
    }
}
