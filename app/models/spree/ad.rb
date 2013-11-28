module Spree
  class Ad < ActiveRecord::Base
    attr_accessible :name, :file_name, :url, :width, :height, :position, :tag, :enabled
  end
end
