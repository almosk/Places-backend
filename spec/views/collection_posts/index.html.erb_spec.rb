require 'rails_helper'

RSpec.describe "collection_posts/index", type: :view do
  before(:each) do
    assign(:collection_posts, [
      CollectionPost.create!(
        collection_id: 2,
        post_id: 3
      ),
      CollectionPost.create!(
        collection_id: 2,
        post_id: 3
      )
    ])
  end

  it "renders a list of collection_posts" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
