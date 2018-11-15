# Time Tracker

[![Build Status](https://travis-ci.org/tomasBustamante/time-tracker.svg?branch=master)](https://travis-ci.org/tomasBustamante/time-tracker)
[![Coverage Status](https://coveralls.io/repos/github/tomasBustamante/time-tracker/badge.svg?branch=master)](https://coveralls.io/github/tomasBustamante/time-tracker?branch=master)

Aplicación que permite el registro y seguimiento de las horas trabajadas por día asociadas a tareas de diversos proyectos.

## Configuración inicial

1.  Instalación de Ruby

```console
$ sudo apt-get install ruby-full
$ ruby --version
2.5.1
```
2.  Instalación de Rails

```console
$ gem install rails
$ rails -version
```

3.  Instalación de PostgreSQL:

```console
$ sudo apt-get install libpq-dev
$ sudo apt-get install postgresql
```

4.  Agregar nuevo usuario a la base de datos:

```console
$ sudo su postgres
$ psql
psql (10.5 (Ubuntu 10.5-0ubuntu0.18.04))
Type "help" for help.

postgres=# CREATE ROLE tomas LOGIN PASSWORD 'Passw0rd'
postgres-#   NOINHERIT CREATEDB
postgres-#     VALID UNTIL 'infinity';
CREATE ROLE
```

  Otorgar privilegios de _superusuario_:

```console
postgres=# ALTER ROLE tomas with superuser;
ALTER ROLE
```

  Ver lista de usuarios:

```console
postgres=# \du
                                   List of roles
 Role name |                         Attributes                         | Member of
-----------+------------------------------------------------------------+-----------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS | {}
 tomas     | Superuser, No inheritance, Create DB                      +| {}
           | Password valid until infinity                              |  
```

  Salir de psql:

```console
postgres=# \q
$ exit
exit
```

5.  Instalación de dependencias:

  El siguiente comando instalará todas las gemas especificadas en el archivo Gemfile

```console
$ bundle install
```

6.  Creación de la base de datos:

```console
$ rails db:create
$ rails db:migrate
```

7.  Instalación de los _frameworks_ de pruebas automatizadas:

  El siguiente comando instala Rspec para las pruebas unitarias:

```console
$ bundle exec rails generate rspec:install
```

  Al ejecutar la siguiente línea se corren todas las pruebas unitarias existentes (al principio ninguna) si se instaló correctamente:

```console
$ bundle exec rspec
```

  Instalación de Cucumber para las pruebas de aceptación:

```console
$ bundle exec rails g cucumber:install
```

  La siguiente línea no debería dar error si se instaló correctamente:

```console
$ bundle exec cucumber
```

## Procedimiento de trabajo

-  La primera vez:

```console
$ git clone https://github.com/tomasBustamante/time-tracker.git
$ cd time-tracker
```

-  Siempre:

  Descarga de la última versión:

```console
$ git pull origin master
```

  Agregar archivos nuevos y/o modificados:

```console
$ git add .
$ git commit -m "Comentario descriptivo de los cambios"
$ git push origin master
```

## Referencias

1.  [Tutorial de configuración inicial](https://medium.com/craft-academy/getting-started-with-rails-tests-continuous-integration-deployment-7b5bfec905a5)
2.  [Tutorial oficial de Rails](https://edgeguides.rubyonrails.org/getting_started.html)
