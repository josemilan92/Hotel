class ComidasController < InheritedResources::Base


  # GET /hotels/new
  def new
    @comida = Comida.new
    if session[:cart] then
      @cart=  session[:cart]
    else
      cart ={}
    end
  end

  # GET /hotels/1/edit
  def edit
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @comida = Comida.new(comida_params)

    respond_to do |format|
      if @comida.save
        session[:cart]= nil
        format.html { redirect_to mysend_path, notice: 'Orden creada.' }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @comida.errors, status: :unprocessable_entity }
      end
    end
  end
  private

    def comida_params
      params.require(:comida).permit(:description, :total)
    end
end

