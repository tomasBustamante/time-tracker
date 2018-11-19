# language: es

# Característica: Asignar horas a tarea
#     Como empleado 
#     quiero registrar las horas dedicadas a una tarea 
#     para tener un control de las horas trabajadas.

# Escenario: Empleado ve sus tareas 
#     Cuando entro al sistema
#     Entonces veo las tareas que se me asignaron

# Escenario: Empleado selecciona una tarea para registrar horas
#     Cuando hago click en una tarea 
#     Entonces veo la opción de sumar horas

# Escenario: Empleado suma la cantidad de horas 
#     Dado que seleccioné una tarea 
#     Cuando sumo las horas trabajadas 
#     Entonces la tarea tiene las horas que tenía más la que agruegué

# Escenario: Empleado quiere sumar más de 8 horas a una tarea un día
#     Dado que seleccioné una tarea
#     Cuando quiero sumar más de 8 horas en un día
#     Entonces el sistema no me lo permite
