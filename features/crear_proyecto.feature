# language: es

Característica: Crear un nuevo proyecto
  Como CEO 
  quiero agregar un nuevo proyecto a la cartera 
  para que empiece a ser trabajado.

  Escenario: Ceo ve el botón de crear proyecto
    Cuando voy a la página de proyectos
    Entonces debería ver un botón de crear un proyecto
  
  Escenario: Ceo hace click en el botón de crear proyecto
    Dado que estoy en la página de proyectos
    Cuando hago click en el botón de crear proyectos
    Entonces debería ver un formulario
  
  Escenario: Ceo completa formulario
    Dado que hice click en el botón de crear proyecto
    Cuando completo el formulario
    Y hago click en crear proyecto
    Entonces debería crearse el proyecto