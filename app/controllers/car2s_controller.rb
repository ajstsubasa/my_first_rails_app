class Car2sController < ApplicationController
  before_action :set_car2, only: [:show, :edit, :update, :destroy]

  # GET /car2s
  # GET /car2s.json
  def index
    @car2s = Car2.all
  end

  # GET /car2s/1
  # GET /car2s/1.json
  def show
  end

  # GET /car2s/new
  def new
    @car2 = Car2.new
  end

  # GET /car2s/1/edit
  def edit
  end

  # POST /car2s
  # POST /car2s.json
  def create
    @car2 = Car2.new(car2_params)

    respond_to do |format|
      if @car2.save
        format.html { redirect_to @car2, notice: 'Car2 was successfully created.' }
        format.json { render :show, status: :created, location: @car2 }
      else
        format.html { render :new }
        format.json { render json: @car2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car2s/1
  # PATCH/PUT /car2s/1.json
  def update
    respond_to do |format|
      if @car2.update(car2_params)
        format.html { redirect_to @car2, notice: 'Car2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @car2 }
      else
        format.html { render :edit }
        format.json { render json: @car2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car2s/1
  # DELETE /car2s/1.json
  def destroy
    @car2.destroy
    respond_to do |format|
      format.html { redirect_to car2s_url, notice: 'Car2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car2
      @car2 = Car2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car2_params
      params.require(:car2).permit(:make, :model, :year)
    end
end
