class QueriesController < ApplicationController
  
  def create
    query_string = params[:query]
    result = BlogSchema.execute(query_string)
    render json: result
  end

end