require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Rose'" do
      visit '/static_pages/home'
      expect(page).to have_content('Rose')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Rose")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the base title" do
      visit '/static_pages/help'
      expect(page).to have_title("Rose")
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      expect(page).not_to have_title('| Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Rose'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Rose')
    end

    it "should have the base title" do
      visit '/static_pages/about'
      expect(page).to have_title("Rose")
    end

    it "should not have a custom page title" do
      visit '/static_pages/about'
      expect(page).not_to have_title('| About Rose')
    end
  end
end
