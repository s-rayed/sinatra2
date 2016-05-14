require 'uri' # Put this at the beginning of your model file

class Message < ActiveRecord::Base

  validates :author, presence: true, length: {minimum: 1, maximum: 25}
  validates_each :url, :allow_blank => true do |record, field, value|
    begin
      valid = (URI.parse(value).scheme =~ /https?/)
    rescue URI::InvalidURIError
      valid = false
    end
    record.errors.add field, "not a valid url" unless valid
end

end
