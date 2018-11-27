require "pry"

class Hash
  def keys_of(arguments, *more_args)
    # binding.pry
    array = []
    self.map do |k, v|
      if v == arguments || v == more_args
        array.push(k)
      end
    end
    array
  end
end