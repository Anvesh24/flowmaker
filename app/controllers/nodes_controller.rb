class NodesController < ApplicationController

  def new
    @parent_node = Node.find(params[:node_id])
    @node = @parent_node.nodes.new
    # @node = Node.new    
  end

  def index
    @nodes = Node.all    
  end

  def show
    @node = Node.find(params[:id])
  end

  def create
    @parent = Node.find(params[:node_id])
    @node = @parent.nodes.new(params[:node])

    if @node.save
      redirect_to node_path(params[:node_id])
    else
      render 'new'
      
    end
    
    # @node = Node.new(node_params)
    # @node.save
    # redirect_to node_path(@node)
    
  end

  private

    def node_params
      params.require(:node).permit(:topic, :description)      
    end


end
