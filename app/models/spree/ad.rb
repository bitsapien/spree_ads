module Spree
  class Ad < ActiveRecord::Base
    attr_accessible :category, :enabled, :name, :file_name, :position, :url
  end
end
