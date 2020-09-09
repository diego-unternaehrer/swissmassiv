# frozen_string_literal: true

require 'carmen'

module Spree
  module BaseHelper

    def country_selection(restrict_to_zone: Spree::Config[:checkout_zone])
      countries = [Spree::Country.find(43)]

      country_names = Carmen::Country.all.map do |country|
        [country.code, country.name]
      end.to_h

      country_names.update I18n.t('spree.country_names', default: {}).stringify_keys

      countries.collect do |country|
        country.name = country_names.fetch(country.iso, country.name)
        country
      end.sort_by { |country| country.name.parameterize }
    end

  end
end
