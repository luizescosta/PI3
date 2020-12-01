<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lista de Produtos</title>
    <script lang="text/javascript">

        function mostrarModalExclusao(cod_produto, nome_produto) {
            $("#nome_produto").html(nome_produto);
            $("#cod_produto").val(cod_produto);
            $('#modalExclusao').modal('show');
        }

        function excluirProduto() {
            var cod_produto = $("#cod_produto").val();
            $.get("ExcluirProduto?cod_produto=" + cod_produto, function (resposta) {
                $('#modalExclusao').modal('hide')
                if (resposta === "true") {
                    console.log("Funfou!");
                } else {
                    console.log("Ops!");
                }
                window.location.reload();
            });
        }
    </script>
</head>
<div class="container">
    <h1>Lista de Produtos</h1>
    <table class="table">
        <thead>
            <th>Nome</th>

            <th>Descricao</th>

            <th>Codigo</th>

            <th>preco</th>

            <th>Quantidade</th>

            <th>Categoria</th>
        </thead>
        <tbody>
            <c:forEach var="produto" items="${listaProdutos}">
                <tr>
                    <td>${produto.nome_produto}</td>

                    <td>${produto.descricao}</td>

                    <td>${produto.cod_produto}</td>

                    <td>${produto.preco}</td>

                    <td>${produto.qtd_estoque}</td>

                    <td>${produto.categoria}</td>
                    <td><a href="AlterarProduto?cod_produto=${produto.cod_produto}">Alterar</a></td>
                    <td><button type="button" class="btn btn-primary"
                            onclick="mostrarModalExclusao(${produto.cod_produto}, '${produto.nome_produto}')">Excluir</button>
                    </td>
                </tr>
            </c:forEach>

        </tbody>

    </table>
</div>

<div class="modal fade" id="modalExclusao" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirmar Exclus√£o</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Prosseguir com a exclus„o do Produto <label id="cod_produto"></label> ?
                <input id="cod_produto" hidden="true" />

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary" onclick="excluirProduto()">Confirmar</button>
            </div>
        </div>
    </div>
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