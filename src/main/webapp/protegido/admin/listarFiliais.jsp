<%@include file="../../header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FiveTech</title>
    <script>
        function mostrarModalExclusao(codigo, nome) {
            $("#nome").html(nome);
            $("#codigo").val(codigo);
            $('#modalExclusao').modal('show');
        }
        function excluirProduto() {
            var codigo = $("#codigo").val();
            $.get("ExcluirFilial?codigo=" + codigo, function (resposta) {
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

<body>

    <center>
        <div class="card w-50">
            <h5 class="card-header">Lista de Filiais</h5>
            <div class="card-body">
                <div class="container">
                    <table class="table table-hover">
                        <thead>
                            <th>Código</th>
                            <th>Nome</th>
                            <th>Estado</th>
                            <th>Cidade</th>
                            <th>Ações</th>
                        </thead>
                        <tbody>
                            <c:forEach var="filial" items="${listaFiliais}">
                                <tr>
                                    <td>${filial.codigo}</td>
                                    <td>${filial.nome}</td>
                                    <td>${filial.estado}</td>
                                    <td>${filial.cidade}</td>
                                    <td>
                                        <a href="AlterarFilial?codigo=${filial.codigo}"><img
                                                src="imagens/icon_editar.png" alt="Editar"></a>
                                        <a><img onclick="mostrarModalExclusao(${filial.codigo}, '${filial.nome}')"
                                                src="imagens/icon_excluir.png" alt="Excluir"></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </center>

    <!-- Modal Excluir Filial -->
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
                    Confirmar exclusão da Filial ${filial.codigo}?
                    <input name="codigo" id="codigo" hidden="true" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" onclick="excluirProduto()">Confirmar</button>
                </div>
            </div>
        </div>
    </div>
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