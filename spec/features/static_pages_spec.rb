require 'spec_helper'

describe "StaticPages" do
  
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: "Dwell Candy Project Management") }
    it { should have_selector('title', text: "Dwell Candy Project Management") }

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      before do
        sign_in user
        visit root_path
      end

      describe "should show the user's name" do
        it { should have_selector('h1', text: "Hello #{user.first_name}") }
      end
    end
  end
end