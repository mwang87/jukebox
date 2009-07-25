class TagsSongsController < ApplicationController
  # GET /tags_songs
  # GET /tags_songs.xml
  def index
    @tags_songs = TagsSongs.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tags_songs }
    end
  end

  # GET /tags_songs/1
  # GET /tags_songs/1.xml
  def show
    @tags_songs = TagsSongs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tags_songs }
    end
  end

  # GET /tags_songs/new
  # GET /tags_songs/new.xml
  def new
    @tags_songs = TagsSongs.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tags_songs }
    end
  end

  # GET /tags_songs/1/edit
  def edit
    @tags_songs = TagsSongs.find(params[:id])
  end

  # POST /tags_songs
  # POST /tags_songs.xml
  def create
    @tags_songs = TagsSongs.new(params[:tags_songs])

    respond_to do |format|
      if @tags_songs.save
        flash[:notice] = 'TagsSongs was successfully created.'
        format.html { redirect_to(@tags_songs) }
        format.xml  { render :xml => @tags_songs, :status => :created, :location => @tags_songs }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tags_songs.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tags_songs/1
  # PUT /tags_songs/1.xml
  def update
    @tags_songs = TagsSongs.find(params[:id])

    respond_to do |format|
      if @tags_songs.update_attributes(params[:tags_songs])
        flash[:notice] = 'TagsSongs was successfully updated.'
        format.html { redirect_to(@tags_songs) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tags_songs.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tags_songs/1
  # DELETE /tags_songs/1.xml
  def destroy
    @tags_songs = TagsSongs.find(params[:id])
    @tags_songs.destroy

    respond_to do |format|
      format.html { redirect_to(tags_songs_url) }
      format.xml  { head :ok }
    end
  end
end
