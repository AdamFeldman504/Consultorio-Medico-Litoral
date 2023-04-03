create database CML

select * from Puesto

/* 

Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado),


*/

--Consultorio Medico Litoral

use CML
Drop database CML
/*

create table Puesto(
Id_Puesto int identity(1,1) primary key not null,
Area_Trabajo nvarchar(50)
)

create table Empleado(
Id_Empleado int identity(1,1) primary key not null,
Fecha_Creacion date,
Id_Identificacion int,
Id_Antecedentes int,
Motivo_Consulta nvarchar(200),
Id_Interrogatorio_Aparatos_Sistemas int,
Id_Diagnostico_Terapeutico int,
Id_Exploracion_Fisica int
)

create table Identificacion(
Id_Identificacion int identity(1,1) primary key not null,
Codigo_Empleado nvarchar(6),
Nombre_Completo nvarchar(60),
Fecha_Nacimiento date,
No_Identidad nvarchar(13),
Sexo nvarchar(20),
Estado_Civil nvarchar(20),
Ocupacion nvarchar(30),
Origen nvarchar(20),
Reside nvarchar(20),
Domicilio nvarchar(20),
Telefono nvarchar(8),
Religion nvarchar(30),
Escolaridad nvarchar(30),
Email nvarchar(30),
Numero_Referencia nvarchar(8),
Id_Puesto int,
foreign key (Id_Puesto) references Puesto(Id_Puesto),
Imagen image,
Estado nvarchar(15),
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado)
)

create table Enfermedad_Heredo_Familiar(
Id_Enfermedad_Heredo_Familiar int identity(1,1) primary key not null,
Diabetes int,
Hepatopatia int,
Asma int,
Enfermedad_Endocrina int,
Interrogados_y_Negados int,
Hipertension int,
Nefropatia int,
Cancer int,
Cardiopatia int,
Enfermedad_Mental int,
Enfermedad_Alergicas int,
Otros int
)

create table Heredo_Familiar(
Id_Heredo_Familiar int identity(1,1) primary key not null,
Id_Enfermedad_Heredo_Familiar int,
foreign key (Id_Enfermedad_Heredo_Familiar) references Enfermedad_Heredo_Familiar(Id_Enfermedad_Heredo_Familiar),
Descripcion nvarchar(25),
)

create table Enfermedad_Personales_Patologicos(
Id_Enfermedad_Personales_Patologicos int identity(1,1) primary key not null,
Enfermedades_Actuales int,
Quirurgicos int,
Transfusionales int,
Alergias int,
Traumaticos int,
Hospitalizaciones_Previas int,
Adicciones int,
Otros int
)

create table Personales_Patologicos(
Id_Personales_Patologicos int identity(1,1) primary key not null,
Id_Enfermedad_Personales_Patologicos int,
foreign key (Id_Enfermedad_Personales_Patologicos) references Enfermedad_Personales_Patologicos(Id_Enfermedad_Personales_Patologicos),
Descripcion nvarchar(25),
)

create table Inmunizaciones(
Id_Inmunizaiones int identity(1,1) primary key not null,
Completas int,
Pendientes nvarchar(25)
)

create table Habitos_Personales(
Id_Habitos_Personales int identity(1,1) primary key not null,
Habito nvarchar (20),
Descripcion nvarchar(30)
)

create table Personales_No_Patologicos(
Id_Personales_No_Patologicos int identity(1,1) primary key not null,
Id_Habitos_Personales int,
foreign key (Id_Habitos_Personales) references Habitos_Personales(Id_Habitos_Personales),
Tabaquismo nvarchar(20),
Alcoholismo nvarchar(20),
Alimentacion int,
Deportes nvarchar(20),
Id_Inmunizaiones int,
foreign key (Id_Inmunizaiones) references Inmunizaciones(Id_Inmunizaiones),
Ultima_Desparasitacion nvarchar(20)
)

create table Ginecologia_Obstetrico(
Id_Ginecologia_Obstetrico int identity(1,1) primary key not null,
Menarca nvarchar(20),
Ritmo_Menstrual nvarchar(20),
FUM nvarchar(20),
IVSA nvarchar(20),
No_Parejas int,
G nvarchar(20),
A nvarchar(20),
P nvarchar(20),
C nvarchar(20),
FPP nvarchar(20),
FUP nvarchar(20),
Menp_Climaterio nvarchar(20),
Metodo_Planificacion nvarchar(20),
Cit_Vaginal nvarchar(20),
Examen_Mamas_Mastografia nvarchar(20)
)



Create table Antecedentes(
Id_Antecedentes int identity(1,1) primary key not null,
Id_Heredo_Familiar int,
foreign key (Id_Heredo_Familiar) references Heredo_Familiar(Id_Heredo_Familiar),
Id_Personales_Patologicos int,
foreign key (Id_Personales_Patologicos) references Personales_Patologicos(Id_Personales_Patologicos),
Id_Personales_No_Patologicos int,
foreign key (Id_Personales_No_Patologicos) references Personales_No_Patologicos(Id_Personales_No_Patologicos),
Id_Ginecologia_Obstetrico int,
foreign key (Id_Ginecologia_Obstetrico) references Ginecologia_Obstetrico(Id_Ginecologia_Obstetrico),
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado)
)

create table Interrogatorio_Aparatos_Sistemas(
Id_Interrogatorio_Aparatos_Sistemas int identity(1,1) primary key not null,
Enfermedad nvarchar(50),
Descripcion nvarchar(50),
Sin_Patologia bit, --Bit = Booleano
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado)
)


create table Diagnostico_Terapeutico (
Id_Diagnostico_Terapeutico int identity(1,1) primary key not null,
Descripcion nvarchar(80),
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado)
)

create table Signos_Vitales_Expediente(
Id_Signos_Vitales_Expediente int identity(1,1) primary key not null,
TA float,
Frecuencia_Cardiaca float,
Frecuencia_Respiratoria float,
Temperatura float,
Peso float,
Talla float
)


create table Exploracion_General(
Id_Exploracion_General int identity(1,1) primary key not null,
Detalle nvarchar(20),
Descripcion nvarchar(30)
)

create table Exploracion_Regional(
Id_Exploracion_Regional int identity(1,1) primary key not null,
Cabeza_1 int, --Nomocefalo
Cabeza_2 int, --Cabello
Cabeza_3 int, --Pupilas
Cabeza_4 int, --Faringe
Cabeza_5 int, -- Amigdalas
Cabeza_6 int, -- Nariz
Cabeza_7 int, -- Adenomegalias
Cuello_1 int, -- Cilindrico
Cuello_2 int, --Adenomegalias
Cuello_3 int, --Pulsos
Torax_1 int, --Normolineo
Torax_2 int, --Mov Resp
Torax_3 int, -- Campos Pulmonares
Torax_4 int, -- Ruidos Cardiacos
Torax_5 int, --Adenomegalias Auxiliares
Abdomen_1 int, --Plano globoso
Abdomen_2 int, --blando y depresible
Abdomen_3 int, -- Dolor palpacion
Abdomen_4 int, --Visceromegalias
Miembros_1 int, --Superiores
Miembros_2 int, -- Inferiores
Genitales nvarchar(100),
Impresion_Diagnostica nvarchar(100),
Tratamiento nvarchar(100)
)


create table Exploracion_Fisica(
Id_Exploracion_Fisica int identity(1,1) primary key not null,
Id_Signos_Vitales_Expediente int,
foreign key (Id_Signos_Vitales_Expediente) references Signos_Vitales_Expediente(Id_Signos_Vitales_Expediente),
Id_Exploracion_General int,
foreign key (Id_Exploracion_General) references Exploracion_General(Id_Exploracion_General),
Id_Exploracion_Regional int,
foreign key (Id_Exploracion_Regional) references Exploracion_Regional(Id_Exploracion_Regional),
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado)
)



create table Usuario(
Id_Usuario int identity(1,1) primary key not null,
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado),
Usuario nvarchar(20),
Contrasena nvarchar(20)
)


create table Bitacora(
Id_Bitacora int identity(1,1) primary key not null,
Pantalla nvarchar(20),
Id_Usuario int,
foreign key (Id_Usuario) references Usuario(Id_Usuario),
Descripcion nvarchar(80)
)


create table Signos_Vitales_Consultorio(
Id_Signos_Vitales_Consultorio int identity(1,1) primary key not null,
Presion_Arterial float,
Temperatura float,
Frecuencia_Cardiaca float,
Frecuencia_Respiratoria float,
Saturacion_Oxigeno float
)


Create table Consultorio(
Id_Consultorio int identity(1,1) primary key not null,
Id_Empleado int,
foreign key(Id_Empleado) references Empleado(Id_Empleado),
Antecedentes_Personales nvarchar(100),
Id_Signos_Vitales_Consultorio int,
foreign key(Id_Signos_Vitales_Consultorio) references Signos_Vitales_Consultorio(Id_Signos_Vitales_Consultorio),
Historia_Enfermedad_Actual nvarchar(100),
Examen_Fisico nvarchar(100),
Impresion_Diagnostico nvarchar(100),
Tratamiento nvarchar(100),
Conducta nvarchar(100),
Incapacidad image null
)



create table Producto(
Id_Producto int identity(1,1) primary key not null,
Nombre nvarchar(40),
Cantidad int
)


Create table Inventario(
Id_Inventario int identity(1,1) primary key not null,
Id_Producto int,
foreign key (Id_Producto) references Producto(Id_Producto),
Id_Usuario int,
foreign key (Id_Usuario) references Usuario(Id_Usuario),
Fecha_Ingreso date,
Fecha_Egreso date,
Fecha_Vencimiento date
)

create table Entrega_Medicinas(
Id_Entrega int identity(1,1) primary key not null,
Id_Producto int,
foreign key (Id_Producto) references Producto(Id_Producto),
Id_Identificacion int,
foreign key (Id_Identificacion) references Identificacion(Id_Identificacion),
Cantidad int,
Fecha_Entrega date,
Id_Puesto int,
foreign key (Id_Puesto) references Puesto(Id_Puesto)
)



*/




















