class OrdenestadosController < InheritedResources::Base

  private

    def ordenestado_params
      params.require(:ordenestado).permit(:nombre)
    end
end

