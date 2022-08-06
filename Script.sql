--create database SistVentasInv
Use SistVentasInv

--Definicion de tablas simples
create table tbl_tipo_producto
(
	IdTipo int,
	Tipo varchar(20),
	Estado bit
)

--Definicion de datos  
/*
   INSERT -> Me permite insertar registros en mi tabla
   UPDATE -> Me permite actualizar registros en mi tabla
   DELETE -> Me permite eliminar registros en mi tabla
   SELECT -> Me permite seleccionar o consultar registro de mi tabla
*/
-------------------------------------------
insert into tbl_tipo_producto(IdTipo,Tipo,Estado)
VALUES(1,'Limpieza',0)

insert into tbl_tipo_producto(IdTipo,Tipo,Estado)
VALUES(2,'Electrodomestico',1)

---------------------

select * from tbl_tipo_producto

---------------------
update tbl_tipo_producto set Estado = 1 , Tipo = 'ELECT' where IdTipo = 2
-------------------
DELETE tbl_tipo_producto where IdTipo = 1
----------