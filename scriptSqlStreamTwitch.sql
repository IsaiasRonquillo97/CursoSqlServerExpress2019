-- create database Sistema
use Sistema
go
/*
create table isg_personas
(
  IdPersona int,
  TipoId varchar(5),
  Id varchar(13),
  Nombres varchar(100),
  Apellidos varchar(100),
  Email varchar(150),
  FechaNacimiento date,
  Sexo char(1)
)*/
select * from isg_personas

--insertar datos
insert into isg_personas(IdPersona,TipoId,Id,Nombres,Apellidos,Email,FechaNacimiento,Sexo)
values(1,'C','0745987410','IsagenTech','Software','admin@isagentech.com','1997-02-23','M')

insert into isg_personas(IdPersona,TipoId,Id,Nombres,Apellidos,Email,FechaNacimiento,Sexo)
values(1,'C','0987457840','Juanito','Perez','jperez@isagentech.com','2000-05-01','M')

insert into isg_personas(IdPersona,TipoId,Id,Nombres,Apellidos,Email,FechaNacimiento,Sexo)
values(1,'C','0850214564','Maria','Rodriguez','mrodriguez@isagentech.com','2000-08-01','F')

--actualizar registros
update isg_personas set IdPersona = 1  where Id = '0745987410'
update isg_personas set IdPersona = 2 where Id = '0987457840'
update isg_personas set IdPersona = 3 where Id = '0850214564'

--eliminar registros
delete isg_personas where IdPersona = 2

--elimina toda la tabla 
truncate table isg_personas

---- Select con where
select Email,FechaNacimiento from isg_personas where Sexo = 'F'
