module Swissmassiv::Product
  # Find the Product's Variant from an array of OptionValue ids
  def is_ski?
    @taxonomies = []
    taxons.each do |taxon|
      @taxonomies << taxon.taxonomy.name
    end
    @taxonomies.include?("ski")
  end

  Spree::Product.prepend self
end
