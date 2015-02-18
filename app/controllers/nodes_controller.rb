class NodesController < ApplicationController
  

  def new
    @new_node = current_user.node.new

  end

  def index
    @nodes =current_user.nodes.root
    @new_node = current_user.nodes.new  
  end

  def show
    @node = current_user.nodes.find(params[:id])
    @children = @node.children.all
    @new_node = @node.children.new
  end

  def create

    @node = current_user.nodes.create(node_params)
  
    redirect_to node_path(@node)


    # @parent = Node.find(params[:id])
    # @node = @parent.nodes.new(params[:node])

    # if @node.save
    #   redirect_to node_path(params[:id])
    # else
    #   render 'new'
      
  end
    
  def destroy

    @node =current_user.nodes.find(params[:id])
    @node.destroy

    redirect_to @node.parent if @node.parent
    redirect_to root_path
  end

  def edit
    @node = current_user.nodes.find(params[:id])
  end

  def update
    @node = current_user.nodes.find(params[:id])
    if @node.update_attributes(node_params)
      
      redirect_to @node
    else
      render 'edit'
    end
  end
  
  

  private

    def node_params
      params.require(:node).permit(:name, :description, :parent_id)      
    end


end
