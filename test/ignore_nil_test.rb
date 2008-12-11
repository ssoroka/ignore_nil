require 'test/unit'
require File.join(File.dirname(__FILE__), %w(.. lib ignore_nil))

class IgnoreNilTest < Test::Unit::TestCase
  def test_ignore_nil_doesnt_squish_various_exceptions
    assert_raises(Exception) {
      ignore_nil {
        raise Exception.new("I shouldn't be caught")
      }
    }
  end

  def test_ignore_nil_catches_nil_nomethoderror_exceptions
    @var = nil
    assert_nil ignore_nil { nil.doesnt.have.this.method }
    assert_nil ignore_nil { @var.is.failable }
    assert_nil ignore_nil { @var + 2 }
  end

  def test_ignore_nil_doesnt_alter_return_values
    [1, nil, 'five', Proc.new{}, Object.new].each{|value|
      assert_equal value, (ignore_nil { value })
    }
  end
  
  def test_from_inside_map
    assert_nil ignore_nil { [1,2,3,nil].map{|i| i * 3 } }
  end

  def test_whiny_nil
    assert_nil ignore_nil { raise RuntimeError.new("Called id for nil, which would mistakenly be 4 -- if you really wanted the id of nil, use object_id") }
  end
end