create database CML

select * from Puesto

/* 
Esta BD es la de 15 tablas, los datos anteriores es todo el system

*/

--Consultorio Medico Litoral

use CML
Drop database CML


create table Puesto(
Id_Puesto int identity(1,1) primary key not null,
Area_Trabajo nvarchar(50)
)

create table Empleado(
Id_Empleado int identity(1,1) primary key not null,
Fecha_Creacion date,
Id_Identificacion int,
Id_Antecedentes int,

)

create table Identificacion(
Id_Identificacion int identity(1,1) primary key not null,
Codigo_Empleado nvarchar(6),
Nombre_Completo nvarchar(60),
Fecha_Nacimiento date,
No_Identidad nvarchar(13),
Sexo nvarchar(20),
Estado_Civil nvarchar(20),
Ocupacion nvarchar(30),
Origen nvarchar(20),
Reside nvarchar(20),
Domicilio nvarchar(20),
Telefono nvarchar(8),
Religion nvarchar(30),
Escolaridad nvarchar(30),
Email nvarchar(30),
Numero_Referencia nvarchar(8),
Id_Puesto int,
foreign key (Id_Puesto) references Puesto(Id_Puesto),
Imagen image,
Estado nvarchar(15),
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado)
)

create table Enfermedad_Heredo_Familiar(
Id_Enfermedad_Heredo_Familiar int identity(1,1) primary key not null,
Diabetes int,
Hepatopatia int,
Asma int,
Enfermedad_Endocrina int,
Interrogados_y_Negados int,
Hipertension int,
Nefropatia int,
Cancer int,
Cardiopatia int,
Enfermedad_Mental int,
Enfermedad_Alergicas int,
Otros int
)

