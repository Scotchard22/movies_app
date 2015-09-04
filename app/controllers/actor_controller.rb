class ActorController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new
    @actor = Actor.new
  end

def create
   @actor = Actor.new(actor_params)
 
   if @actor.save
     redirect_to actors_path
   else
     render :new
   end

   def edit
   @actor = Actor.find(params[:id])
 end

def update
 @actor = Actor.find(params[:id])
 
 if @actor.update(actor_params)
   redirect_to actors_path
 else
   render :edit
 end
end

def destroy
 @actor = Actor.find(params[:id])
 @actor.destroy
 redirect_to actors_path
end

 end


private

 def actor_params
   params.require(:actor).permit(:first_name, :last_name, :age, :born)
 end
end
