class SuitsController < ApplicationController
  # GET /suits
  # GET /suits.json

  before_filter :turntopdf, :only => [:pdfit, :upload]

  def index
    @suits = Suit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @suits }
    end
  end

  # GET /suits/1
  # GET /suits/1.json
  def show
    @suit = Suit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suit }
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
      redirect_to suit_url(@suit), :notice => "Upload successful! File now at #{resp['path']}"
    end
  end


  # GET /suits/new
  # GET /suits/new.json
  def new
    @suit = Suit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suit }
    end
  end

  # GET /suits/1/edit
  def edit
    @suit = Suit.find(params[:id])
  end

  # POST /suits
  # POST /suits.json
  def create
    @suit = Suit.new(params[:suit])

    respond_to do |format|
      if @suit.save
        format.html { redirect_to @suit, notice: 'Suit was successfully created.' }
        format.json { render json: @suit, status: :created, location: @suit }
      else
        format.html { render action: "new" }
        format.json { render json: @suit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /suits/1
  # PUT /suits/1.json
  def update
    @suit = Suit.find(params[:id])

    respond_to do |format|
      if @suit.update_attributes(params[:suit])
        format.html { redirect_to @suit, notice: 'Suit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @suit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suits/1
  # DELETE /suits/1.json
  def destroy
    @suit = Suit.find(params[:id])
    @suit.destroy

    respond_to do |format|
      format.html { redirect_to suits_url }
      format.json { head :no_content }
    end
  end

    def turntopdf
     @suit = Suit.find(params[:id])
      @output = render_to_string :partial => 'suit'

      kit = PDFKit.new(@output.html_safe, :page_size => 'Letter')
      kit.stylesheets << 'public/assets/application.css'
      @thepdf = kit.to_pdf
      @filename = 'Suit' +@suit.id.to_s + '.pdf'
    end
end
