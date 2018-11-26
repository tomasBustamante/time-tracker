Dado("que ya se creó un proyecto, un requerimiento y una tarea") do
  visit new_proyecto_path
  fill_in("proyecto_nombre", :with => "Proyecto de prueba")
  fill_in("proyecto_descripcion", :with => "Esto es un proyecto de prueba")
  click_button("crear_proyecto")
  visit proyectos_path
  find(:xpath, "//tr[contains(.,'Proyecto de prueba')]/td/a", :text => 'Mostrar').click
  click_button("nuevo_requerimiento")
  fill_in("requerimiento_nombre", :with => "Requerimiento de prueba")
  fill_in("requerimiento_descripcion", :with => "Esto es un requerimiento de prueba")
  click_button("crear_requerimiento")
  find(:xpath, "//tr[contains(.,'Requerimiento de prueba')]/td/a", :text => 'Mostrar').click
  click_button("nueva_tarea")
  fill_in("tarea_descripcion", :with => "Tarea de ejemplo")
  fill_in("tarea_horas_estimadas", :with => 12)
  fill_in("tarea_empleado", :with => "John Doe")
  click_button("crear_tarea")
end


Cuando("voy a la página de mis tareas") do
  visit registro_horas_path
end

Entonces("debería ver un listado de mis tareas pendientes") do
  page.has_content?("<h1>Mis tareas</h1>")
end

Dado("que estoy en la página de mis tareas") do
  visit registro_horas_path
end

Cuando("selecciono la tarea {string}") do |string|
  visit new_proyecto_path
  fill_in("proyecto_nombre", :with => "Proyecto de prueba 2")
  fill_in("proyecto_descripcion", :with => "Esto es un proyecto de prueba")
  click_button("crear_proyecto")
  visit proyectos_path
  find(:xpath, "//tr[contains(.,'Proyecto de prueba 2')]/td/a", :text => 'Mostrar').click
  click_button("nuevo_requerimiento")
  fill_in("requerimiento_nombre", :with => "Requerimiento de prueba 2")
  fill_in("requerimiento_descripcion", :with => "Esto es un requerimiento de prueba")
  click_button("crear_requerimiento")
  find(:xpath, "//tr[contains(.,'Requerimiento de prueba 2')]/td/a", :text => 'Mostrar').click
  click_button("nueva_tarea")
  fill_in("tarea_descripcion", :with => "Tarea de ejemplo 2")
  fill_in("tarea_horas_estimadas", :with => 12)
  fill_in("tarea_empleado", :with => "John Doe")
  click_button("crear_tarea")
  visit proyecto_requerimiento_tarea_path(2,2,2)
end

Entonces("debería ir a la página de la tarea") do
  page.has_content?("Tarea de ejemplo 2")
end

Dado("que selecciono la tarea {string}") do |string|
  visit new_proyecto_path
  fill_in("proyecto_nombre", :with => "Proyecto de prueba 2")
  fill_in("proyecto_descripcion", :with => "Esto es un proyecto de prueba")
  click_button("crear_proyecto")
  visit proyectos_path
  find(:xpath, "//tr[contains(.,'Proyecto de prueba 2')]/td/a", :text => 'Mostrar').click
  click_button("nuevo_requerimiento")
  fill_in("requerimiento_nombre", :with => "Requerimiento de prueba 2")
  fill_in("requerimiento_descripcion", :with => "Esto es un requerimiento de prueba")
  click_button("crear_requerimiento")
  find(:xpath, "//tr[contains(.,'Requerimiento de prueba 2')]/td/a", :text => 'Mostrar').click
  click_button("nueva_tarea")
  fill_in("tarea_descripcion", :with => "Tarea de ejemplo 2")
  fill_in("tarea_horas_estimadas", :with => 12)
  fill_in("tarea_empleado", :with => "John Doe")
  click_button("crear_tarea")
  visit proyecto_requerimiento_tarea_path(4,4,4)
end

Entonces("el campo {string} debería tener el valor {string}") do |campo, valor|
  find_field("#{campo}", disabled: true).value.should == valor
end
