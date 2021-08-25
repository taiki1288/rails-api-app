module Api 
    module V1 
        class Postcontroller < Applicationcontroller
            before_action :set_post, only: [:show, :update, :destroy]

            def index 
                posts = Post.order(created_at: :desc)
                render json: { status: 'SUCCESS', message: 'Loaded posts', data: 'posts' }
            end
        en
    end
end