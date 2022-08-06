class ApplicationController < ActionController::Base
    before_action :authenticate_user!
        def index
              render "layouts/application"
        end
end
