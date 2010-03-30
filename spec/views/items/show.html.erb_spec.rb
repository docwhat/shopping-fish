require 'spec_helper'

describe "/items/show.html.erb" do
  include ItemsHelper
  before(:each) do
    assigns[:item] = @item = stub_model(Item,
      :title => "value for title"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
  end
end
