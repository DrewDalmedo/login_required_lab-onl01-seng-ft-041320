class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to login_path
        elsif current_user
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to login_path
        end
    end

    def destroy
        session.delete :name
    end
end