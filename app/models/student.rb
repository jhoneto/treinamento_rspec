class Student < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :register
end
