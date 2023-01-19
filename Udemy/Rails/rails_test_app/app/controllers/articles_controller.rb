class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    set_article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create
    set_article = Article.new(article_params)

    respond_to do |format|
      if set_article.save
        format.html { redirect_to article_url(set_article), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: set_article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: set_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if set_article.update(article_params)
        format.html { redirect_to article_url(set_article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: set_article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: set_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    set_article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      set_article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
