<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Crud Cidades</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container-fluid">
       <div class="jumbotron mt-5">
            <h1>GERENCIAMENTO DE CIDADES</h1>
            <p>UM CRUD PARA CRIAR, ALTERAR, EXCLUIR E LISTAR CIDADES</p>
       </div>
        <form>
            <div class="form-group">
                <label for="nome">Cidade:</label>
                <input type="text" class="form-control" placeholder="Informe o nome da cidade" id="nome">
            </div>
            <div class="form-group">
                <label for="estado">Estado:</label>
                <input type="text" class="form-control" placeholder="Informe o estado ao qual a cidade pertence" id="estado">
            </div>
            <button type="submit" class="btn btn-primary">CRIAR</button>
        </form>
        <table class="table table-striped table-hover mt-5">
            <thead class="thead-dark">
                <tr>
                    <th>Nome</th>
                    <th>Estado</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
            <#list listaCidades as cidade>
                <tr>
                    <td>${cidade.nome}</td>
                    <td>${cidade.estado}</td>
                    <td class="d-flex d-justify-content-center">
                        <a class="btn btn-warning mr-3">ALTERAR</a>
                        <a class="btn btn-danger mr-3">EXCLUIR</a>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</body>
</html>