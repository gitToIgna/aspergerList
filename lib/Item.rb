class Item
  attr_accessor :name, :id

  @@current_id = 1

  def initialize(name)
    @name = name
    @id = @@current_id
    @@current_id += 1
    @created_at = Time.now
    @updated_at = nil
  end

end
