FactoryGirl.define do

  factory :ad, :class => Spree::Ad do
    name "My Ad"
    file_name "my_ad.jpg"
    category 1
    position 1
    enabled true
  end

end
