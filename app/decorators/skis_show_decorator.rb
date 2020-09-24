module Swissmassiv::Product
  # Find the Product's Variant from an array of OptionValue ids
  def is_ski?
    require 'set'
    @taxons = []
    taxons.each do |taxon|
      @taxons << taxon.name
    end
    @skis = ["Allrounder", "Allmountain", "Slalom Carver", "Slalom Race Carver"]
    @taxons.to_set.intersect?(@skis.to_set)
  end

  Spree::Product.prepend self
end
