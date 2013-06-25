class TracksController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @tracks = Track.order(sort_column + " " + sort_direction)

    respond_to do |format|
      format.html
      format.json { render json: @tracks }
    end
  end

  def show
    @track = Track.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @track }
    end
  end

  def new
    @track = Track.new

    respond_to do |format|
      format.html
      format.json { render json: @track }
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def create
    @track = Track.new(params[:track])

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.json { render json: @track, status: :created, location: @track }
      else
        format.html { render action: "new" }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @track = Track.find(params[:id])

    respond_to do |format|
      if @track.update_attributes(params[:track])
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    respond_to do |format|
      format.html { redirect_to tracks_url }
      format.json { head :no_content }
    end
  end

private

  def sort_column
    Track.column_names.include?(params[:sort]) ? params[:sort] : "track"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
