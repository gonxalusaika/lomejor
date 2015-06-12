class AdminController < ApplicationController
	http_basic_authenticate_with name: ENV["LM_LOGIN"], password: ENV["LM_PASS"]
  def index
  end
end
