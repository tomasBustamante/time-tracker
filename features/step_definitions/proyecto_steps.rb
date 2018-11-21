# language: es
Cuando("voy a la página de proyectos") do
  visit proyectos_path
end

Entonces("debería ver el botón {string}") do |string|
  page.has_content?(string)
end

Dado("que estoy en la página de proyectos") do
  visit proyectos_path
end

Cuando("hago click en el link {string}") do |string|
  click_link(string)
end

Entonces("debería ir a la página de nuevo proyecto") do
  visit new_proyecto_path
end

Dado("que estoy en la página de nuevo proyecto") do
  visit new_proyecto_path
end

Dado("que completo el campo {string} con {string}") do |string, string2|
  fill_in(string, :with => string2)
end

Cuando("hago click en el botón {string}") do |string|
  click_button(string)
end

Entonces("debería ver el mensaje {string}") do |string|
  page.has_content?(string)
end
