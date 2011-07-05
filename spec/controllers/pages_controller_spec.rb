require 'spec_helper'

describe PagesController do
render_views

before(:each) do
	#
	 #define @base_title here
	#
end

  describe "get 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
	    get 'home'
	    response.should have_selector("title",
					  :content => @base_title + " | home")
    end
  end

  describe "get 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
     it "should have the right title" do
	    get 'contact'
	    response.should have_selector("title",
					  :content => @base_title + " | contact")
    end
  end
  describe "GET 'about" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
     it "should have the right title" do
	    get 'about'
	    response.should have_selector("title",
					  :content => @base_title + " about")
    end
  end

end
