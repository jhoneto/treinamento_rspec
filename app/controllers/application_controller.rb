class ApplicationController < ActionController::Base
  #before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    return admin_companies_path if resource.class.to_s == "Admin"
    return responsible_home_index_path if resource.class.to_s == "User"
  end

end
