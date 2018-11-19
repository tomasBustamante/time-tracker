require 'rails_helper'

RSpec.describe Proyecto, type: :model do
  it { is_expected.to validate_presence_of(:nombre) }
  it { is_expected.to validate_length_of(:nombre).is_at_least(5) }
  it { is_expected.to validate_presence_of(:descripcion) }
  it { is_expected.to validate_length_of(:descripcion).is_at_least(10) }
end
