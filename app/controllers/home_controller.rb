class HomeController < ApplicationController
  def index
    render json: {
      status: 200,
      params: params,
      time_stamp: Time.now,
      api_status: "READY TO GO!!!!"
    }
  end
end
