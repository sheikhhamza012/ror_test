class PostController < ApplicationController
    def new
        puts 
        @post = User.find(current_user.id).posts.new(up_params)
        if @post.save
            #MailJob.perform_now(current_user)
            UserMailer.welcome_email(current_user).deliver_now
            #HardWorker.perform_async(current_user.username)
            redirect_to('/')
        end
    end
    def up_params
        params.require(:post).permit(:msg, :msg_type, :image)
    end
end
