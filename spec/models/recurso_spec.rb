require 'rails_helper'

RSpec.describe Recurso, type: :model do
  it { is_expected.to validate_presence_of(:nombre) }
  it { is_expected.to validate_length_of(:nombre).is_at_least(5) }
end
