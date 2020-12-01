<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FiveTech</title>
</head>
<style>
    .container {
        background-color: black;
        color: red;
    }
</style>
<div class="container">
    <table class="table">
        <thead>
            <th>Cód. Produto</th>
            <th>Nome</th>
            <th>Cód. Venda</th>
            <th>Qtd. Vendida</th>
            <th>Sub Total</th>
        </thead>
        <h4>Detalhes da Venda</h4>
        <tbody>
            <c:forEach var="v" items="${listaDetalheVendas}">
                <tr>
                    <td>${v.cod_produto}</td>
                    <td>${v.nome}</td>
                    <td>${v.id_venda}</td>
                    <td>${v.qtd_vendida}</td>
                    <td>${v.subTotal}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="ListarVendas"><button type="button" class="btn btn-warning">Vendas</button></a>
</div>
<style>
    footer {
        width: 100%;
        display: flex;
        justify-content: center;
        text-align: center;
        background-color: black;
        padding: 2rem s;
        font-size: 1.5rem;
        color: red;
        padding-top: 10px;
    }

    footer p {
        font-size: 2rem;
        margin-bottom: 1.5rem;
        color: red;
        font-weight: 100;
    }
</style>
<footer>

    <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

</footer>