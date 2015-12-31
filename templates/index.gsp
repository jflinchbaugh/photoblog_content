<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
		<!-- <h1>John Flinchbaugh</h1> -->
	</div>
	<%published_posts[0..19].each {post ->%>
		<a href="${post.uri}"><h1>${post.title}</h1></a>
		<p>${post.date.format("dd MMMM yyyy")}</p>
		<p>${post.body}</p>
        <hr style = "clear: both"/>
  	<%}%>

	<p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

<%include "footer.gsp"%>