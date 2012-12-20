class ShirtsController < ApplicationController
  # GET /shirts
  # GET /shirts.json
  before_filter :turntopdf, :only => [:pdfit, :upload]


  def index
    @shirts = Shirt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shirts }
    end
  end

  # GET /shirts/1
  # GET /shirts/1.json
  def show
@shirt = Shirt.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shirt }
    end
  end

  def pdfit
    send_data @thepdf, :filename => @filename, :type => "application/pdf", :disposition  => "attachment", :notice => "You pdf'd it."
  end

  def upload
      # Check if user has no dropbox session...re-direct them to authorize
    return redirect_to(authorize_path) unless session[:dropbox_session]
    dbsession = DropboxSession.deserialize(session[:dropbox_session])
    client = DropboxClient.new(dbsession, ACCESS_TYPE) #raise an exception if session not authorized
    info = client.account_info # look up account information

    if request.method != "POST"
        # show a file upload page
        render :inline =>
            "#{info['email']} <br/><%= form_tag({:action => :upload}, :multipart => true) do %><%= file_field_tag 'file' %><%= submit_tag %><% end %>"
        return
    else
      @path = '/New Client Orders/'+@filename
      resp = client.put_file(@path, @thepdf)
      redirect_to shirt_url(@shirt), :notice => "Upload successful! File now at #{resp['path']}"
    end
  end



  # GET /shirts/new
  # GET /shirts/new.json
  def new
    @shirt = Shirt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shirt }
    end
  end

  # GET /shirts/1/edit
  def edit
    @shirt = Shirt.find(params[:id])
  end

  # POST /shirts
  # POST /shirts.json

  def create
    @shirt = Shirt.new(params[:shirt])
      respond_to do |format|
      if @shirt.save
        format.html { redirect_to @shirt, notice: 'Shirt was successfully created.' }
        format.json { render json: @shirt, status: :created, location: @shirt }
      else
        format.html { render action: "new" }
        format.json { render json: @shirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shirts/1
  # PUT /shirts/1.json
  def update
    @shirt = Shirt.find(params[:id])

    respond_to do |format|
      if @shirt.update_attributes(params[:shirt])
        format.html { redirect_to @shirt, notice: 'Shirt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shirts/1
  # DELETE /shirts/1.json
  def destroy
    @shirt = Shirt.find(params[:id])
    @shirt.destroy

    respond_to do |format|
      format.html { redirect_to shirts_url }
      format.json { head :no_content }
    end
  end

    def turntopdf
     @shirt = Shirt.find(params[:id])
      @output = render_to_string :partial => 'shirt'
      # hey = @shirt.map{|field| "field:" + field[1].to_s }
      # @output = ''
      # @keys = @shirt.attributes.keys 
      # # delete_keys = ['id', 'created_at', 'updated_at', 'form_file_name', 'form_content_type', 'form_file_size', 'form_updated_at']
      # delete_keys = ['id', 'created_at', 'updated_at']
      # delete_keys.each do |del|
      #   @keys.delete_at(@keys.index(del))
      # end
      # for attribute in @keys
      #   @output += attribute.humanize 
      #   @output += ': '
      #   @output += @shirt.attributes[attribute].to_s
      #   @output += '<br>'
      # end 

      # @output  +='Front Image: <br> <img src ="' + @shirt.photo_front.to_s + '" height= "200px" width ="200px">' unless @shirt.photo_front_file_name == nil
      # @output  +='Side Image: <br> <img src ="' + @shirt.photo_side.to_s + '" height= "200px" width ="200px">' unless @shirt.photo_side_file_name == nil
      # @output +='Back Image: <br> <img src ="' + @shirt.photo_back.to_s + '" height= "200px" width ="200px">' unless @shirt.photo_back_file_name == nil
      
      kit = PDFKit.new(@output.html_safe, :page_size => 'Letter')
      @thepdf = kit.to_pdf
      @filename = 'Shirt' +@shirt.id.to_s + '.pdf'
    end

end
