class Product < ActiveRecord::Base
  belongs_to :category
  has_many :ingredients

  def as_json(options={})
    {:name       => self.name,
     :price         => self.price,
     :ingredients   => self.ingredients }
  end
end
