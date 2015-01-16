class ReqsController < ApplicationController

  def index
    @reqs = Req.all
  end

  def new
    @req = Req.new 
  end

  def create
    @req = Req.new req_params
      if @req.save
        redirect_to reqs_path
      else
        render :new
      end
  end

  def update
    @req = Req.find params[:id]
    if @req.update req_params
       redirect_to req_path
    else
      render :edit
    end
  end

  def show
    @req = Req.find params[:id]
  end

  def edit
    @req = Req.find params[:id]
  end

  def destroy
    @req = Req.find params[:id]
    @req.destroy
    redirect_to reqs_path
  end

  private

    def req_params
      params.require(:req).permit(:name, :email, :department, :message)
    end

end