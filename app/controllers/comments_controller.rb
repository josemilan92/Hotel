class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update,:destroy]
  before_action :authenticate_user!
  before_action :set_hotel

  def new
    @comment = Comment.new
  end

  def create
    #@hotel = Hotel.find(params[:hotel_id])
    @comment = current_user.comments.new(comment_params)
    @comment.hotel = @hotel
    respond_to do |format|
      if @comment.save
        format.html{redirect_to @hotel, notice: 'Comment was suceessfully created'}
        format.json{render json: @comment, status: :created, location: @comment.hotel}
      else
        format.html{render action: "new"}
        format.json{render json:@comment.errors, status: :unprocessable_entity}
      end
    end
  end
  private
  def set_comment
    @comment = Comment.find(params[:id])
  end
  def set_hotel
    @hotel= Hotel.find(params[:hotel_id])
  end
  def comment_params
    params.require(:comment).permit(:user_id, :hotel_id, :body, :texto)
  end
end
