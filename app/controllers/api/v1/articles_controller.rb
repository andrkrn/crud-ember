class Api::V1::ArticlesController < Api::V1::ApplicationController

  before_filter :set_article, only: [:show, :update, :destroy]

  def index
    render json: Article.order("created_at desc")
  end

  def show
    render json: Article.find(params[:id])
  end

  def create
    @article = Article.create(create_params)
    if @article.new_record?
      render json: { errors: @article.errors.map.each{|k, v| k.to_s + ' ' + v} }, status: 422
    else
      render json: @article, status: 201
    end
  end

  def update
    if @article.update_attributes(update_params)
      render json: @article
    else
      render json: {error: @article.errors}, status: 422
    end
  end

  def destroy
    @article.destroy
    head :ok
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def create_params
    params.require(:article).permit(:title, :body)
  end
  alias_method :update_params, :create_params
end