create table Heredo_Familiar(
Id_Heredo_Familiar int identity(1,1) primary key not null,
Id_Enfermedad_Heredo_Familiar int,
foreign key (Id_Enfermedad_Heredo_Familiar) references Enfermedad_Heredo_Familiar(Id_Enfermedad_Heredo_Familiar),
Descripcion nvarchar(25),
)

create table Enfermedad_Personales_Patologicos(
Id_Enfermedad_Personales_Patologicos int identity(1,1) primary key not null,
Enfermedades_Actuales int,
Quirurgicos int,
Transfusionales int,
Alergias int,
Traumaticos int,
Hospitalizaciones_Previas int,
Adicciones int,
Otros int
)

create table Personales_Patologicos(
Id_Personales_Patologicos int identity(1,1) primary key not null,
Id_Enfermedad_Personales_Patologicos int,
foreign key (Id_Enfermedad_Personales_Patologicos) references Enfermedad_Personales_Patologicos(Id_Enfermedad_Personales_Patologicos),
Descripcion nvarchar(25),
)




Create table Antecedentes(
Id_Antecedentes int identity(1,1) primary key not null,
Id_Heredo_Familiar int,
foreign key (Id_Heredo_Familiar) references Heredo_Familiar(Id_Heredo_Familiar),
Id_Personales_Patologicos int,
foreign key (Id_Personales_Patologicos) references Personales_Patologicos(Id_Personales_Patologicos),
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado)
)



