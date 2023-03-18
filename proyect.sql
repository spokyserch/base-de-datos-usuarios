create database proyect1;
use proyect1;

create table roles(
id_rol int primary key,
super_rol varchar (50),
profesor varchar (50),
alumno varchar (50)
);

create table permisos(
id_permiso int primary key,
p_admin varchar (50),
p_general varchar (50),
p_default varchar (50)
);

create table permiso_rol(
id_permiso_rol int primary key,
id_rol int,
id_permiso int,
foreign key (id_rol) references roles (id_rol),
foreign key (id_permiso) references permisos (id_permiso)
);

create table usuarios(
id_usuarios int primary key,
matricula int,
nombre varchar (100),
apellido_paterno varchar (100),
apellido_materno varchar (100),
correo varchar (100),
id_permiso_rol int,
foreign key (id_permiso_rol) references permiso_rol (id_permiso_rol)
);