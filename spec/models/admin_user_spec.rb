require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  it 'проверяем наличие стандартного админ юзера в базе' do
    admin = AdminUser.first
    expect(admin.email).to eq 'admin@example.com'
  end
end
