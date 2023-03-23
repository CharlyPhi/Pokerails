

RSpec.describe RegistrationsController, type: :controller do
  describe 'User #create' do
  it 'can create a user' do
  user = User.create(email: 'test@mail.com', username: 'Joe', password: 'password', password_confirmation: 'password')
  expect(user.username).to eq('Joe')
  end
  end
end
