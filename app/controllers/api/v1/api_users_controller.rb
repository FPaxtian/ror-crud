    class Api::V1::ApiUsersController < ApplicationController
        skip_before_action :verify_authenticity_token
        def index
            begin
                users = User.all
            rescue 
                render json: users.errors, status: 404
            else
                render json: users, status: 200
            end
        end

        def show
            begin
                users = User.find(params[:id])
            rescue 
                render json: users.errors, status: 404
            else
                render json: users, status: 200
            end
        end

        def create
            begin
                users = User.new(api_user_params)
                users.save
            rescue
                render json: users.errors, status: 404
            else
                render json: users, status: 200
            end
        end

        def destroy
            begin
                users = User.find(params[:id])
                users.destroy
            rescue 
                render json: users.errors, status: 404
            else
                render json: users, status: 200
            end
        end

        def update
            begin
                apiUsers = User.find(params[:id])
                apiUsers.update(api_user_params)
            rescue 
                render json: users.errors, status: 404
            else
                render json: users, status: 200
            end
        end

        private
        def api_user_params
            params.permit(:users_name, :email, :password, :type_users)
        end
    end     
