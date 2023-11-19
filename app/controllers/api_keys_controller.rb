class ApiKeysController < ApplicationController
    def show
        @api_key = ApiKey.find(params[:id])
        render json: @api_key
    end

    def create
        @api_key = ApiKey.new(api_key_params)
        if @api_key.save
            render json: @api_key, status: created
        else
            render json: @api_key.errors, status: :unprocessable_entity
        end
    end

    def update
        @api_key = ApiKey.find(params[:id])
        if @api_key.update(api_key_params)
            render json: @api_key
        else
            render json: @api_key.errors, status: unproccesable_entity
        end
    end

    private

    def api_key_params
        params.require(:api_key).permit(:type, :api_key)
    end
end