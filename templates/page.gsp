<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
		<h1>${content.title}</h1>
	</div>

	<p>${content.body}</p>

	<hr style = "clear: both" />
	<p><em>${content.date.format("dd MMMM yyyy")}</em></p>

<%include "footer.gsp"%>