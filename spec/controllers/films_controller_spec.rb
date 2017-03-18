require 'spec_helper'

describe FilmsController do

  describe "GET 'index'" do
    it "returns http success" do
      get :index, format: :json
      expect(response).to be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get :show, id: 8, format: :json
      expect(response.status).to eq 200
    end
  end

end
