class RegistersController < ApplicationController
  #before_action :authenticate_user!

  def new
    @register = Register.new
    @event = Event.find(params[:event_id])
    @register.event = @event
  end

  def create
    @event = Event.find(register_params[:event_id])

    @register = Register.new(register_params)
    respond_to do |format|
      if @register.save
        format.html { redirect_to root_path, notice: 'register criada com sucesso' }
      else
        format.html { render :new, error: 'Não foi possível criar a register'}
      end
    end
  end

  private

  def register_params
    params.require(:register).permit(:name, :cpf, :email, :phone, :event_id)
  end

end
