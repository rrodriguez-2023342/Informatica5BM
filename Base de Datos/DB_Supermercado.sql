drop database if exists DB_Supermercado;
create database DB_Supermercado;
use DB_Supermercado;

create table Proveedores(
	codigoProveedor int auto_increment,
    nombreProveedor varchar(255) not null, 
    telefonoProveedor varchar(255) not null,
    correoProveedor varchar(255) not null,
    direccionProveedor varchar(255) not null,
    primary key PK_codigoProveedor (codigoProveedor)
);

create table Productos(
	codigoProducto int auto_increment,
    nombreProducto varchar(255) not null,
    stock int not null,
    precio double not null,
    codigoProveedor int not null,
    primary key PK_codigoProducto (codigoProducto),
    constraint FK_codigoProveedor foreign key (codigoProveedor)
		references Proveedores(codigoProveedor)
);

-- PROCEDIMENTOS ALMACENADOS

-- PROVEEDORES
-- Agregar Proveedor
Delimiter //
	Create procedure sp_AgregarProveedor(
    in nombreProveedor varchar(100), 
    in telefonoProveedor varchar(20), 
    in correoProveedor varchar(200), 
    in direccionProveedor varchar(150))
		Begin
			Insert into Proveedores(nombreProveedor, telefonoProveedor, correoProveedor, direccionProveedor)
				Values(nombreProveedor, telefonoProveedor, correoProveedor, direccionProveedor);
        End //
Delimiter ;
call sp_AgregarProveedor('Textiles Centro', '+502 2456-7890', 'textiles.centro@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Distribuidora El Faro', '+502 3345-1234', 'elfaro.proveedores@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Moda Global', '+502 5566-7788', 'modaglobal@gmail.com', 'México');
call sp_AgregarProveedor('Colores y Telas', '+502 4789-0012', 'coloresytelas@gmail.com', 'El Salvador');
call sp_AgregarProveedor('Fashion Import', '+502 5123-4567', 'fashionimport@gmail.com', 'Estados Unidos');
call sp_AgregarProveedor('Ropa Latina', '+502 6034-5678', 'ropalatina@gmail.com', 'Honduras');
call sp_AgregarProveedor('Tejidos Maya', '+502 7234-1122', 'tejidosmaya@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Estilo Urbano', '+502 3109-8765', 'estilourbano@gmail.com', 'Costa Rica');
call sp_AgregarProveedor('Boutique Express', '+502 4490-2233', 'boutique.express@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Importadora del Sur', '+502 5678-3344', 'import.sur@gmail.com', 'Panamá');

-- Listar Proveedor
Delimiter //
	Create procedure sp_ListarProveedor()
		Begin
			Select codigoProveedor, nombreProveedor, telefonoProveedor, correoProveedor, direccionProveedor from Proveedores;
        End //
Delimiter ;
call sp_ListarProveedor();

-- Eliminar Proveedor
Delimiter //
	Create procedure sp_EliminarProveedor(
    in _codigoProveedor int)
		Begin
			set foreign_key_checks = 0;
				Delete from Proveedores
					where codigoProveedor = _codigoProveedor;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
-- call sp_EliminarProveedor(10);

-- Buscar Proveedor
Delimiter //
	Create procedure sp_BuscarProveedor(
    in _codigoProveedor int)
		Begin
			Select codigoProveedor, nombreProveedor, telefonoProveedor, correoProveedor, direccionProveedor from Proveedores
				where codigoProveedor = _codigoProveedor;
        End //
Delimiter ;
call sp_BuscarProveedor(1);

-- Editar Proveedor
Delimiter //
	Create procedure sp_EditarProveedor(
    in _codigoProveedor int,
    in _nombreProveedor varchar(255), 
    in _telefonoProveedor varchar(255), 
    in _correoProveedor varchar(255), 
    in _direccionProveedor varchar(255))
		Begin
			Update Proveedores
				set nombreProveedor = _nombreProveedor,
					telefonoProveedor = _telefonoProveedor,
                    correoProveedor = _correoProveedor,
                    direccionProveedor = _direccionProveedor
					where codigoProveedor = _codigoProveedor;
        End //
Delimiter ;
call sp_EditarProveedor(1, 'Tendencias del Sur', '+502 4567-8899', 'tendenciassur@gmail.com', 'Costa Rica');

-- PRODUCTOS
-- Agregar Producto
Delimiter //
	Create procedure sp_AgregarProducto(
    in nombreProducto varchar(100), 
    in stock int, 
    in precio double, 
    in codigoProveedor int)
		Begin
			Insert into Productos(nombreProducto, stock, precio, codigoProveedor)
				Values(nombreProducto, stock, precio, codigoProveedor);
        End //
Delimiter ;
call sp_AgregarProducto('Arroz Blanco 1kg', 200, 12.50, 1);
call sp_AgregarProducto('Frijol Negro 2lb', 150, 14.75, 2);
call sp_AgregarProducto('Azúcar 2kg', 180, 10.20, 1);
call sp_AgregarProducto('Aceite Vegetal 1L', 120, 25.00, 3);
call sp_AgregarProducto('Sal de Mesa 1kg', 90, 5.50, 4);
call sp_AgregarProducto('Leche Entera 1L', 100, 18.75, 2);
call sp_AgregarProducto('Huevos Docena', 60, 22.00, 3);
call sp_AgregarProducto('Pan Blanco 500g', 70, 15.30, 4);
call sp_AgregarProducto('Jabón en Barra 3pz', 80, 20.40, 1);
call sp_AgregarProducto('Detergente en Polvo 1kg', 110, 28.90, 2);

-- Listar Producto
Delimiter //
Create procedure sp_ListarProducto()
		Begin
			Select codigoProducto, nombreProducto, stock, precio, codigoProveedor from Productos;
        End //
Delimiter ;
call sp_ListarProducto();

-- Eliminar Producto
-- Eliminar Proveedor
Delimiter //
	Create procedure sp_EliminarProducto(
    in _codigoProducto int)
		Begin
			set foreign_key_checks = 0;
				Delete from Productos
					where codigoProducto = _codigoProducto;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
-- call sp_EliminarProducto(10);

-- Buscar Producto
Delimiter //
	Create procedure sp_BuscarProducto(
    in _codigoProducto int)
		Begin
			Select codigoProducto, nombreProducto, stock, precio, codigoProveedor from Productos
				where codigoProducto = _codigoProducto;
        End //
Delimiter ;
call sp_BuscarProducto(1);

-- Editar Producto
Delimiter //
	Create procedure sp_EditarProducto(
    in _codigoProducto int,
    in _nombreProducto varchar(255), 
    in _stock varchar(255), 
    in _precio varchar(255), 
    in _codigoProveedor varchar(255))
		Begin
			Update Productos
				set nombreProducto = _nombreProducto,
					stock = _stock,
                    precio = _precio,
                    codigoProveedor = _codigoProveedor
					where codigoProducto = _codigoProducto;
        End //
Delimiter ;
call sp_EditarProducto(1, 'Atol de elote', 150, 12.05, 5);
