class PropertyCountriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_property

  def index
    # TODO: Stub for future optimized country report
    # @countries = @property.country_report(@start_date, @end_date).to_hash
    @countries = []
  end

  private

  def set_property
    @property = if authorized_user.can_admin_system?
      Property.find(params[:property_id])
    else
      current_user.properties.find(params[:property_id])
    end
  end
end
