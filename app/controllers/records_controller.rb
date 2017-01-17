class RecordsController < ApplicationController
 # We don't even want them to see the 'choose_type' page if they can't create
  prepend_before_filter :ensure_can_create, only: :new
  def new
    #unless has_valid_type?
      render 'choose_type'
      return
   # end

   # if params[:pid].present? && !TuftsBase.valid_pid?(params[:pid])
   #   flash.now[:error] = "You have specified an invalid pid. Pids must be in this format: tufts:1231"
   #   render 'choose_type'
   #   return
   # end

   # if ActiveFedora::Base.exists?(params[:pid])
   #   flash[:alert] = "A record with the pid \"#{params[:pid]}\" already exists."
   #   redirect_to hydra_editor.edit_record_path(params[:pid])
   # else
   #     render 'choose_type'
   # end
  end

  private 
  def has_valid_type?
    #HydraEditor.models.include? params[:type]
    true
  end
  def ensure_can_create
#    authorize! :create, ActiveFedora::Baseq
     true
  end
end