<%-- 
    Document   : lista
    Created on : 22/08/2016, 00:07:26
    Author     : Hallessandro
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Paises</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            #tabela{
                position: absolute;
                right: 32%;
            }
        </style>
    </head>
    <body>
        <% JSONArray paises = (JSONArray) request.getAttribute("paises");
        %>
        <div class="container">
            <div class="row">
               <center><h3>Lista de Paises participantes da Copa do Mundo de Futebol Feminino</h3></center>
               <center><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Enviar por Email</button></center>
               <br>
               <div class="col-md-4" id="tabela">                 
                    <table class="table table-bordered table-hover table-condensed">
                        <thead>
                            <tr>
                                <th><center>Nome</center></th>
                                <th><center>Sigla</center></th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i = 0; i < paises.length(); i++) { %>
                            <tr>
                                <td><center><%= paises.getJSONObject(i).getString("country") %></center></td>
                                <td><center><%= paises.getJSONObject(i).getString("fifa_code")%></center></td>
                            </tr>
                           <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
     
    <!-- Modal -->
      <div class="modal fade" id="myModal" role="dialog">
         <div class="modal-dialog">

           <!-- Modal content-->
           <div class="modal-content">
            <form method="post" action="#">
             <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <center><h4 class="modal-title">Enviar dados por Email</h4></center>
             </div>
             <div class="modal-body">
                     <p><label for="destinatario">Remetente:</label>
                         <input type="email" name="remetente" class="form-control"></p>
                     <p><label for="destinatario">Destinatario:</label>
                         <input type="email" name="destinatario" class="form-control"></p>
             </div>
             <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
               <button type="submit" class="btn btn-success" data-dismiss="modal">Enviar</button>
             </div>
            </form>    
           </div>

         </div>
       </div>
      </div>                
    </body>
</html>
