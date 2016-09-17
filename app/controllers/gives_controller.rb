class GivesController < ApplicationController
  before_action :set_gife, only: [:show, :edit, :update, :destroy]

  # GET /gives
  # GET /gives.json
  def index
    @gives = Give.all
  end

  # GET /gives/1
  # GET /gives/1.json
  def show
  end

  # GET /gives/new
  def new
    @give = Give.new
  end

  # GET /gives/1/edit
  def edit
  end

  # POST /gives
  # POST /gives.json
  def create
    @give = Give.new(gife_params)

    respond_to do |format|
      if @give.save
        format.html { redirect_to @give, notice: 'Give was successfully created.' }
        format.json { render :show, status: :created, location: @give }
      else
        format.html { render :new }
        format.json { render json: @give.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gives/1
  # PATCH/PUT /gives/1.json
  def update
    respond_to do |format|
      if @give.update(gife_params)
        format.html { redirect_to @give, notice: 'Give was successfully updated.' }
        format.json { render :show, status: :ok, location: @give }
      else
        format.html { render :edit }
        format.json { render json: @give.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gives/1
  # DELETE /gives/1.json
  def destroy
    @give.destroy
    respond_to do |format|
      format.html { redirect_to gives_url, notice: 'Give was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gife
      @give = Give.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gife_params
      params.require(:gife).permit(:user_id, :title, :about)
    end
end
