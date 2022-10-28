class VacbibsController < ApplicationController
  require './app/controllers/users/sessions_controller.rb'
  before_action :authenticate_user!, only: %i[ edit update destroy new create]
  before_action :set_vacbib, only: %i[ show edit update destroy ]

  # GET /vacbibs or /vacbibs.json
  def index
    @vacbibs = Vacbib.all
  end

  # GET /vacbibs/1 or /vacbibs/1.json
  def show
  end

  # GET /vacbibs/new
  def new
    @vacbib = Vacbib.new
  end

  # GET /vacbibs/1/edit
  def edit
    
  end

  # POST /vacbibs or /vacbibs.json
  def create
    @vacbib = Vacbib.new(vacbib_params)

    respond_to do |format|
      if @vacbib.save
        format.html { redirect_to vacbib_url(@vacbib), notice: "Vacbib was successfully created." }
        format.json { render :show, status: :created, location: @vacbib }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vacbib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacbibs/1 or /vacbibs/1.json
  def update
    respond_to do |format|
      if @vacbib.update(vacbib_params)
        format.html { redirect_to vacbib_url(@vacbib), notice: "Vacbib was successfully updated." }
        format.json { render :show, status: :ok, location: @vacbib }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vacbib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacbibs/1 or /vacbibs/1.json
  def destroy
    @vacbib.destroy

    respond_to do |format|
      format.html { redirect_to vacbibs_url, notice: "Vacbib was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacbib
      @vacbib = Vacbib.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vacbib_params
      params.require(:vacbib).permit(:category, :title, :body)
    end
end
