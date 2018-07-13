require 'rails_helper'

describe Book, type: :model do
  describe 'relationships' do
    it {should have_many(:reviews)}
  end
end
