require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "IgnoreNil" do
  it "should not squash all exceptions" do
    lambda {
      ignore_nil {
        raise Exception.new("I shouldn't be caught")
      }
    }.should raise_error(Exception)
  end
  
  it "should catch nil NoMethodError exceptions" do
    @var = nil
    ignore_nil { nil.doesnt.have.this.method }.should be_nil
    ignore_nil { @var.is.going.to.raise_a.nomethoderror }.should be_nil
    ignore_nil { @var + 2 }.should be_nil
  end
  
  it "should not alter the return value of the block" do
    [1, nil, 'five', Proc.new{}, Object.new].each{|value|
      ignore_nil { value }.should == value
    }
  end
  
  it "should work in nested blocks" do
    ignore_nil {
      [1,2,3,nil].map{|i|
        i * 3
      }
    }.should be_nil
  end
  
  it "should should catch the whiny nil" do
    ignore_nil { raise RuntimeError.new("Called id for nil, which would mistakenly be 4 -- if you really wanted the id of nil, use object_id") }.should be_nil
  end
end
