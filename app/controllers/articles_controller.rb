class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def home
  end
end