require 'rails_helper'

RSpec.describe "CollectionPosts", type: :request do
  describe "GET /collection_posts" do
    it "works! (now write some real specs)" do
      get collection_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
