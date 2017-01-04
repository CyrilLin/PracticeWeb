class LanguagesController < ApplicationController

  def index
    @languages = Language.all

    render 'languages/index'
  end


  def show
    @language = Language.find_by_id(params[:id])

    render 'languages/show'
  end
end
