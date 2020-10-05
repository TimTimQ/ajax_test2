<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/6
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*"  language="java" %>
<%--
       request.getContextPath() 得到的是项目的虚拟路径：例如
       访问路径为：http://localhost:8080/blue/response.jsp
       request.getContextPath()得到的就是  /blue
  --%>
<%--
      例如：http://localhost:8080/
      request.getScheme() 返回当前链接使用的协议；一般应用返回http; SSL返回https;
      request.getServerName() 在页面中显示服务器端的名字 如：localhost
      request.getServerPort() 获取的是URL请求的端口 如：8080
 --%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
  <head>
    <title>Ajax——学习</title>
      <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
      <script type="text/javascript">
          $(function(){
              $.ajax({
                  url:"json.do",
                  type:"POST",
                  data:"",
                  dataType:"JSON",
                  success:function(data){
                      $("#id").text(data.id);
                      $("#name").text(data.name);
                      $("#pwd").text(data.pwd);
                  },
                  error:function(){
                      alert("系统繁忙");
                  }
              });
          });
      </script>
  </head>
  <body>
        <div id="id"></div>
        <div id="name"></div>
        <div id="pwd"></div>
  </body>
</html>
