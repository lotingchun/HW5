<%@page contentType="text/html;charset=utf-8"%>
<html>
<head><title>appear</title></head>
<body>
姓名=
<% request.setCharacterEncoding("UTF-8");
String name=request.getParameter("username");
   out.println(name);
%>
<br>
性別=
<% String sex=request.getParameter("sex");
out.println(sex);%>
<br>
興趣=
<%
String[] h= request.getParameterValues("hobby");
 if (h != null) {
   for(int i=0;i<h.length;i++){
  out.println("<br>");
 out.println(h[i]);
}
} else
             out.println("沒選擇!");
%>
<br>
自傳=
<% request.setCharacterEncoding("utf-8");
 String note=request.getParameter("note");
out.println(note);
%>
<br>
喜歡的電影=
<%
String[] movie= request.getParameterValues("movie");
if (movie != null) {
for(int i=0;i<movie.length;i++){
  out.println("<br>");
 out.println(movie[i]);
}
} else
             out.println("都沒興趣!");
%>
<br>
水果=
<%
String fruit= request.getParameter("fruit");
out.println(fruit);
%>
</body>
</html>
