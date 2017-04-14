class AdminsController < ApplicationController
  before_action :set_offer, only: [:show, :accept, :reject]

  def index
    @admins = current_user.admins
  end

  def show
  end

  def accept
    @admin.status = "Accepted"
    @admin.save
    redirect_to :back
  end

  def reject
    @admin.status = "Rejected"
    @admin.save
    redirect_to :back
  end

  private
  def set_admin
    @admin = Joining.find(params[:id])
  end
end
