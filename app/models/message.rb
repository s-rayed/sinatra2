class Message < ActiveRecord::Base

  validates :author, presence: true, length: {minimum: 1, maximum: 25}

end