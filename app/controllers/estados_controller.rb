class EstadosController < InheritedResources::Base

  private

    def estado_params
      params.require(:estado).permit(:estados, :nombre)
    end
end

