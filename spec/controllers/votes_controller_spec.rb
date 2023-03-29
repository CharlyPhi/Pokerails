require 'rails_helper'

RSpec.describe VotesController, type: :controller do
  before(:each) do
    Vote.delete_all
  end

  describe 'Get #create' do
    it 'can create a new vote' do
      vote = Vote.create(description: 'Macron démission', number: 0)
      expect(vote.number).to eq(0)
    end
  end

  describe 'Get #index' do
    it 'renders votes in JSON' do
      vote1 = Vote.create(description: 'VOTE 1', number: 0)
      vote2 = Vote.create(description: 'VOTE 2', number: 0)
      vote3 = Vote.create(description: 'VOTE 3', number: 0)

      get :index
      expect(response.status).to eq(200)
      expect(response.content_type).to eq("application/json; charset=utf-8")

      parsed_response = JSON.parse(response.body)
      expect(parsed_response.length).to eq(3)
      expect((parsed_response[0])['description']).to eq('VOTE 1')
    end
  end

  describe "POST #upvote" do
    it "increments the number attribute of a vote object and saves the changes" do
      vote1 = Vote.create(description: 'Macron démission', number: 0)
      patch :upvote, params: { id: vote1.id }
      expect(response.status).to eq(200)

      vote1.reload
      expect(vote1.number).to eq(1)
    end
  end
end
