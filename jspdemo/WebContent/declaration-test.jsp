<html>

<body>

<%! 
String makeItLower(String data){
	
	return data.toLowerCase();
}
%>
 <!-- call the method in JSP expression -->
Lower case "HELLO WORLD ": <%= makeItLower("HELLO WORD") %>

<br><br>

<%!
	int scareSurface(int number){
	
	return number*number;
}
%>
Surface of the scare is: <%= scareSurface(5)%>
</body>

</html>