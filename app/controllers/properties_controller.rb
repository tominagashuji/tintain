class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
    NearestStation::FORM_COUNT.times { @property.nearest_stations.build }
  end

  def edit
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to @property, notice: I18n.t("layout.property.notice_create")
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to @property, notice: I18n.t("layout.property.notice_update")
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_url, notice: I18n.t("layout.property.notice_destroy")
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:name, :price, :address, :age, :remarks,
                                       nearest_stations_attributes: [:id, :line, :name, :walking_minutes])
    end
end
