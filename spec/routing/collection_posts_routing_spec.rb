require "rails_helper"

RSpec.describe CollectionPostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/collection_posts").to route_to("collection_posts#index")
    end

    it "routes to #new" do
      expect(get: "/collection_posts/new").to route_to("collection_posts#new")
    end

    it "routes to #show" do
      expect(get: "/collection_posts/1").to route_to("collection_posts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/collection_posts/1/edit").to route_to("collection_posts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/collection_posts").to route_to("collection_posts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/collection_posts/1").to route_to("collection_posts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/collection_posts/1").to route_to("collection_posts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/collection_posts/1").to route_to("collection_posts#destroy", id: "1")
    end
  end
end
