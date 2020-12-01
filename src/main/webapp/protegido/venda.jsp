<%@include file="../header.jsp" %>
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
            <h5 class="card-header">Pesquisar Cliente</h5>
            <div class="card-body">
                <form action="VendaServlet" method="GET">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">CPF</label>
                        <div class="col-sm-10">
                            <input name="cpf" placeholder="Pesquisar CPF" class="form-control cpf-mask" />
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Pesquisar</button>
                </form>
                <br>
                <form action="VendaServlet" method="POST">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">CPF</label>
                        <div class="col-sm-10">
                            <input name="cpf" class="form-control" value="${cliente.cpf_cliente}" readonly="true" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Nome</label>
                        <div class="col-sm-10">
                            <input name="nome" class="form-control" value="${cliente.nome}" readonly="true" />
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Próximo</button>
                </form>
            </div>
        </div>
    </center>

    <footer>

        <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

    </footer>

    <script type="text/javascript" src="//code.jquery.com/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="//assets.locaweb.com.br/locastyle/2.0.6/javascripts/locastyle.js"></script>
    <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
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