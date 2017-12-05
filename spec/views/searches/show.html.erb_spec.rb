require 'rails_helper'

RSpec.describe "searches/show", type: :view do
  before(:each) do
    @search = assign(:search, Search.create!(
      :nome => "Zelda",
      :desenvolvedora => "Nintendo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to have_content("No Records Found")

  end
end
