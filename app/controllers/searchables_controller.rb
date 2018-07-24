class SearchablesController < ApplicationController
  def features
    @features = if params[:search].present?
                  Feature.search_features(params[:search])
                else
                  Feature.search_features
                end

    respond_to do |format|
      format.json { render json: { features: @features.map { |x| { id: x.id, text: x.name.to_s } } } }
    end
  end

  def functions
    @functions = if params[:search].present?
                   Function.search_functions(params[:search])
                 else
                   Function.search_functions
                 end

    respond_to do |format|
      format.json { render json: { functions: @functions.map { |x| { id: x.id, text: x.name.to_s } } } }
    end
  end
end
