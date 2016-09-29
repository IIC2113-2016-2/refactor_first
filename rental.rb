# A rental event
class Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end

  def get_amount
    this_amount = 0
    case @movie.price_code
    when Movie::REGULAR
      this_amount += 2
      this_amount += (@days_rented - 2) * 1.5 if @days_rented > 2
    when Movie::NEW_RELEASE
      this_amount += @days_rented * 3
    when Movie::CHILDRENS
      this_amount += 1.5
      this_amount += (@days_rented - 3) * 1.5 if @days_rented > 3
    end
    return this_amount
  end

  def get_bono
      if @movie.price_code == Movie::NEW_RELEASE && @days_rented > 1
          return  1
      end
      return 0
  end

  def get_movie_statement
    total_amount, frequent_renter_points = 0, 0
    this_amount = self.get_amount
    frequent_renter_points += 1
    frequent_renter_points += self.get_bono

    # show figures for this rental
    result = "\t" + @movie.title + "\t" + this_amount.to_s + "\n"
    total_amount += this_amount
    return total_amount, frequent_renter_points, result
  end

end
