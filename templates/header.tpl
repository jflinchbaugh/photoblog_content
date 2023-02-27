meta(charset: 'utf-8') newLine()
title([config.blog_title, pageTitle].findAll().join(': ') ?: 'JBake')
newLine()
meta(name: 'viewport', content: 'width=device-width, initial-scale=1.0')
meta(name: 'description', content: '')
meta(name: 'author', content: '')
meta(name: 'keywords', content: '')
meta(name: 'generator', content: 'JBake')
link(rel: 'stylesheet', href: "${content.rootpath}css/bootstrap.min.css")
link(rel: 'stylesheet', href: "${content.rootpath}css/asciidoctor.css")
link(rel: 'stylesheet', href: "${content.rootpath}css/base.css")
link(rel: 'stylesheet', href: "${content.rootpath}css/prettify.css")
link(
  rel: 'alternate',
  type: 'application/atom+xml',
  title: "${config.blog_title}: Atom Feed",
  href: "${content.rootpath}feed.xml",
)
yieldUnescaped '<!--[if lt IE 9]>'
script(src: "${content.rootpath}js/html5shiv.min.js")
yieldUnescaped '<![endif]-->'
link(
    rel: 'shortcut icon',
    href: "${content.rootpath}moon.png"
)
