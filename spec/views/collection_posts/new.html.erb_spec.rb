require 'rails_helper'

RSpec.describe "collection_posts/new", type: :view do
  before(:each) do
    assign(:collection_post, CollectionPost.new(
      collection_id: 1,
      post_id: 1
    ))
  end

  it "renders new collection_post form" do
    render

    assert_select "form[action=?][method=?]", collection_posts_path, "post" do

      assert_select "input[name=?]", "collection_post[collection_id]"

      assert_select "input[name=?]", "collection_post[post_id]"
    end
  end
end
