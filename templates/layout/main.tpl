yieldUnescaped '<!DOCTYPE html>'
html(lang: 'en') {
    head {
        include template: 'header.tpl'
    }
    newLine()
    body(onload: 'prettyPrint();') {
        div(id: 'wrap') {
            include template: 'menu.tpl'
            div(class: 'container') {
                bodyContents()
            }
            div(id: 'push') { }
            newLine()
        }
        newLine()
        include template: 'footer.tpl'
        newLine()
        script(src: "${content.rootpath}js/jquery-1.11.1.min.js", '') newLine()
        script(src: "${content.rootpath}js/bootstrap.min.js", '') newLine()
        script(src: "${content.rootpath}js/prettify.js", '') newLine()
    }
}
