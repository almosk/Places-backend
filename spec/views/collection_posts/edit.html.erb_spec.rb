require 'rails_helper'

RSpec.describe "collection_posts/edit", type: :view do
  before(:each) do
    @collection_post = assign(:collection_post, CollectionPost.create!(
      collection_id: 1,
      post_id: 1
    ))
  end

  it "renders the edit collection_post form" do
    render

    assert_select "form[action=?][method=?]", collection_post_path(@collection_post), "post" do

      assert_select "input[name=?]", "collection_post[collection_id]"

      assert_select "input[name=?]", "collection_post[post_id]"
    end
  end
end
