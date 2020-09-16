module Swissmassiv::OrderDecorator

  def contain_skis?
    require 'set'
    @taxons = []
    line_items.each do |line_item|
      line_item.product.taxons.each do |taxon|
        @taxons << taxon.name
      end
    end
    @skis = ["Allrounder", "Allmountain", "Slalom Carver", "Slalom Race Carver"]
    @taxons.to_set.intersect?(@skis.to_set)
  end

  def contain_binding?
    require 'set'
    @taxons = []
    line_items.each do |line_item|
      line_item.product.taxons.each do |taxon|
        @taxons << taxon.name
      end
    end
    @taxons.include?("Bindung")
  end

  Spree::Order.prepend self
end
