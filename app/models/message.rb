class Message < ActiveRecord::Base

  validates :title, presence: true, length: {minimum: 2, maximum: 140}
  validates :author, presence: true, length: {minimum: 1, maximum: 25}

end