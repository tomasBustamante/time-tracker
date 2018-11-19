require 'rails_helper'

RSpec.describe Tarea, type: :model do
  it { is_expected.to validate_presence_of(:descripcion) }
  it { is_expected.to validate_length_of(:descripcion).is_at_least(5) }
end
