# Fat Models, Skinny Controllers
class Food < ActiveRecord::Base
  # restaurant_id - integer
  belongs_to :restaurant

  EXPIRED_OPTIONS = [
    ["True", true],
    ["False", false]
  ]

end
