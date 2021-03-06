require 'rails_helper'

RSpec.describe "libraries/show", :type => :view do
  before(:each) do
    @library = assign(:library, Library.create!(
      :name => "Name",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
  end
end
