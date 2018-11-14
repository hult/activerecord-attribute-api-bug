class MyStruct < Struct.new(:data)
end

class MyType < ActiveRecord::Type::Value
  def cast(value)
    if value.is_a? MyStruct
      value
    else
      MyStruct.new(value)
    end
  end

  def deserialize(value)
    MyStruct.new(value)
  end

  def serialize(value)
    if value.is_a? MyStruct
      value[:data]
    else
      value
    end
  end
end
