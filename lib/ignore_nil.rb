module IgnoreNil
  # ignore NoMethodError on nil
  def ignore_nil(&block)
    begin
      yield
    rescue NoMethodError, RuntimeError => e
      if (e.message =~ /You have a nil object when you didn't expect it/) ||
          (e.message =~ /undefined method `.*?' for nil:NilClass/) || (e.message =~ /^Called id for nil/)
        return nil
      else
        raise e
      end
    end
  end
end

Object.send(:include, IgnoreNil)