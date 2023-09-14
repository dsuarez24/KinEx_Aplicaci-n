<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <style>
            body {
                background-color: #f5f5f5;
                font-family: 'Arial', sans-serif;
                 background: linear-gradient(to bottom, #ffffff, #f2f2f2); /* Fondo degradado de ejemplo */
                padding: 20px;
            }
            .container {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
                margin-top: 20px;
            }
            .formulario {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                animation: fadeIn 1s ease-in-out;
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
                transition: background-color 0.3s;
            }
            .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }
            .btn-comprar {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .btn-comprar:hover {
                background-color: #45a049;
            }
            .btn-cancelar {
                background-color: #FF5733;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .btn-cancelar:hover {
                background-color: #FF5722;
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
            @keyframes fadeIn {
                0% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }
            @keyframes comprarAnimation {
                0% {
                    transform: scale(1);
                }
                50% {
                    transform: scale(1.1);
                }
                100% {
                    transform: scale(1);
                }
            }
            .emoji-triste {
                font-size: 24px;
            }
        </style>

        <title>Carrito de Envíos</title>


    </head>
    <body>
        <div class="container">
            <h2 class="form-title">Formulario de Tipo Ubicacion</h2>
            <form action="Controlador?menu=CarritoCompra" method="POST">
                <div class="form-group">
                    <label for="txtDireccion">Direccion:</label>
                    <input type="text" value="${tipoUbicacion.getDireccion()}" name="txtDireccion" class="form-control">
                </div>  
                <div class="form-group text-center">
                    <button type="submit" name="accion" value="AgregarTipoUbicacion" class="btn btn-warning">Agregar</button>
                </div>
            </form>

        </div>
        <br>
        <div class="container">
            <h2 class="form-title">Formulario de Ubicacion</h2>
            <form action="Controlador?menu=CarritoCompra" method="POST">
                <div class="form-group">
                    <label for="txtCodigoTipoUbicacion">Codigo Tipo Ubicacion:</label>
                    <input type="text" value="${ubicacion.getCodigoTipoUbicacion()}" name="txtCodigoTipoUbicacion" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtDepartamento">Departamento:</label>
                    <input type="text" value="${ubicacion.getDepartamento()}" name="txtDepartamento" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtMunicipio">Municipio:</label>
                    <input type="text" value="${ubicacion.getMunicipio()}" name="txtMunicipio" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtAldeaColonia">Aldea/Colonia:</label>
                    <input type="text" value="${ubicacion.getAldeaColonia()}" name="txtAldeaColonia" class="form-control">
                </div>
                <div class="form-group text-center">
                    <button type="submit" name="accion" value="AgregarUbicacion" class="btn btn-warning">Agregar</button>
                </div>
            </form>
        </div>
        <br>
        <div class="container">
            <h2 class="form-title">Formulario de Tipo Producto</h2>
            <form action="Controlador?menu=CarritoCompra" method="POST">
                <div class="form-group">
                    <label for="txtCodigoTipoProducto">Descripcion del Tipo de Producto:</label>
                    <input type="text" value="${tipoProducto.getCodigoTipoProducto()}" name="txtCodigoTipoProducto" class="form-control">
                </div>
                <div class="form-group text-center">
                    <button type="submit" name="accion" value="Llevar" class="btn btn-warning">Agregar</button>
                </div>
            </form>
        </div>
        <br>
        <div class="container">
            <h2 class="form-title">Formulario de Producto</h2>
            <form action="Controlador?menu=CarritoCompra" method="POST">
                <div class="form-group">
                    <label for="txtCodigoProducto">Codigo Producto:</label>
                    <input type="text" value="${producto.getCodigoProducto()}" name="txtCodigoProducto" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtNombreProducto">Nombre Producto:</label>
                    <input type="text" value="${producto.getNombreProducto()}" name="txtNombreProducto" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtCantidad">Cantidad:</label>
                    <input type="text" value="${producto.getCantidad()}" name="txtCantidad" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtPrecio">Precio:</label>
                    <input type="text" value="${producto.getPrecio()}" name="txtPrecio" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtCodigoTipoProducto">Tipo Producto:</label>
                    <input type="text" value="${producto.getCodigoTipoProducto()}" name="txtCodigoTipoProducto" class="form-control">
                </div>
                <div class="form-group text-center">
                    <button type="submit" name="accion" value="Llevar" class="btn btn-warning">Agregar</button>
                </div>
            </form>
        </div>
        <br>
        <div class="container">
            <h2 class="form-title">Formulario de Tipo del Paquete</h2>
            <form action="Controlador?menu=CarritoCompra" method="POST">
                <div class="form-group">
                    <label for="txtCodigoTipoPaquete">Codigo Tipo Paquete:</label>
                    <input type="text" value="${tipoPaquete.getCodigoTipoPaquete()}" name="txtCodigoTipoPaquete" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtDescripcion">Descripcion:</label>
                    <input type="text" value="${tipoPaquete.getDescripcionTipoPaquete()}" name="txtDescripcion" class="form-control">
                </div>
                <div class="form-group text-center">
                    <button type="submit" name="accion" value="AgregarTipoPaquete" class="btn btn-warning">Agregar</button>
                </div>
            </form>
        </div>
        <br>
        <div class="container">
            <h2 class="form-title">Formulario de Paquete</h2>
            <form action="Controlador?menu=CarritoCompra" method="POST">
                <div class="form-group">
                    <label for="txtTamañoPaquete">Tamaño Paquete:</label>
                    <input type="text" value="${paquete.getTamañoPaquete()}" name="txtTamañoPaquete" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtPesoPaquete">Peso Paquete:</label>
                    <input type="text" value="${paquete.getPesoPaquete()}" name="txtPesoPaquete" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtContenido">Contenido Del Paquete:</label>
                    <input type="text" value="${paquete.getContenido()}" name="txtContenido" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtCodigoTipoPaquete">Tipo Paquete:</label>
                    <input type="text" value="${paquete.getCodigoTipoPaquete()}" name="txtCodigoTipoPaquete" class="form-control">
                </div>
                <div class="form-group text-center">
                    <button type="submit" name="accion" value="AgregarPaquete" class="btn btn-warning">Agregar</button>
                </div>
            </form>
        </div>
        <br>
        <div class="container">
            <h2 class="form-title">Formulario de Clientes</h2>
            <form action="Controlador?menu=CarritoCompra" method="POST">
                <div class="form-group">
                    <label for="txtApellidosCliente">Apellidos Cliente:</label>
                    <input type="text" value="${cliente.getApellidosCliente()}" name="txtApellidosCliente" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtNombresCliente">Nombres Cliente:</label>
                    <input type="text" value="${cliente.getNombresCliente()}" name="txtNombresCliente" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtDireccionCliente">Direccion Cliente:</label>
                    <input type="text" value="${cliente.getDireccionCliente()}" name="txtDireccionCliente" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtTelefonoCliente">Telefono Cliente:</label>
                    <input type="text" value="${cliente.getTelefonoCliente()}" name="txtTelefonoCliente" class="form-control">
                </div>
                <div class="form-group">
                    <label for="txtCodigoTipoCliente">Tipo Cliente:</label>
                    <input type="text" value="${cliente.getCodigoTipoCliente()}" name="txtCodigoTipoCliente" class="form-control">
                </div>
                <div class="form-group">
                    <h2>Metodo de pago</h2>
                    <select  name="option">
                        <option value="1">Tarjeta</option>
                        <option value="2" selected>Efectivo</option>
                    </select>
                </div>
                <div class="form-group text-center">
                    <button type="submit" name="accion" value="AgregarCliente" class="btn btn-warning">Agregar</button>
                </div>
            </form>
        </div>
        <br>
        <div class="container" id="cat">
            <div class="card">
                <div class="card-footer">
                    <div class="d-flex justify-content-between">
                        <button type="submit" name="accion" class="btn btn-primary btn-comprar" onclick="comprarAnimation()">Comprar</button>
                        <button class="btn btn-danger btn-cancelar" onclick="cancelarAnimation()">Cancelar</button>
                    </div>
                    <div class="mt-3">
                        <input type="text" name="txtTotal" value="Q.${totalPagar}0" class="form-control" readonly>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    function comprarAnimation() {
        const comprarButton = document.querySelector('.btn-comprar');
        comprarButton.innerHTML = 'Comprando...';
        comprarButton.style.animation = 'comprarAnimation 1s';
        setTimeout(() => {
            comprarButton.style.animation = '';
        }, 1000);
    }

    function cancelarAnimation() {
        const emojiTriste = document.querySelector('.emoji-triste');
        emojiTriste.style.fontSize = '48px';
        setTimeout(() => {
            emojiTriste.style.fontSize = '24px';
        }, 2000);
    }

    function confirmarEliminar() {
        return confirm('¿Estás seguro de que deseas eliminar este producto?');
    }
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
