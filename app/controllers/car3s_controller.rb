class Car3sController < ApplicationController
  before_action :set_car3, only: [:show, :edit, :update, :destroy]

  # GET /car3s
  # GET /car3s.json
  def index
    @car3s = Car3.all
  end

  # GET /car3s/1
  # GET /car3s/1.json
  def show
  end

  # GET /car3s/new
  def new
    @car3 = Car3.new
  end

  # GET /car3s/1/edit
  def edit
  end

  # POST /car3s
  # POST /car3s.json
  def create
    @car3 = Car3.new(car3_params)

    respond_to do |format|
      if @car3.save
        format.html { redirect_to @car3, notice: 'Car3 was successfully created.' }
        format.json { render :show, status: :created, location: @car3 }
      else
        format.html { render :new }
        format.json { render json: @car3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car3s/1
  # PATCH/PUT /car3s/1.json
  def update
    respond_to do |format|
      if @car3.update(car3_params)
        format.html { redirect_to @car3, notice: 'Car3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @car3 }
      else
        format.html { render :edit }
        format.json { render json: @car3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car3s/1
  # DELETE /car3s/1.json
  def destroy
    @car3.destroy
    respond_to do |format|
      format.html { redirect_to car3s_url, notice: 'Car3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car3
      @car3 = Car3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car3_params
      params.require(:car3).permit(:make, :model, :year)
    end
end
