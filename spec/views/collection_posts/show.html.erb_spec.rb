require 'rails_helper'

RSpec.describe "collection_posts/show", type: :view do
  before(:each) do
    @collection_post = assign(:collection_post, CollectionPost.create!(
      collection_id: 2,
      post_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
