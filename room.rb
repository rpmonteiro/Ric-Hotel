class Rooms

  attr_reader :type, :price_per_night, :max_occupancy
  def initialize(params)
    @type = params[:type]
    @price_per_night = params[:price_per_night]
    @max_occupancy = params[:max_occupancy]
  end

  

end