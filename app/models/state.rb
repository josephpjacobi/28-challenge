class State < ApplicationRecord
  def attributes
    {
      id: self.full_name,
      "data-service_offered": self.service_offered,
      "data-age": self.minimum_age
    }
  end
end
