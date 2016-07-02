require 'pry'

class GildedRose
   attr_reader :name, :quality, :days_remaining
  

  def initialize(name, quality, days_remaining)
    @name, @quality, @days_remaining = name, quality, days_remaining
  end

  def tick
    if @name == "normal" && @quality  > 0
      if @days_remaining > 0 
        @quality -= 1
      else
        @quality -= 2
      end
    end
    if @name == "Aged Brie" && @quality < 50
      @quality += 1 
      @quality += 1 if @days_remaining <= 0
    end

    if @name == 'Backstage passes to a TAFKAL80ETC concert' && @quality <= 50
      if @days_remaining > 0
        if @quality > @days_remaining
          @quality += 3 
          @quality -= 1 if @days_remaining > 5
        elsif @quality < @days_remaining
          @quality += 1
        else
          @quality += 2
        end
      else
        @quality = 0
      end
    end

    @days_remaining -= 1 unless @name == 'Sulfuras, Hand of Ragnaros'
  end



end
