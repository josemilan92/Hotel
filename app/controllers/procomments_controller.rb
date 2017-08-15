class ProcommentsController < ApplicationController
  before_action :set_procomment, only: [:show, :edit, :update, :destroy]

  layout 'virtual'
  def artista
  end
  def artista1
  end
  def artista2
  end
  def doble
  end
  def new
    @procomment = Procomment.new
  end

  # POST /procomments
  # POST /procomments.json
  def create
    @procomment = current_user.comments.new(procomment_params)
    @procomment.promotion = @promotions
    respond_to do |format|
      if @procomment.save
        format.html { redirect_to @promotions, notice: 'Procomment was successfully created.' }
        format.json { render :show, status: :created, location: @procomment.promotion }
      else
        format.html{render action: "new"}
        format.json{render json:@procomment.errors, status: :unprocessable_entity}
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procomment
      @procomment = Procomment.find(params[:id])
    end
  def set_promotion
    @promotions= Promotion.find(params[:promotion_id])
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def procomment_params
      params.require(:procomment).permit(:promotion_id, :texto, :user_id)
    end
end
