class ApiKeysController < ApplicationController

    private

    def api_key_params
        params.require(:api_key).permit(:type, :api_key)
    end
end