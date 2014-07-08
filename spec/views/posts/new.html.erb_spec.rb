require 'rails_helper'

RSpec.describe "posts/new", :type => :view do
  before(:each) do
    assign(:post, Post.new(
      :title => "MyString",
      :link_url => "MyString",
      :notes => "MyText",
      :user => nil,
      :category => nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "input#post_link_url[name=?]", "post[link_url]"

      assert_select "textarea#post_notes[name=?]", "post[notes]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_category_id[name=?]", "post[category_id]"
    end
  end
end
