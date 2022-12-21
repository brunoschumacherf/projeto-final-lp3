<%@ page language="java" contentType ="text/html;" import="java.sql.*"%>
<%@ page import="model.Lenguage, model.AcessoBD"  %>

<jsp:include page="bootstrap.html" />
    <%
        Lenguage lenguage = new Lenguage(); 
        AcessoBD bd = new AcessoBD();
        int id = Integer.parseInt(request.getParameter("id"));
        lenguage = bd.obterLenguage(id);
    %>
<div class="container-fluid">
      <h3 class="display-3">Detalhes da linguagem <%= lenguage.getName()  %> (<%= lenguage.getYears()  %>)</h3>
    <img src="<%=lenguage.getUrlCreador()%>" alt="..." class="img-thumbnail">
    <p><%=lenguage.getCreador()%></p>
    <img src="<%= lenguage.getImage() %>" class="rounded mx-auto d-block" alt="...">

    <h4> Descrição</h4>
    <p> <%= lenguage.getDescription() %> </p>
    <a href="<%= lenguage.getDocumentation() %>" class="btn btn-primary btn-lg btn-block" role="button" aria-pressed="true">Acesse a documentação</a>

</div>

