require 'spec_helper'

describe "Static pages" do

let(:base_title) { "Ruby on Rails Tutorial Sample App" }
subject { page }

  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

	describe "About page" do
    before { visit about_path }
    
    it { should have_content('About Us') }
  	it { should have_title(full_title('About Us')) }
  end

  describe "Contact Page" do
    before {visit contact_path }
    
    it { should have_selector('h1', text: 'Contact') }
  	it { should have_title(full_title('Contact')) }
  end


end

