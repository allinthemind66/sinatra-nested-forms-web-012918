class Pirate
  attr_accessor :name, :weight, :height

  ALL = []
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    ALL << self
  end

  def self.all
    ALL
  end
end
