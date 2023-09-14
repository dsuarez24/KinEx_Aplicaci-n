<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Arial', sans-serif;
            background-image: url('img/background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .container {
            margin-top: 20px;
        }
        .formulario {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .table thead th {
            background-color: #007bff;
            color: #fff;
        }
        .table tbody tr:nth-child(odd) {
            background-color: #f8f9fa;
        }
        .table-hover tbody tr:hover {
            background-color: #e2e6ea;
        }
        h3 {
            color: #333;
        }
        .cancelado {
            color: red;
        }
        .cancelado span {
            color: black;
        }
        .mt-3 {
            margin-top: 30px;
        }
    </style>
    <title>Carrito de Envíos</title>
</head>
<body>
    <div class="container">
        <h3 class="text-center">Carrito de Envíos</h3>
        <div class="formulario">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>CODIGO</th>
                    <th>CODIGO-PRODUCTO</th>
                    <th>NOMBRE</th>
                    <th>PRECIO</th>
                    <th>STOCK</th>
                    <th>CANTIDAD</th>
                    <th>ESTADO</th>
                    <th>UBICACION</th>
                    <th>TIPO DE UBICACION</th>

                    <th>SUB-TOTAL</th>
                    <th class="acciones">ACCIONES</th>
                </tr>
                </thead>
                <tbody>
                    <h5>${usuario.getUsuario()}</h5>
                    <c:forEach var="listaCarrito" items="${listaCarrito}">
                        <tr>
                            <td>${listaCarrito.getItem()}</td>
                            <td>${listaCarrito.getCodigoProducto()}</td>
                            <td>${listaCarrito.getDescripcionProducto()}</td>
                            <td>${listaCarrito.getPrecioProducto()}</td>
                            <td>${listaCarrito.getStock()}</td>
                            <td>${listaCarrito.getCantidad()}</td>
                            <td>${listaCarrito.getEstado()}</td>
                            <td>${listaCarrito.getSubtotal()}</td>
                            <td>
                                <a class="btn btn-danger" href="Controlador?menu=CarritoCompra&accion=Eliminar&codigoProducto=${listaCarrito.getCodigoProducto()}" onclick="return confirmarEliminar();">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="card">
                <div class="card-footer">
                    <div class="d-flex justify-content-between">
                        <input type="submit" name="accion" value="Comprar" class="btn btn-success" onclick="imprimir()">
                        <a class="btn btn-danger" onclick="return confirm('¿Está seguro?')" href="Controlador?menu=CarritoCompra&accion=Cancelar">Cancelar</a>
                        <h3 class="cancelado">Cancelado <span>(¿No quieres el envío :c?)</span></h3>
                    </div>
                    <div class="mt-3">
                        <input type="text" name="txtTotal" value="Q.${totalPagar}0" class="form-control" readonly>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function reloadAndRedirect() {
            window.location.reload();
            top.location.href = 'Controlador?menu=Principal&accion=listar';
        }
        function confirmarEliminar() {
            return confirm('¿Estás seguro de que deseas eliminar este producto?');
        }
        function imprimir() {
            var elementosParaOcultar = document.querySelectorAll('.parte1, .btn, .acciones');
            elementosParaOcultar.forEach(function (elemento) {
                elemento.style.display = 'none';
            });
            var h3Cancelado = document.querySelector('.cancelado');
            h3Cancelado.style.display = 'block';
            var spanEstado = h3Cancelado.querySelector('span');
            if (spanEstado) {
                spanEstado.style.color = 'blueviolet';
            }
            window.print();
            elementosParaOcultar.forEach(function (elemento) {
                elemento.style.display = '';
            });
            h3Cancelado.style.display = 'none';
        }
        
        
        
        
        
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
