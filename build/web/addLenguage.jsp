<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="bootstrap.html" />

<body>
<form method="POST" action='inserirlenguage.jsp'>
<input type="hidden" name="action" value="insert" />
<p><b>Adiciona uma nova linguagem</b></p>
<table class="table  table-striped">
<tr>
<td>Nome</td>
<td><input class="form-control" type="text" name="name" /></td>
</tr>
<tr>
<td>Ano da linguagem</td>
<td><input class="form-control" type="text" name="years" /></td>
</tr>
<tr>
<td>Descrição</td>
<td><input class="form-control" type="text" name="description" /></td>
</tr>
<tr>
<td>url da documentação</td>
<td><input class="form-control" type="text" name="documentation" /></td>
</tr>
<tr>
<td>url da image</td>
<td><input class="form-control" type="text" name="image" /></td>
</tr>
<tr>
<td>Criador</td>
<td><input class="form-control" type="text" name="creator" /></td>
</tr>
<tr>
<td>url da imagem do criador</td>
<td><input class="form-control" type="text" name="urlCreator" /></td>
</tr>
<tr>
    <td colspan="2">
        <input class="btn btn-primary" type="submit" name="btAtualizar" value="Incluir" />
        <a class="btn btn-link" href="index.jsp">Voltar </a>
    </td>
</tr>
</table>
</form>
</body>
</html>