<%@ page language="java" contentType ="text/html;" import="java.sql.*"%>
<%@ page import="model.Lenguage, model.AcessoBD"  %> 

<%
    AcessoBD bd = new AcessoBD();
    bd.excluirLenguage(Integer.parseInt(request.getParameter("id")));
%>

<script>
    window.location.href = "/crud_lenguages";
</script>