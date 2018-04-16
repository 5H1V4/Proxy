<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<% 
	String urlstr= request.getParameter("url"); 
%>

<c:import url="<%=urlstr%>"/>