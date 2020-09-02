require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  it 'проверяем создание админа' do
    admin = AdminUser.new(
      email: 'admin@email.com',
      password: 'password'
    )
    expect(admin.save).to eq(true)
  end
end
