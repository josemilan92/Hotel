class OrdenComidasController < InheritedResources::Base

  private

    def orden_comida_params
      params.require(:orden_comida).permit(:product, :total)
    end
end

