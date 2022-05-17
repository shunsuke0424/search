module Api
  module V1
    class PostsController < ApplicationController
      def index
        render json: 'Hello Rails'
      end
    end
  end
end