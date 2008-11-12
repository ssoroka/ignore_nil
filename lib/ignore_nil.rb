module IgnoreNil
  def ignore_nil(&block)
    begin
      yield
    rescue NoMethodError => e
      if (e.message =~ /You have a nil object when you didn't expect it/) ||
          (e.message =~ /undefined method `.*?' for nil:NilClass/) || (e.message =~ /^Called id for nil/)
        return nil
      else
        raise e
      end
    end
  end
  alias :ignore_nils :ignore_nil
  alias :quiet_nil :ignore_nil
  alias :ignore_no_method_on_nil :ignore_nil
end

Object.send(:include, IgnoreNil)