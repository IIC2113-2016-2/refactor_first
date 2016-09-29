# A movie that can be rented
class Movie

  attr_reader :title, :price_code

  def initialize(title)
    @title = title
  end 
  
  def get_amount(days_rented)
  end
end

class RegularMovie < Movie
  def initialize
    super
    @price_code = 0
  end
  
  def get_amount(days_rented)
    this_amount += 2
    this_amount += (days_rented - 2) * 1.5 if days_rented > 2
    this_amount
  end
end

class NewMovie < Movie
  def initialize
    super
    @price_code = 1
  end
  
 def get_amount(days_rented)
  this_amount += days_rented * 3
  this_amount
 end
end

class ChildrensMovie < Movie
  def initialize
    super
    @price_code = 2
  end
  
 def get_amount(days_rented)
  this_amount += 1.5
  this_amount += (days_rented - 3) * 1.5 if days_rented > 3
  this_amount
  end
end
  
