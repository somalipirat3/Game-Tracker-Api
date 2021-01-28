class HomeController < ApplicationController
  def index
    render json: {
      status: 200,
      params: params,
      time_stamp: Time.now,
      api_status: "API READY TO GO!!!!"
    }
  end
end
