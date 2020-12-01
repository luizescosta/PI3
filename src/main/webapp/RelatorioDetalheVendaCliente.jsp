<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FiveTech</title>
</head>
<c:if test="${!sessionScope.user.isGerenteG()}">
    <script>window.location.href = "acessoNaoAutorizado.jsp"</script>
</c:if>
<style>
    .container {
        background-color: black;
        color: red;
    }
</style>
<div class="container">
    <h3>Vendas no CPF: ${cpf_cliente}</h3>
    <table id="table" class="table">
        <thead>
            <th>Cód. Venda</th>
            <th>Cliente Cpf </th>
            <th>Funcionário Cpf</th>
            <th>Data</th>
            <th>Valor Total</th>
            <th>Detalhe Venda</th>
        </thead>
        <tbody>
            <c:forEach var="v" items="${listaVendas}">
                <tr>
                    <td>${v.id_venda}</td>
                    <td>${v.cpf_cliente}</td>
                    <td>${v.cpf_func}</td>
                    <td>${v.data_venda}</td>
                    <td>${v.total_venda}</td>
                    <td><a href="DetalharVenda?id_venda=${v.id_venda}"><button type="button"
                                class="btn btn-danger">Detalhes</button></a></td>
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