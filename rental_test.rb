require_relative 'movie'
require_relative 'rental'
require_relative 'customer'
require 'minitest/autorun'

describe "Movie rentals" do
  def setup
    @c = Customer.new("Jane")
    @m1 = RegularMovie.new("1984")
    @m2 = NewMovie.new("Platoon")
    @c.add_rental(@m1, 2)
    @c.add_rental(@m2, 3)
  end

  it "correctly does statement" do
    stmt = @c.statement
    stmt.must_equal("Rental Record for Jane\n\t1984\t2\n\tPlatoon\t9\nAmount owed is 11\nYou earned 3 frequent renter points")
  end
end
