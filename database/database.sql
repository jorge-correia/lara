/*
  ****FOR BLOB FIELDS****
  *you must give access permition to the lara directory (x), if necessary
  *the file directory must be complete (from the root)

  ****USING THIS SCRIPT****
  *in the same directory of this file, type 'mysql'
  *type 'source database.sql'
*/

--database
drop database lara_database;
create database lara_database;
use lara_database;

--Tables
create table professor
(
  n_matricula integer not null,
  nome varchar (50) not null,
  email varchar (50) not null,
  senha varchar (64) not null,
  primary key (n_matricula)
);

create table aluno
(
  n_matricula integer not null,
  nome varchar (50) not null,
  email varchar (50) not null,
  senha varchar (64) not null,
  primary key (n_matricula)
);

create table gerente
(
  n_matricula integer not null,
  nome varchar (50) not null,
  email varchar (50) not null,
  senha varchar (64) not null,
  primary key (n_matricula)
);

create table curso
(
  id integer not null,
  nome varchar (50) not null,
  descricao blob not null,
  carga_horaria integer not null,
  matricula_professor integer not null,
  primary key (id),
  constraint fk_curso_professor foreign key (matricula_professor) references professor (n_matricula)
);

create table rel_aluno_curso
(
  n_matricula_aluno integer not null,
  id_curso integer not null,
  primary key (n_matricula_aluno, id_curso),
  constraint fk_aluno foreign key (n_matricula_aluno) references aluno (n_matricula),
  constraint fk_rel_curso foreign key (id_curso) references curso (id)
);

create table material
(
  id integer not null,
  nome varchar (50) not null,
  arquivo blob not null,
  id_curso integer not null,
  primary key (id),
  constraint fk_material_curso foreign key (id_curso) references curso (id)
);

--insertions
insert into professor (n_matricula, nome, email, senha) values (0, 'teacher', 'teacher@email.com', 'D74FF0EE8DA3B9806B18C877DBF29BBDE50B5BD8E4DAD7A3A725000FEB82E8F1'); --senha = 'pass'
insert into aluno (n_matricula, nome, email, senha) values (0, 'student', 'student@email.com', 'D74FF0EE8DA3B9806B18C877DBF29BBDE50B5BD8E4DAD7A3A725000FEB82E8F1'); --senha = 'pass'
insert into gerente (n_matricula, nome, email, senha) values (0, 'manager', 'manager@email.com', 'D74FF0EE8DA3B9806B18C877DBF29BBDE50B5BD8E4DAD7A3A725000FEB82E8F1'); --senha = 'pass'
insert into curso (id, nome, descricao, carga_horaria, matricula_professor) values (0, 'first course', load_file ('/lara/database/course_description.txt'), 60, 0);
insert into rel_aluno_curso (n_matricula_aluno, id_curso) values (0, 0);
insert into material (id, nome, arquivo, id_curso) values (0, 'First material', load_file('/lara/database/course_material.txt'), 0);
