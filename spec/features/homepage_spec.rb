require 'spec_helper'

describe "homepage", :js => true do
  before(:each) do
    Category.create(title: "Random Category Title")
    Post.create(title: "New Post", body: "New post body", location: "SF", category_id: 1)
  end
  it "shows me all the category titles" do
    visit root_path
    expect(page).to have_content("New Post")
  end
end

describe "viewing a particular category", :js => true do

end