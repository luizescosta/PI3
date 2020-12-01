<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FiveTech</title>
    <script>
        function verSenha() {
            var x = document.getElementById("senha");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</head>

<body>


    <div class="card text-center" style="width: 20rem;">
        <h5 class="card-header">Login - FiveTech</h5>
        <div class="card-body">
            <form action="LoginServlet" method="POST">
                <p class="card-text"><input class="form-control" name="usuario" placeholder="Usuário" required></p>
                <p class="card-text"><input type="password" name="senha" id="senha" class="form-control"
                        placeholder="Senha" required></p>
                <p class="card-text"><input type="checkbox" onclick="verSenha()"> Ver Senha</p>
                <button type="submit" class="btn btn-primary">Entrar</button>
            </form>
        </div>
        <c:if test="${not empty param.erro}">
            <div class="alert alert-danger" role="alert">
                Usuário ou Senha Inválido(s)!
            </div>
        </c:if>
    </div>

    <footer>

        <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>

<style>
    body {
        margin: 0;
        padding: 0;
        background-color: black;
        color: red;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
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