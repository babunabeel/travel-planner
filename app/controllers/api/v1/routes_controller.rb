class Api::V1::RoutesController < ApplicationController
  
  def index
    result = GoogleRoute.new(params[:origin], params[:destination]).find()
    # here we can do our db stuff to save routes of our local db
    
    render json: {routes: result}
  end
end
