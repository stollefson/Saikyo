require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

  it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Saikyo Dojo: Bar and Grill")
    end
  it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

 describe "About page" do

    it "should have the content 'About Saikyo'" do
      visit '/static_pages/about'
      expect(page).to have_content('Why Am I Here')
    end

    it "should have the title 'Why Am I Here?'" do
      visit '/static_pages/about'
      expect(page).to have_title("Forgetting Something? | Why Am I Here?")
    end
  end
end
