module Api
    class ApiUsersController < ApplicationController
        skip_before_action :verify_authenticity_token
        def index
            apiUsers = ApiUser.order('created_at');
            render json: {
                status: 'exitoso',
                message: 'Usuarios cargados',
                data: apiUsers
            }, status: :ok
        end

        def show
            apiUsers = ApiUser.find(params[:id]);
            render json: {
                status: 'exitoso',
                message: 'Usuario cargado',
                data: apiUsers
            }, status: :ok
            
        end

        def create
            apiUsers = ApiUser.new(api_user_params);
            if apiUsers.save
                render json: {
                    status: 'exitoso',
                    message: 'Usuario creado',
                    data: apiUsers
                }, status: :ok
            else
                render json: {
                    status: 'fallido',
                    message: 'Usuario no creado',
                    data: apiUsers.errors
                }, status: :unprocessable_entity
            end
        end
        
        def destroy
            apiUsers = ApiUser.find(params[:id]);
            if apiUsers.destroy
                render json: {
                    status: 'exitoso',
                    message: 'Usuario eliminado',
                    data: apiUsers
                }, status: :ok
            else
                render json: {
                    status: 'fallido',
                    message: 'Usuario no eliminado',
                    data: apiUsers.errors
                }, status: :unprocessable_entity
            end
        end

        def update
            apiUsers = ApiUser.find(params[:id]);
            if apiUsers.update(api_user_params)
                render json: {
                    status: 'exitoso',
                    message: 'Usuario actualizado',
                    data: apiUsers
                }, status: :ok
            else
                render json: {
                    status: 'fallido',
                    message: 'Usuario no actualizado',
                    data: apiUsers.errors
                }, status: :unprocessable_entity
            end
        end

        private
        def api_user_params
            params.permit(:name, :email, :password, :user_type)
        end
    end 
end