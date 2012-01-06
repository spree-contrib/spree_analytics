require "spec_helper"

describe "analytics/_header.html.erb" do

  before :each do
      view.stub(:title => "test",
                :current_order => Spree::Order.new)
  end

  describe "uninitalized" do
    before :each do
      SpreeAnalytics.app_id = nil
      SpreeAnalytics.site_id = nil
      SpreeAnalytics.token = nil
    end

    it "not initialized message" do
      render
      rendered.should match /Spree Analytics has not been initialized correctly/
    end
  end

  describe "initialized" do
    before :each do
      SpreeAnalytics.app_id = 1
      SpreeAnalytics.site_id = 2
      SpreeAnalytics.token = "99"
    end

    it "includes the tags" do
      render
      rendered.should match /jirafe/
    end

    it "includes product tags" do
      assign(:product, Spree::Product.new(:name => 'Ruby Shirt'))
      render
      rendered.should match /Ruby Shirt/
    end
  end
end


