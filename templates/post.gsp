<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
		<h1>${content.title}</h1>
	</div>

	<p><em>${content.date.format("dd MMMM yyyy")}</em></p>

	<p>${content.body}</p>

	<hr style = "clear: both"/>
    <p>Filed Under: <em>
        <% content.tags.each { t -> %>
            <a href = "${content.rootpath}tags/${t}.html">${t}</a>
        <% } %>
    </em></p>

<%include "footer.gsp"%>