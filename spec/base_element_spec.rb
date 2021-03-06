require File.dirname(__FILE__) + '/watirspec/spec_helper'

describe Watir::BaseElement do

  before :each do
    browser.goto("file://" + File.expand_path("html/keylogger.html", File.dirname(__FILE__)))
  end

  describe "#send_keys" do
    it "sends keystrokes to the element" do
      browser.div(:id, 'receiver').send_keys("hello world")
      browser.div(:id, 'output').ps.size.should == 11
    end
  end

end
