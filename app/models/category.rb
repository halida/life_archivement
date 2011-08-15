class Category < ActiveRecord::Base
  belongs_to :category
  has_many :archivements
end
