class FirstsController < ApplicationController
    def new
    end
    def create
        params.permit!
        @first=First.new(params[:first])
        @first.save
        redirect_to @first
    end
    def show
        @first=First.find(params[:id])
    end
    def index
        @firsts=First.all
    end
    def destroy
        @first=First.find(params[:id])
        @first.destroy
        redirect_to firsts_path
    end
    def edit
        @first=First.find(params[:id])
    end
    def update
        params.permit!
        @first=First.find(params[:id])
        @first.update(params[:first])
        
        redirect_to @first
    end
    
end
