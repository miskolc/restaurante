class Restaurant < ActiveRecord::Base
  has_many :categories

  def as_json(options={})
    {:name       => self.name,
     :address         => self.address,
     :phone        => self.phone_number,
     :categories               => self.categories}
  end
end
