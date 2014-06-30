module Api
  module V1
    class RestaurantsController < ApplicationController
      respond_to :json

      def index
        respond_with Restaurant.all
      end
    end
  end
end