<%@ page import="java.util.*"%>
<html>

<body>

	<!-- Step 1: Create html form -->
	<%-- <form action="todo-demo.jsp">
		Add new item: <input type="text" name="theItem" /> <input
			type="submit" value="Submit" />
	</form>
	<br> Item entered:
	<%=request.getParameter("theItem")%>

	<!-- Step 2: Add new items "To do" list -->
	<%
		// get the To do items from the session
		List<String> items = (List<String>) session.getAttribute("myTodoList");
		// if the To do item doesn't exist create a new one
		if (items == null) {
			items = new ArrayList<String>();
			session.setAttribute("myTodoList", items);
			response.sendRedirect("todo-demo.jsp"); 
		}
		// see if there a form data to add 
		String theItem = request.getParameter("theItem");

		if ((theItem != null)&&(!theItem.trim().equals(""))) {
			items.add(theItem);
			
		}
	%>


	<!-- Step 3: Display all "To do " items from session -->
	<hr>
	<b> To do List of Items:</b>
	<br />
	<ol>
		<%
			for (String temp : items) {

				out.println("<li>" + temp + "</li>");

			}
		%>
	</ol>
</body>
</html> --%>