# language: es
 Característica: Creación de proyecto
  Como gerente
  quiero agregar un nuevo proyecto a la cartera de proyectos
  para que empiece a ser trabajado.

  Escenario: El gerente ve el botón de crear proyecto
    Cuando voy a la página de proyectos
    Entonces debería ver el botón "Nuevo proyecto"

  Escenario: El gerente hace click en el botón de nuevo proyecto
    Dado que estoy en la página de proyectos
    Cuando hago click en el link "nuevo_proyecto"
    Entonces debería ir a la página de nuevo proyecto

  Escenario: El gerente completa el formulario y se crea el proyecto
    Dado que estoy en la página de nuevo proyecto
    Y que completo el campo "proyecto_nombre" con "Proyecto de prueba"
    Y que completo el campo "proyecto_descripcion" con "Esto es una prueba"
    Cuando hago click en el botón "crear_proyecto"
    Entonces debería ver el mensaje "El proyecto fue creado satisfactoriamente."
