class ProfileController < ApplicationController
    def edit
        @user = User.find(current_user.id)
        if @user.update(up_params)
            redirect_to ('/')
        
            
        end

    end
    def index
    end
    def up_params
        params.require(:user).permit(:username)
    end
end
