class List
  attr_accessor :items, :content, :id

  @@current_id = 1

  def initialize(title)
    @title = title
    @content = []
    @items = []
    @id = @@current_id
    @@current_id += 1
    @complete = false
    @created_at = Time.now
    @updated_at = nil
  end

  def add_item(item)
    @items << item
  end

  def delete_item(item_id)
    @items.delete_if do |item|
      item.id == item_id.to_i
    end
  end

  def find_item_by_id(item_id)
    id = @items.index { |item| item.id == item_id.to_i }
    id ? @items[id] : nil
  end

  def complete?
    @complete
  end

  def complete!
    @updated_at = Time.now
    @complete = true
  end

  def make_incomplete!
    @updated_at = Time.now
    @complete = false
  end

  def updated_content!(content)
    @content = content
  end
end
