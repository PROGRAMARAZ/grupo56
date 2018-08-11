class Api::V1::LOcationController < ApiController
    
    before_action :set_location, except: [:index, :create]
    def index
        @locations = Location.all
    end

    def show
    #    location_id = params[:id]
    #    @location = Location.find(location_id)
    end

    def create
        location_params = params.require(:location).permit(:name)
        Location.create(name: location_params[:name])
        render status: :created
        # En lo anterior se indicó codigo 201 para indicar que se creó el status.
        # HTTP Status Code, tipos de errores o avisos: 
        # los 200 (correctos) o 100(fallidos) o 300 (redireccion) o 400 (error del cliente, 
        # mal atributo, no existe pagina;  por ejemplo: 422 (env{io datos pero no fueron leídos 
        # los atributos. 404(Not found) Ver archivo completo en Repositorio de GitHub. 500 (Error del servidor, no
        # por nuestra culpa) 
    end

    private
   
def set_location
    location_id = params[:id]
    @location = Location.find(location_id)
end

end

