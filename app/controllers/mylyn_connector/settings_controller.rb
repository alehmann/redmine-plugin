require File.dirname(__FILE__) + '/../../../lib/mylyn_connector'

class MylynConnector::SettingsController < ApplicationController
  unloadable
  include MylynConnector::Rescue::ClassMethods

  accept_key_auth :all
  
  skip_before_filter :verify_authenticity_token

  helper MylynConnector::MylynHelper

  def all
    @settings = Setting

    respond_to do |format|
      format.xml {render :layout => false}
    end
  end
end
