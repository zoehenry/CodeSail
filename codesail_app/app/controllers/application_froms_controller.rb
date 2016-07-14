class ApplicationFromsController < ApplicationController
  def index
    @applications = ApplicationFrom.all
  end

  def create
    application_from_hash = params.delete('application_from')
    a = ApplicationFrom.new
    a.first_name = application_from_hash['first_name']
    a.last_name = application_from_hash['last_name']
    a.special_power = application_from_hash['special_power']

    if a.save
      redirect_to application_from_path(a.id)
    end
  end

  def new
    @application_from = ApplicationFrom.new
  end

  def edit
    id = params[:id]
    @application_from = ApplicationFrom.find(id)
  end

  def show
    id = params[:id]
    @application = ApplicationFrom.find(id)
  end

  def update
    id = params['id']
    application_from_hash = params.delete('application_from')
    @application = ApplicationFrom.find(id)
    @application.first_name = application_from_hash['first_name']
    @application.last_name = application_from_hash['last_name']
    @application.special_power = application_from_hash['special_power']

    if @application.save
      redirect_to application_from_path(@application.id)
    end
  end

  def destroy
    id = params[:id]
    ApplicationFrom.delete(id)
    flash[:notice] = "You've deleted ApplicationFrom #{id}"
    redirect_to application_froms_path
  end
end
