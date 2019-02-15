class Student < ApplicationRecord
  
  #validates_presence_of :name
  #validates_presence_of :register
  #validates_uniqueness_of :register
  #validates_format_of :email, allow_nil: true, allow_blank: true, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
