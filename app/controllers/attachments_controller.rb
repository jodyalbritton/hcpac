class AttachmentsController < ApplicationController
	def index
		
	end 

	def new
		@production = Production.friendly.find(params[:production_id])
    @attachment = Attachment.new
	end

	def create
	   if params[:production_id]

      @production = Production.friendly.find(params[:production_id])
      @attachment = @production.attachments.create(attachment_params)
    else 
      @attachment = Attachment.create(attachment_params)
    end
   respond_to do |format|
      if @attachment.save
        format.html { redirect_to production_path(@production), notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @production }
      else
        format.html { render :new }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end
  
   def destroy
    @production = Production.friendly.find(params[:production_id])
    @attachment = Attachment.find(params[:id])
    @attachment.destroy
    respond_to do |format|
      format.html { redirect_to production_path(@production) }
      format.json { head :no_content }
    end
  end
  def attachment_params
    params.require(:attachment).permit(:file, :about, :user_id, :imageable_id, :imageable_type)
  end

end
