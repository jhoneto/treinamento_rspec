class Register < ApplicationRecord

  belongs_to :event

  validates_presence_of :name
  validates_presence_of :cpf
  validates_presence_of :email
  validates_presence_of :phone

  after_create :set_initial_status

  def set_initial_status
    self.status = 'open'
  end
end
