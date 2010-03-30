require 'spec_helper'

describe "/items/edit.html.erb" do
  include ItemsHelper

  before(:each) do
    assigns[:item] = @item = stub_model(Item,
      :new_record? => false,
      :title => "value for title"
    )
  end

  it "renders the edit item form" do
    render

    response.should have_tag("form[action=#{item_path(@item)}][method=post]") do
      with_tag('input#item_title[name=?]', "item[title]")
    end
  end
end
