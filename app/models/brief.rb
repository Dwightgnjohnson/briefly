class Brief < ActiveRecord::Base
  belongs_to :user
  validates :brief, presence: true, length: {maximum:100, minimum: 1}
end
