class FootnotesController < ApplicationController
  # GET /footnotes
  # GET /footnotes.xml
  def index
    @footnotes = Footnote.find(:all, :conditions => {:compo_id => 0, :rptpd_id => 0})

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @footnotes }
    end
  end

  # GET /footnotes/1
  # GET /footnotes/1.xml
  def show
    @footnote = Footnote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @footnote }
    end
  end

  # GET /footnotes/new
  # GET /footnotes/new.xml
  def new
    @footnote = Footnote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @footnote }
    end
  end

  # GET /footnotes/1/edit
  def edit
    @footnote = Footnote.find(params[:id])
  end

  # POST /footnotes
  # POST /footnotes.xml
  def create
    @footnote = Footnote.new(params[:footnote])

    respond_to do |format|
      if @footnote.save
        flash[:notice] = 'Footnote was successfully created.'
        format.html { redirect_to(@footnote) }
        format.xml  { render :xml => @footnote, :status => :created, :location => @footnote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @footnote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /footnotes/1
  # PUT /footnotes/1.xml
  def update
    @footnote = Footnote.find(params[:id])

    respond_to do |format|
      if @footnote.update_attributes(params[:footnote])
        flash[:notice] = 'Footnote was successfully updated.'
        format.html { redirect_to(@footnote) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @footnote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /footnotes/1
  # DELETE /footnotes/1.xml
  def destroy
    @footnote = Footnote.find(params[:id])
    @footnote.destroy

    respond_to do |format|
      format.html { redirect_to(footnotes_url) }
      format.xml  { head :ok }
    end
  end

  def refreshlist
      # <% form_for :footnote, :url => { :action => :refreshlist } do |form| %>
      
      # refreshlist.html.erb
      # <%= render :file => '/footnotes/index.html.erb' %>
      
      ftnt = params[:footnote]
      if (ftnt[:compo_id] != nil) && (ftnt[:rptpd_id] != nil)
          logger.error('compoid: ' + ftnt[:compo_id])
          logger.error('rptpdid: ' + ftnt[:rptpd_id])

          @footnotes = Footnote.find(:all, :conditions => { :compo_id => ftnt[:compo_id].to_i , :rptpd_id => ftnt[:rptpd_id].to_i})
      end
      
      respond_to do |format|
         format.html # index.html.erb
         format.xml  { render :xml => @footnotes }
      end 
  end
 
end
