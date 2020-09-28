require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe 'verifies presence of fields' do
    it { should validate_presence_of(:unsplash_id) }
    it { should validate_presence_of(:url) }
  end
end
