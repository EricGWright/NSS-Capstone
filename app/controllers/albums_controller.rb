class AlbumsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @albums = Album.order(sort_column + " " + sort_direction)

    respond_to do |format|
      format.html
      format.json { render json: @albums }
    end
  end

  def show
    @album = Album.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @album }
    end
  end

  def new
    @album = Album.new

    respond_to do |format|
      format.html
      format.json { render json: @album }
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(params[:album])

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render json: @album, status: :created, location: @album }
      else
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @album = Album.find(params[:id])

    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to albums_url }
      format.json { head :no_content }
    end
  end

private

  def sort_column
    Album.column_names.include?(params[:sort]) ? params[:sort] : "album"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
