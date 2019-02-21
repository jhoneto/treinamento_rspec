class Company < ApplicationRecord
  after_create :create_tenant

  validates :name, :subdomain, presence: true
 
  def create_tenant
    Apartment::Tenant.create(subdomain)
  end
end
