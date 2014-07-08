require 'rails_helper'

RSpec.describe "post_comments/edit", :type => :view do
  before(:each) do
    @post_comment = assign(:post_comment, PostComment.create!(
      :content => "MyText",
      :post => nil,
      :user => nil
    ))
  end

  it "renders the edit post_comment form" do
    render

    assert_select "form[action=?][method=?]", post_comment_path(@post_comment), "post" do

      assert_select "textarea#post_comment_content[name=?]", "post_comment[content]"

      assert_select "input#post_comment_post_id[name=?]", "post_comment[post_id]"

      assert_select "input#post_comment_user_id[name=?]", "post_comment[user_id]"
    end
  end
end
