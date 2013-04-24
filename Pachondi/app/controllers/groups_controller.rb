class GroupsController < ApplicationController
  
  respond_to :html
  
  # GET /groups
  def index
    @groups = Group.all
  end
  
  
  # GET /groups/:id
  def show
    #@groups = Group.where("user_id = ?",current_user.id)
    @group = Group.find(params[:id])
  end

  # GET /groups/new
  def new
    @group = Group.new
  end
  
  # POST /groups
  def create
    @group = Group.new(params[:group])
    if @group.save
      flash[:notice] = "Group created!"
      redirect_back_or_default groups_path
    else
      render :action => :new
    end
  end
  
  #GET /groups/:id/edit
  def edit
    @group = Group.find(params[:id])
  end  
  
  #PUT /groups/:id
  def update
    @group = Group.find(params[:id])
    
    if @group.update_attributes(params[:group])
      flash[:notice] = 'Group was successfully updated'
      respond_with @group, :location => groups_path
    end
    # rails 2 way
    #respond_to do |format|
      #if @group.update_attributes(params[:group])
        #format.html { redirect_to @group, notice:'Group was successfully updated'}
      #else
        #format.html { render action:"edit", notice:'Group was unsuccessfully updated'}
      #end
    #end 
  
  end
  
  #DELETE /groups/:id
  def destroy
    Group.find(params[:id]).destroy
    flash[:notice] = "Group Deleted!"
    redirect_back_or_default groups_path
  end
  
end
