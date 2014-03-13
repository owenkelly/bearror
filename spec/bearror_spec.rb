require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

include Bearror

describe Bearror do

	

	it "prints out an abbreviated filepath for the error" do
		begin
			classic_raise NameError, "DAMN!"
		rescue => @e
		end
		trim(@e.backtrace)[0].should == %Q{bearror_spec.rb:11:in `block (2 levels) in <top (required)>'}
	end
end