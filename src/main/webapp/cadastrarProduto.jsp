<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FiveTech</title>
</head>
<div class="container">
    <h1>Cadastro de Produto</h1>
    <form action="cadastrarProduto" method="POST">
        <p>Nome</p>
        <input name="nome_produto" class="form-control" required="true" /><br />

        <p>Descri��o</p>
        <input name="descricao" class="form-control" required="true" /><br />
        <p>Pre�o</p>
        <input name="preco" class="form-control" required="true" /><br />

        <p>Estoque</p>
        <input name="qtd_estoque" class="form-control" required="true" /><br />

        <p>Categoria</p>
        <select name="categoria" class="form-control" value="${produto.categoria}" /><br />
        <option value="Destilados">Destilados</option>
        <option value="Vinhos">Vinhos</option>
        <option value="Refrigerantes">Refrigerantes</option>
        <option value="Sucos">Sucos</option>
        </select>

        <br />
        <button type="submit" class="btn btn-primary">Enviar</button>

    </form>
</div>
<footer>

    <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

</footer>
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