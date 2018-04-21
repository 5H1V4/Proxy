<%@page import="java.io.BufferedReader,java.io.InputStreamReader,java.net.HttpURLConnection,java.net.URL" %>
	   
<%
     String url = request.getParameter("url");
     URL obj = new URL(url);
     HttpURLConnection con = (HttpURLConnection) obj.openConnection();
     BufferedReader in = new BufferedReader(
             new InputStreamReader(con.getInputStream()));
     String inputLine;
     StringBuffer resp = new StringBuffer();
     while ((inputLine = in.readLine()) != null) {
     	resp.append(inputLine);
     }
     in.close();
     out.println(resp.toString());
%>
