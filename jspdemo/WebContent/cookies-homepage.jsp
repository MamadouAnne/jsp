<%@ page import="java.net.URLDecoder" %>
<html>

<body>

	<h3>Training Portal</h3>
	 
	 <!-- read the favorite programming language cookie -->
	 
	 <%
	 	// the default if there no cookies
	 	
	 	String favLang = "Java";
	 
	 	// get cookies from the browser request
	 	
	 	Cookie[] theCookies = request.getCookies();
	 
	 	// find our favorite language cookie
	 	
	 	for (Cookie tempCookie : theCookies){
	 		
	 		if ("myApp.favoriteLanguage".equals(tempCookie.getName())){
	 			favLang = tempCookie.getValue();
	 	// decode cookie data ... handle case of languages with spaces in them
	 	
                favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
	 		
	 			break;
	 		}
	 	}
	 
	 %>
		<!-- now show personalize page ..... use the "favoriteLanguage" variable -->
		<!-- show new books for this language -->
		<h4>New Books for <%= favLang %></h4>
		<ul>
			<li>Blah blah blah</li>
			<li>Blah blah blah</li>
		</ul>
		<h4>Latest News report for <%= favLang %></h4>
		<ul>
			<li>Blah blah blah</li>
			<li>Blah blah blah</li>
		</ul>
		
		<h4> Hot jobs for <%= favLang %></h4>
		<ul>
			<li>Blah blah blah</li>
			<li>Blah blah blah</li>
		</ul>
		<hr>	
			<a href="cookies-personalize-form.html">Personalize this page</a>
		
</body>
</html>