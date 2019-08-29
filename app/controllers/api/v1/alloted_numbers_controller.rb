module Api
  module V1
    class AllotedNumbersController < ApplicationController
      skip_before_action :verify_authenticity_token

      def create
        @alloted_number = AllotedNumber.new(alloted_number_params)

        if @alloted_number.save
          render json: @alloted_number, serializer: AllotedNumberSerializer, status: :created
        else
          render json: @alloted_number.errors, status: :unprocessable_entity
        end
      end

      private

        def alloted_number_params
          params.require(:alloted_number).permit(:first_name, :last_name, :number)
        end
    end
  end
end
