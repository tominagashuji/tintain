class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.order(:name).limit(Property::INDICATE_MAXIMUM)
  end

  def show
  end

  def new
    @property = Property.new
    NearestStation::FORM_COUNT.times { @property.nearest_stations.build }
  end

  def edit
    possible_create_stations_count = NearestStation::FORM_COUNT - @property.nearest_stations.count
    possible_create_stations_count.times { @property.nearest_stations.build }
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to @property, notice: t("layout.property.notice_create")
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to @property, notice: t("layout.property.notice_update")
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_url, notice: t("layout.property.notice_destroy")
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:name, :rent, :address, :age, :remarks,
                                       nearest_stations_attributes: [:id, :line, :name, :walking_minutes])
    end
end
