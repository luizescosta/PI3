<%@include file="../../header.jsp" %>
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
            <h5 class="card-header">Cadastro de Filial</h5>
            <div class="card-body">
                <form action="<c:url value=" /CadastrarFilial" />" method="POST">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nome</label>
                    <div class="col-sm-10">
                        <input name="nome" class="form-control" required="true" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Estado</label>
                    <div class="col-sm-10">
                        <input name="estado" class="form-control" required="true" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Cidade</label>
                    <div class="col-sm-10">
                        <input name="cidade" class="form-control" required="true" />
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
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