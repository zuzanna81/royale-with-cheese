require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB Table' do
    it { is_expected.to have db_column :username }
    it { is_expected.to have db_column :email }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :username }
    it { is_expected.to validate_uniqueness_of :username }
  end
end
