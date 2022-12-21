<%@page import="java.util.*" %>
<%@ page contentType="text/html"  import= "java.sql.*, model.Lenguage, model.BDConexao, model.AcessoBD" %>
<jsp:include page="bootstrap.html" />

<body>
    <%
        List<Lenguage> listaLenguage = new ArrayList<Lenguage>();
        AcessoBD acessoBD = new AcessoBD();
        listaLenguage = acessoBD.obterLeguages();
    %>

    <p><a class="btn btn-primary" href="addLenguage.jsp">Adicionar Linguagem</a></p>
    <table class="table  table-striped">

    <tr>
        <th>Nome</th>
        <th>Ano</th>
        <th>Editar</th>
        <th>Excluir</th>
        <th>Detalhes</th>
    </tr>
    </tr>
    <%
        for (Lenguage len : listaLenguage) {
    %>
    <tr>
        <td><%=len.getName()%></td>
        <td><%=len.getYears()%></td>
        <td><a class="btn btn-primary" href="editLenguage.jsp?id=<%=len.getId()%>">Editar</a></td>
        <td><a class="btn btn-danger" href="deleteLenguage.jsp?id=<%=len.getId()%>">Excluir</a></td>
        <td><a class="btn btn-info" href="detalhesLenguage.jsp?id=<%=len.getId()%>">Detalhes</a></td>
    </tr>
    <%
        }
    %>
    </tr>
    </table>
</body>
