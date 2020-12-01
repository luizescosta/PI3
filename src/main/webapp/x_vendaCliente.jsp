<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FiveTech</title>
</head>

<body>
    <center>
        <div class="card w-50">
            <h5 class="card-header">Cliente</h5>
            <div class="card-body">
                <form action="VendaServlet" method="GET" class="form-inline">
                    <input type="search" name="cpf" placeholder="Pesquisar CPF" value="${cliente.cpf_cliente}"
                        class="form-control" />
                    <button type="submit" class="btn btn-primary">&#128269;</button><br />
                </form>
                <p class="card-text"><b>CPF:</b> ${cliente.cpf_cliente}</p>
                <p class="card-text"><b>Nome:</b> ${cliente.nome}</p>
                <form action="VendaServlet" method="POST" class="form-inline">
                    <input type="hidden" name="cpf" value="${cliente.cpf_cliente}" />
                    <button type="submit" class="btn btn-primary">Próximo</button>
                </form>
            </div>
        </div>
    </center>
                    <footer>

    <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

</footer>
</body>
<style>
    footer {
        width: 100%;
        display: flex;
        justify-content: center;
        text-align: center;
        background-color: black;
        padding: 2rem s;
        font-size: 1.5rem;
        color:red;
        padding-top: 10px;
    }

    footer p {
        font-size: 2rem;
        margin-bottom: 1.5rem;
        color: red;
        font-weight: 100;
    }
</style>


</html>