require 'rails_helper'

RSpec.describe "authors/show", :type => :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :name => "Name",
      :date => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
