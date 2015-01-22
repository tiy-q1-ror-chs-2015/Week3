class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true

  has_many :foods, dependent: :destroy

  def is_open?
    # if the created_at date is <= todays date
    #   then the restaurant is open
    # otherwise
    #   the restaurant is closed
    if self.opening && self.opening <= Date.today
      "Open"
    else
      "Closed"
    end
  end
end
