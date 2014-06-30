class Ingredient < ActiveRecord::Base
  belongs_to :product

  def as_json(options={})
    { :name       => self.name }
  end
end
