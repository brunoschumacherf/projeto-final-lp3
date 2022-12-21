<%@ page language="java" contentType ="text/html;" import="java.sql.*"%>
<%@ page import="model.Lenguage, model.AcessoBD"  %> 

<%
    AcessoBD bd = new AcessoBD();
    Lenguage lenguage = new Lenguage();
    int years = Integer.parseInt(request.getParameter("years"));
    lenguage.setName(request.getParameter("name"));
    lenguage.setYears(years);
    lenguage.setImage(request.getParameter("image"));
    lenguage.setDocumentation(request.getParameter("documentation"));
    lenguage.setDescription(request.getParameter("description"));
    lenguage.setCreator(request.getParameter("creator"));
    lenguage.setUrlCreator(request.getParameter("urlCreator"));
    bd.insertLenguage(lenguage);
%> 

<script>
    window.location.href = "index.jsp";
</script>

