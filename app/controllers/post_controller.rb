class PostController < ApplicationController
    def new
        puts 
        @post = User.find(current_user.id).posts.new(up_params)
        if @post.save
            redirect_to('/')
        end
    end
    def up_params
        params.require(:post).permit(:msg, :msg_type, :image)
    end
end
