 def index
   respond_to do |format|
       format.html # index.html.erb
      format.json { render json: @comments }
     end
   end
 
 def show
 
     respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @comment }
     end
   end
 
 def new
 
     respond_to do |format|
       format.html # new.html.erb
       format.json { render json: @comment }
     end
   end
 
 def edit
   # POST /comments
   # POST /comments.json
   def create
     @post = Post.find_by_id(params[:post_id])
     @comment = @post.comments.new(params[:comment])
 
 
     respond_to do |format|
       if @comment.save
         format.html { redirect_to @post, notice: 'Comment was successfully created.' }
         format.json { render json: @comment, status: :created, location: @comment }
       else
         format.html { render action: "new" }
         format.json { render json: @comment.errors, status: :unprocessable_entity }
       end
     end
   end
@@ -60,11 +62,11 @@ def update
 
     respond_to do |format|
       if @comment.update_attributes(params[:comment])
         format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: "edit" }
         format.json { render json: @comment.errors, status: :unprocessable_entity }
       end
     end
   end
