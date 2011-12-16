class PagesController < ApplicationController
  def home
  	@corporations = Corporation.find_by_supports_sopa(true)
  	@boycott = Corporation.find_by_id(params[:corporation_id]) unless params[:corporation_id].nil?
  	@alternatives = @boycott.alternatives unless @boycott.nil?
  	@alternative = Corporation.new
  	@petition = Petition.new
  end

  def about
  end

  def developer
  end

  def contact
  end

end
