class ApplicationController < ActionController::Base
     before_action :authenticate_user!

    #  For test from postman uncomment following line
    # skip_before_action :verify_authenticity_token

        def index
              render "layouts/application"
        end
end
