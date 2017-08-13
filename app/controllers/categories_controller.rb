class CategoriesController < InheritedResources::Base

  layout 'admin'
  private

    def category_params
      params.require(:category).permit(:name)
    end
end

