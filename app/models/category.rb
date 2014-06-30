class Category < ActiveRecord::Base
  has_many :products
  belongs_to :restaurant

  def as_json(options={})
    {:type       => self.name,
     :products         => self.products}
  end
end
