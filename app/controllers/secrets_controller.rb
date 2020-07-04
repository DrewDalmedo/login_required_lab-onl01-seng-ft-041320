class SecretsController < ApplicationController
    def show
        redirect_to login_path if current_user.nil?
    end
end