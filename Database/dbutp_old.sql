/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     14/09/2022 10:09:56                          */
/*==============================================================*/


drop table if exists comentario;

drop table if exists foro;

drop table if exists roles;

drop table if exists usuario;

/*==============================================================*/
/* Table: comentario                                            */
/*==============================================================*/
create table comentario
(
   id_comentario        int not null,
   id_foro              int not null,
   id_usuario           int not null,
   contenido_comentario text not null,
   fecha_comentario     datetime not null,
   primary key (id_comentario)
);

/*==============================================================*/
/* Table: foro                                                  */
/*==============================================================*/
create table foro
(
   id_foro              int not null,
   id_usuario           int not null,
   contenido_comentario text not null,
   fecha                datetime not null,
   primary key (id_foro)
);

/*==============================================================*/
/* Table: roles                                                 */
/*==============================================================*/
create table roles
(
   id_rol               int not null,
   nombre_rol           varchar(50) not null,
   primary key (id_rol)
);

/*==============================================================*/
/* Table: usuario                                               */
/*==============================================================*/
create table usuario
(
   id_usuario           int not null,
   id_rol               int not null,
   username             varchar(50) not null,
   password             varchar(50) not null,
   primary key (id_usuario)
);

alter table comentario add constraint fk_comentar foreign key (id_usuario)
      references usuario (id_usuario) on delete restrict on update restrict;

alter table comentario add constraint fk_foro_comentario foreign key (id_foro)
      references foro (id_foro) on delete restrict on update restrict;

alter table foro add constraint fk_publicar foreign key (id_usuario)
      references usuario (id_usuario) on delete restrict on update restrict;

alter table usuario add constraint fk_roles_usuario foreign key (id_rol)
      references roles (id_rol) on delete restrict on update restrict;

