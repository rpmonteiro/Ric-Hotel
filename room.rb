class Room

  attr_reader :type, :price_per_night, :max_occupancy
  attr_accessor :occupied

  def initialize(params)
    @type = params[:type]
    @price_per_night = params[:price_per_night]
    @max_occupancy = params[:max_occupancy]
    @occupied = params[:occupied]
  end


end