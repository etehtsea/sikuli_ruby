require 'spec_helper'

describe Sikuli::Region, "#Typeable" do
  before(:all) do
    app = Sikuli::App.new("TextMate")
    app.focus
    @region = app.window 
  end
  
  context "modifying text input with" do
    it "apple key" do
      @region.type("n", Sikuli::KEY_CMD)
    end
    
    it "shift key" do
      @region.type("this should be lower case")
      @region.type("this should be upper case", Sikuli::KEY_SHIFT)
    end
  end
  
  context "unicode characters" do
    # tell JRuby to run in 1.9 mode
    # http://stackoverflow.com/questions/4755900/how-to-make-jruby-1-6-default-to-ruby-1-9
    it("backspace")   { @region.type(Sikuli::KEY_BACKSPACE * 50) }
    it("return")      { @region.type(Sikuli::KEY_RETURN) }
    xit("up arrow")   { @region.type(Sikuli::UP_ARROW) }
    it("left arrow")  { @region.type(Sikuli::LEFT_ARROW) }
    it("down arrow")  { @region.type(Sikuli::DOWN_ARROW) }
    it("right arrow") { @region.type(Sikuli::RIGHT_ARROW) }
  end
end