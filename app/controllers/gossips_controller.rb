class GossipsController < ApplicationController
 

  def new
  	@gossip = Gossip.new
  end

  def create	
  	@gossip = Gossip.new(gossip_params)
  	if @gossip.save
  	redirect_to @gossip
  	end
  end

  def show
  @gossip = Gossip.find(params[:id])
	end

	def gossip_params
	params.require(:gossip).permit(:anonymous_author, :content)
	end

	def edit	
	end

	def update
	end

	def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to root_path
    end

    def index
    @gossips = Gossip.all 
	end
end
