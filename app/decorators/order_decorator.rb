module Swissmassiv::OrderDecorator

  def contain_skis?
    @taxonomies = []
    line_items.each do |line_item|
      line_item.product.taxons.each do |taxon|
        @taxonomies << taxon.taxonomy.name
      end
    end
    @taxonomies.include?("ski")
  end

  def contain_binding?
    require 'set'
    @taxons = []
    line_items.each do |line_item|
      line_item.product.taxons.each do |taxon|
        @taxons << taxon.permalink
      end
    end
    @permalinks = ["zubehoer/bindings-allmountain", "zubehoer/bindings-others"]
    @taxons.to_set.intersect?(@permalinks.to_set)
  end

  Spree::Order.prepend self
end


