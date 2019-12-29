class Hero
  attr_reader :name, :power, :biography
  
  @@all = []
 
  def initialize(params)
    @name = params[:name]
    @weight = params[:power]
    @height = params[:biography]
    @@all << self
  end
 
  def self.all
    @@all
  end
 
end