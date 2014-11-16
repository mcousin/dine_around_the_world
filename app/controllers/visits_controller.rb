class VisitsController < ActionController::Base
  protect_from_forgery    

  def index
    @visits = Visit.all
    respond_to do |format|
      format.html
    end
  end  
  
  def show
    @visit = Visit.find(params[:id])
    
    respond_to do |format|
      format.html
    end
  end

  def new
    @visit = Visit.new
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @visit=Visit.new(params[:visit])
    
    respond_to do |format|
      if @visit.save
        format.html { redirect_to @visit, notice: 'Chancellor was successfully created.' }
      else
        format.html { render action: "show" }
      end
    end
  end
end
