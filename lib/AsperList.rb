class AsperList
  attr_accessor :lists

  def initialize(user)
    @user = user
    @lists = []
  end

  def add_list(list)
    @lists << list
  end

  def delete_list(list_id)
    @lists.delete_if do |list|
      list.id == list_id.to_i
    end
  end

  def find_list_by_id(list_id)
    id = @lists.index { |list| list.id == list_id.to_i }
    id ? @lists[id] : nil
  end

  def sorted_by_created(direction)
    sorted_lists = @lists.sort { |list1, list2| (direction == "DESC") ? list2.created_at <=> list1.created_at : list1.created_at <=> list2.created_at}
  end

end
