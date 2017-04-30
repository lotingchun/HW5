<%@page contentType="text/html;charset=utf-8"%>
<html>
<head><title>appear</title></head>
<body>
姓名=<br>
<% request.setCharacterEncoding("UTF-8");
String name=request.getParameter("username");
   out.println(name);
%>
<br>
性別=<br>
<% String sex=request.getParameter("sex");
out.println(sex);%>
<br>
興趣=
<%
String[] h= request.getParameterValues("hobby");
for(int i=0;i<h.length;i++){
  out.println("<br>");
 out.println(h[i]);
}
%>
<br>
自傳=<br>
<% request.setCharacterEncoding("utf-8");
 String note=request.getParameter("note");
out.println(note);
%>
<br>
喜歡的電影=
<%
String[] movie= request.getParameterValues("movie");
for(int i=0;i<movie.length;i++){
  out.println("<br>");
 out.println(movie[i]);
}
%>
<br>
水果=<br>
<%
String fruit= request.getParameter("fruit");
out.println(fruit);
%>
</body>
</html>
