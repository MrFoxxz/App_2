class PostsController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @post =Post.new
    end

    def index
        @posts = Post.where('expiration >= ?', DateTime.current.midnight)
    end

    def show
        @post = Post.find(params[:id]) #Regresa el post creado
    end

    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            flash[:success] = "Post creado con exito!"
            redirect_to @post #Redirecciona a los post
        else 
            flash.now[:danger] = 'El numero de caracteres o la fecha de expiracion estan incorrectas'
            render 'new'
        end
    end

    def update

    end

    private

    def post_params
        params.require(:post).permit(:content, :expiration)
    end
    
    
end
