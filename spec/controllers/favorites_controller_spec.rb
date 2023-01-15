describe FavoritesController, type: :controller do
  context "test" do
    it "displays all favorites with the right user_id" do
      user = create(:user)
      favorite = create(:favorite, user: user)
      get :index, params: { user_id: user.id }
      expect(json_response["id"]).to eq(favorite.id)
      expect(json_response["name"]).to eq(favorite.name)
      expect(json_response["height"]).to eq(favorite.height)
    end
  end

end


describe '#favorite_params' do
  it 'should return params' do
    favorite_params = {favorite: {name: 'test', height: '10', weight: '20', user_id: '1'}}
    expect(controller.send(:favorite_params)).to eq(favorite_params)
  end
end
