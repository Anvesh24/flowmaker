class NodesController < ApplicationController
  

  def new
    @new_node = Node.new

  end

  def index
    @nodes = Node.root
    @new_node = Node.new  
  end

  def show
    @node = Node.find(params[:id])
    @children = @node.children.all
    @new_node = @node.children.new
  end

  def create

    @node = Node.create(node_params)
    redirect_to node_path(@node)

    # @parent = Node.find(params[:id])
    # @node = @parent.nodes.new(params[:node])

    # if @node.save
    #   redirect_to node_path(params[:id])
    # else
    #   render 'new'
      
  end
    
    # @node = Node.new(node_params)
    # @node.save
    # redirect_to node_path(@node)
    
  

  private

    def node_params
      params.require(:node).permit(:name, :description, :parent_id)      
    end


end
