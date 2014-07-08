require 'rails_helper'

RSpec.describe "post_comments/new", :type => :view do
  before(:each) do
    assign(:post_comment, PostComment.new(
      :content => "MyText",
      :post => nil,
      :user => nil
    ))
  end

  it "renders new post_comment form" do
    render

    assert_select "form[action=?][method=?]", post_comments_path, "post" do

      assert_select "textarea#post_comment_content[name=?]", "post_comment[content]"

      assert_select "input#post_comment_post_id[name=?]", "post_comment[post_id]"

      assert_select "input#post_comment_user_id[name=?]", "post_comment[user_id]"
    end
  end
end
