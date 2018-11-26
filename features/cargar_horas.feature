# language: es
 Característica: Carga de horas en tarea
  Como empleado
  quiero registrar las horas dedicadas a una tarea
  para tener un control de las horas trabajadas.

  Escenario: El empleado ve su lista de tareas asignadas.
    Dado que ya se creó un proyecto, un requerimiento y una tarea
    Cuando voy a la página de mis tareas
    Entonces debería ver un listado de mis tareas pendientes

  Escenario: El empleado accede a una tarea asignada a él
    Dado que estoy en la página de mis tareas
    Y que ya se creó un proyecto, un requerimiento y una tarea
    Cuando selecciono la tarea "Tarea de ejemplo"
    Entonces debería ir a la página de la tarea
