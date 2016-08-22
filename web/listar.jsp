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
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
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
        </div>
    </body>
</html>
