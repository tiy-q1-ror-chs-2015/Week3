# Fat Models, Skinny Controllers
class Food < ActiveRecord::Base
  EXPIRED_OPTIONS = [
    ["True", true],
    ["False", false]
  ]

end