create table Usuario(
Id_Usuario int identity(1,1) primary key not null,
Id_Empleado int,
foreign key (Id_Empleado) references Empleado(Id_Empleado),
Usuario nvarchar(20),
Contrasena nvarchar(20)
)


create table Bitacora(
Id_Bitacora int identity(1,1) primary key not null,
Pantalla nvarchar(20),
Id_Usuario int,
foreign key (Id_Usuario) references Usuario(Id_Usuario),
Descripcion nvarchar(80)
)


create table Signos_Vitales_Consultorio(
Id_Signos_Vitales_Consultorio int identity(1,1) primary key not null,
Presion_Arterial float,
Temperatura float,
Frecuencia_Cardiaca float,
Frecuencia_Respiratoria float,
Saturacion_Oxigeno float
)


Create table Consultorio(
Id_Consultorio int identity(1,1) primary key not null,
Id_Empleado int,
foreign key(Id_Empleado) references Empleado(Id_Empleado),
Antecedentes_Personales nvarchar(100),
Id_Signos_Vitales_Consultorio int,
foreign key(Id_Signos_Vitales_Consultorio) references Signos_Vitales_Consultorio(Id_Signos_Vitales_Consultorio),
Historia_Enfermedad_Actual nvarchar(100),
Examen_Fisico nvarchar(100),
Impresion_Diagnostico nvarchar(100),
Tratamiento nvarchar(100),
Conducta nvarchar(100),
Incapacidad image null
)



create table Producto(
Id_Producto int identity(1,1) primary key not null,
Nombre nvarchar(40),
Cantidad int
)


Create table Inventario(
Id_Inventario int identity(1,1) primary key not null,
Id_Producto int,
foreign key (Id_Producto) references Producto(Id_Producto),
Id_Usuario int,
foreign key (Id_Usuario) references Usuario(Id_Usuario),
Fecha_Ingreso date,
Fecha_Egreso date,
Fecha_Vencimiento date
)

create table Entrega_Medicinas(
Id_Entrega int identity(1,1) primary key not null,
Id_Producto int,
foreign key (Id_Producto) references Producto(Id_Producto),
Id_Identificacion int,
foreign key (Id_Identificacion) references Identificacion(Id_Identificacion),
Cantidad int,
Fecha_Entrega date,
Id_Puesto int,
foreign key (Id_Puesto) references Puesto(Id_Puesto)
)

create table Incapacidad(
Id_Incapacidad int identity(1,1) primary key not null,
Fecha_Incapacidad date,
Id_Identificacion int, -- Persona
foreign key (Id_Identificacion) references Identificacion(Id_Identificacion),
Id_Puesto int,
foreign key (Id_Puesto) references Puesto(Id_Puesto),
Motivo nvarchar(80),
Dias int
)

/*
Persona
Descripcion
Enfermedad
Dias



*/