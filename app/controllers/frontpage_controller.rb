class FrontpageController < ApplicationController
  def index
  end

  def approve_org
    org = Organization.find(params[:id])
    org.approved = true
    if org.save
      flash[:notice] = "#{org.orgname} approved"
    else
      # flash[:alert] = "#{org.orgname} approval failure"
    end
    redirect_to '/admin'
   end
end
