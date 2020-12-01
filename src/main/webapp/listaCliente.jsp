<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lista de Clientes</title>
    <script lang="text/javascript">

        function mostrarModalExclusao(cpf_cliente, nome) {
            $("#nome").html(nome);
            $("#cpf_cliente").val(cpf_cliente);
            $('#modalExclusao').modal('show');
        }

        function excluirCliente() {
            var cpf_cliente = $("#cpf_cliente").val();
            $.get("ExcluirCliente?cpf_cliente=" + cpf_cliente, function (resposta) {
                $('#modalExclusao').modal('hide')
                if (resposta === "true") {
                    console.log("Realizado!");
                } else {
                    console.log("Algo deu errado.");
                }
                window.location.reload();
            });
        }
    </script>
</head>

<style>
    .container {
        background-color: black;
        color: red;

    }

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

<div class="container">
    <h1>Lista de Clientes</h1>
    <table class="table">
        <thead>
            <th>Nome</th>

            <th>CPF</th>

            <th>Data de Nascimento</th>

            <th>Sexo</th>

            <th>Telefone</th>

            <th>Endereço</th>

        </thead>
        <tbody>
            <c:forEach var="cliente" items="${listaClientes}">
                <tr>
                    <td>${cliente.nome}</td>

                    <td>${cliente.cpf_cliente}</td>

                    <td>${cliente.data_nasc}</td>

                    <td>${cliente.sexo}</td>

                    <td>${cliente.telefone}</td>

                    <td>${cliente.endereco}</td>

                    <td><a href="AlterarCliente?cpf_cliente=${cliente.cpf_cliente}">Alterar</a></td>
                    <td><button type="button" class="btn btn-primary"
                            onclick="mostrarModalExclusao(${cliente.cpf_cliente}, '${cliente.nome}')">Excluir</button>
                    </td>
                </tr>
            </c:forEach>

        </tbody>

    </table>
    <div class="modal fade" id="modalExclusao" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Confirmar Exclusão</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Prosseguir com exclusão do Cliente <label id="nome"></label> ?
                    <input id="cpf_cliente" hidden="true" />

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" onclick="excluirCliente()">Confirmar</button>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>

    <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

</footer>