class Guest

  attr_accessor :tab, :roommates
  attr_reader :name

  def initialize(params)
    @name = params[:name]
    @roommates = params[:roommates]
    @tab = params[:tab]
  end

end