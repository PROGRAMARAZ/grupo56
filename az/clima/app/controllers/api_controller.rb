# Se crea un controlador especifico para la base.

    class ApiController < ActionController::Base
        before_action :set_default_format
        skip_before_action :verify_authenticity_token, raise: false

    private
    def set_default_format
        request.format = :json
    end
 end
