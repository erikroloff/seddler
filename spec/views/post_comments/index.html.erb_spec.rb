require 'rails_helper'

RSpec.describe "post_comments/index", :type => :view do
  before(:each) do
    assign(:post_comments, [
      PostComment.create!(
        :content => "MyText",
        :post => nil,
        :user => nil
      ),
      PostComment.create!(
        :content => "MyText",
        :post => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of post_comments" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
