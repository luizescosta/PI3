<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FiveTech</title>
</head>

<body>
    <h1>Alteração de Cadastro: ${cliente.cpf_cliente}</h1>
    <form action="AlterarCliente" method="POST">
        <p>Nome</p>
        <input name="nome" value="${cliente.nome}" /><br />

        <p>Sexo</p>
        <input name="sexo" value="${cliente.sexo}" /><br />

        <p>CPF</p>
        <input name="cpf_cliente" value="${cliente.cpf_cliente}" readonly="true" /><br />

        <p>Telefone</p>
        <input name="telefone" value="${cliente.telefone}" /><br />

        <p>Data de Nascimento</p>
        <input name="data_nasc" value="${cliente.data_nasc}" /><br />

        <p>Endereço</p>
        <input name="endereco" value="${cliente.endereco}" /><br />


        <button type="submit">Enviar</button>

    </form>
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

</html>