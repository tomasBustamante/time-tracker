FactoryBot.define do
  factory :tarea do
    descripcion { "MyString" }
    horas_estimadas { 1 }
    horas_cargadas { 1 }
    fecha { "2018-11-19" }
    empleado { "MyString" }
  end
end
