proyecto = Proyecto.create(nombre: 'Ejemplo de proyecto',
  descripcion: 'Esto es un ejemplo de un proyecto cargado previamente')
requerimiento = Requerimiento.create(nombre: 'Ejemplo de requerimiento',
  descripcion: 'Esto es un ejemplo de un requerimiento creado para el ejemplo de proyecto',
  proyecto: proyecto)
tarea = Tarea.create(descripcion: 'Ejemplo de tarea', horas_estimadas: 8,
  empleado: 'John Doe', requerimiento: requerimiento)
