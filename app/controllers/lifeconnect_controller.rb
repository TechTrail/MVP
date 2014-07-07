class LifeconnectController < ApplicationController
def new
 @bloodbank = Bloodbank.all;
end
def search
    logger = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))
    bloodcomponentid = params[:lifeconnect][:bloodcomponentid]
    bloodgroupid = params[:lifeconnect][:bloodgroupid]
    city = params[:lifeconnect][:city]

    @bloodstocks = Bloodstock.joins(:bloodbank).where(bloodbanks: {city: city}, bloodstocks: {bloodcomponentid: bloodcomponentid, bloodgroupid: bloodgroupid}).order("bloodbanks.name asc")

end

private
  
  def article_params
    params.require(:lifeconnect).permit(:bloodcomponentid, :bloodgroupid, :city)
  end

end
