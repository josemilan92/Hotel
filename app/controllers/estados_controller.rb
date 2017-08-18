class EstadosController < InheritedResources::Base

  layout 'admin'
  private

    def estado_params
      params.require(:estado).permit(:estados, :nombre)
    end
end

