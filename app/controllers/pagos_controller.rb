class PagosController < InheritedResources::Base

  layout 'admin'
  private

    def pago_params
      params.require(:pago).permit(:name)
    end
end

