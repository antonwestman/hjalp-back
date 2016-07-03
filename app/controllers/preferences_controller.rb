class PreferencesController < ApplicationController


  def index
    pref = Preference.where(user_id: params[:user_id]).first_or_create
    respond json: pref
  end

end
