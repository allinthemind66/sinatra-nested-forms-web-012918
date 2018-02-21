class Ship
  attr_accessor :name, :type, :booty
  ALL = []
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    ALL << self
  end
  def self.all
    ALL
  end

  def self.clear
    ALL.clear
  end
end
