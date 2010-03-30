require 'spec_helper'

describe "/items/index.html.erb" do
  include ItemsHelper

  before(:each) do
    assigns[:items] = [
      stub_model(Item,
        :title => "value for title"
      ),
      stub_model(Item,
        :title => "value for title"
      )
    ]
  end

  it "renders a list of items" do
    render
    response.should have_tag("tr>td", "value for title".to_s, 2)
  end
end
