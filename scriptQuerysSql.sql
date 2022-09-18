--create table tbl_producto(
--	IdProducto int,
--	IdTipo int,
--	Nombre varchar(50),
--	Precio money,
--	Stock  int,
--	Estado bit
--)



--truncate table tbl_producto

--insert into tbl_producto (IdProducto,IdTipo,Nombre,Precio,Stock,Estado)
--values(1,1,'DEJA',2.80,100,1)

--insert into tbl_producto (IdProducto,IdTipo,Nombre,Precio,Stock,Estado)
--values(2,1,'ESCOBA',5.45,10,1)

--insert into tbl_producto (IdProducto,IdTipo,Nombre,Precio,Stock,Estado)
--values(3,1,'ESPONJA',0.80,200,1)


--insert into tbl_producto (IdProducto,IdTipo,Nombre,Precio,Stock,Estado)
--values(3,2,'TELEVISOR',500.80,200,1)

--insert into tbl_producto (IdProducto,IdTipo,Nombre,Precio,Stock,Estado)
--values(4,2,'REFRIGERADOR',700.80,200,1)

--insert into tbl_producto (IdProducto,IdTipo,Nombre,Precio,Stock,Estado)
--values(5,2,'LAVADORA',0.80,1000,1)

select * from tbl_tipo_producto
select * from tbl_producto

--Mostrar todos los productos que tengan un stock menor a 100
select * from tbl_producto where Stock < 100

--Mostrar todos los productos que tengan un stock mayor a 100
select * from tbl_producto where Stock > 100

--Mostrar el producto que tiene mas retencion en stock
select top 1 MAX(Stock),Nombre from tbl_producto group by Nombre

select top 1 * from tbl_producto order by Stock desc

-- Mostrar los tipos de producto y producto (MINI REPORTE)

SELECT
	A.Tipo,
	B.Nombre as Producto,
	B.Precio,
	B.Stock 
FROM tbl_tipo_producto A 
inner join 
tbl_producto B
on
A.IdTipo = B.IdTipo

--Conteo de los productos que tengo por cada tipo

SELECT COUNT(*),Tipo from (
	SELECT
		A.Tipo,		
		B.Nombre as Producto,
		B.Precio,
		B.Stock 
	FROM tbl_tipo_producto A 
	inner join 
	tbl_producto B
	on
	A.IdTipo = B.IdTipo
) as T
Group by Tipo