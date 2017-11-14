class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :default_format_json

  def index
    render json: params.as_json
  end

  def create
    puts params

    render json: params.as_json
  end

  def default_format_json
    request.format = 'json'
  end
end
