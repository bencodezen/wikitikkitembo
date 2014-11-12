class TikkiPagesController < ApplicationController
  def index
    @tikki_pages = TikkiPage.all
  end

  def show
    @tikki_page = TikkiPage.find(params[:id])
  end

  def new
    @tikki_page = TikkiPage.new
  end

  def create
    @tikki_page = TikkiPage.new(tikki_page_params)
    if @tikki_page.save
      redirect_to @tikki_page
    else
      redirect_to root_path
    end
  end

  def edit
    @tikki_page = TikkiPage.find(params[:id])
  end

  def update
    @tikki_page = TikkiPage.find(params[:id])
    if @tikki_page.update_attributes(tikki_page_params)
      redirect_to @tikki_page
    else
      redirect_to root_path
    end
  end

  private

  def tikki_page_params
    params.require(:tikki_page).permit(:title, :body)
  end
end
