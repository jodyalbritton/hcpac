class ShowtimesController < ApplicationController
  before_action :set_showtime, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Home", :root_url
  add_breadcrumb "Productions", :productions_url
  add_breadcrumb "Showtimes", :production_showtimes_url

  # GET /showtimes
  # GET /showtimes.json
  def index

    @production = Production.friendly.find(params[:production_id])
    add_breadcrumb @production.title
    @showtimes = @production.showtimes.order(:date)
    @showtimes_by_day = @showtimes.group_by{ |d| d.date.strftime('%d %B %Y')}
  end

  # GET /showtimes/1
  # GET /showtimes/1.json
  def show
  end

  # GET /showtimes/new
  def new
    @production = Production.friendly.find(params[:production_id])
    @showtime = @production.showtimes.new
  end

  # GET /showtimes/1/edit
  def edit
  end

  # POST /showtimes
  # POST /showtimes.json
  def create
    @production = Production.friendly.find(params[:production_id])
    @showtime = @production.showtimes.new(showtime_params)
   

    respond_to do |format|
      if @showtime.save
        format.html { redirect_to [@production,@showtime], notice: 'Showtime was successfully created.' }
        format.json { render :show, status: :created, location: @showtime }
      else
        format.html { render :new }
        format.json { render json: @showtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showtimes/1
  # PATCH/PUT /showtimes/1.json
  def update
    respond_to do |format|
      if @showtime.update(showtime_params)
        format.html { redirect_to [@production,@showtime], notice: 'Showtime was successfully updated.' }
        format.json { render :show, status: :ok, location: @showtime }
      else
        format.html { render :edit }
        format.json { render json: @showtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showtimes/1
  # DELETE /showtimes/1.json
  def destroy
    @showtime.destroy
    respond_to do |format|
      format.html { redirect_to showtimes_url, notice: 'Showtime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showtime
      @production = Production.friendly.find(params[:production_id])
      @showtime = @production.showtimes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showtime_params
      params.require(:showtime).permit(:date, :showable_id, :showable_type)
    end
end
