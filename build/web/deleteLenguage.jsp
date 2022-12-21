<%-- 
    Document   : editaAluno
    Created on : 17/06/2022, 18:33:28
    Author     : SergioFred
--%>

<%@ page language="java" contentType="text/html" import="java.sql.*" %>
<%@ page import="model.Lenguage, model.AcessoBD"  %> 
 <jsp:include page="bootstrap.html" />
    <body>
        <%
            Lenguage lenguage = new Lenguage(); 
            AcessoBD bd = new AcessoBD();
            int id = Integer.parseInt( request.getParameter("id") );
            lenguage = bd.obterLenguage(id);
        %>    

       <div class="container">
       <h3>edição de linguagem</h3>        
       <form  action="excluiLenguage.jsp" method="post">
        <table class="table  table-striped">        
              <tr>
                <td>id da linguagem:</td>
                    <td><input class="form-control" type="text" name="id"
                               value="<%= lenguage.getId() %>" readonly="readonly" />
                    </td>
                </tr>

                <tr>
                    <td>Nome:</td>
                    <td><input class="form-control" type="text" name="name"
                               value="<%= lenguage.getName() %>" />
                    </td>
                </tr>
                <tr>
                    <td>Ano:</td>
                    <td><input class="form-control" type="text" name="years"
                               value="<%= lenguage.getYears() %>" />
                    </td>
                </tr>
                <tr>
                    <td>Descrição:</td>
                    <td><input class="form-control" type="text" name="description"
                               value="<%= lenguage.getDescription() %>" />
                    </td>
                </tr>
                <tr>
                    <td>URL da documentação:</td>
                    <td>
                        <input class="form-control" type="text" name="documentation"
                               value="<%= lenguage.getDocumentation() %>"
                               />
                    </td>
                </tr>
                <tr>
                    <td>URL Da imagem:</td>
                    <td>
                        <input class="form-control" type="text" name="image"
                               value="<%= lenguage.getImage() %>"
                               />
                    </td>
                </tr>
                <tr>
                        <td>Nome do criador</td>
                    <td>
                        <input class="form-control" type="text" name="creator"
                               value="<%= lenguage.getCreador() %>"
                               />
                    </td>
                </tr>

                <tr>
                    <td>URL Da imagem do Criador</td>
                    <td>
                        <input class="form-control" type="text" name="urlCreator"
                               value="<%= lenguage.getUrlCreador() %>"
                               />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input class="btn btn-primary" type="submit" name="btAtualizar" value="Excluir Linguagem" />
                        <a class="btn btn-link" href="index.jsp">Voltar </a>
                    </td>
                </tr>
                </tr>
            </table>
        </form>
        </div>            
    </body>
</html>