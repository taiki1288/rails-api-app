module Api 
    module V1 
        class Postcontroller < Applicationcontroller
            before_action :set_post, only: [:show, :update, :destroy]

            def index 
                posts = Post.order(created_at: :desc)
                render json: { status: 'SUCCESS', message: 'Loaded posts', data: posts }
            end

            def show 
                render json: { status: 'SUCCESS', message: 'Loaded the post', data: @post }
            end


            private

            def set_post
                @post = Post.find(params[:id])
            end

            def post_params
                params.require(:post).permit(:title) 
            end
        end
    end
end