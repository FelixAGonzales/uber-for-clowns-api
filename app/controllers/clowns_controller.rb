class ClownsController < ApplicationController
  before_action :set_clown, only: %i[ show edit update destroy ]

  # GET /clowns or /clowns.json
  def index
    @clowns = Clown.all
  end

  # GET /clowns/1 or /clowns/1.json
  def show
  end

  # GET /clowns/new
  def new
    @clown = Clown.new
  end

  # GET /clowns/1/edit
  def edit
  end

  # POST /clowns or /clowns.json
  def create
    @clown = Clown.new(clown_params)

    respond_to do |format|
      if @clown.save
        format.html { redirect_to @clown, notice: "Clown was successfully created." }
        format.json { render :show, status: :created, location: @clown }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clowns/1 or /clowns/1.json
  def update
    respond_to do |format|
      if @clown.update(clown_params)
        format.html { redirect_to @clown, notice: "Clown was successfully updated." }
        format.json { render :show, status: :ok, location: @clown }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clowns/1 or /clowns/1.json
  def destroy
    @clown.destroy!

    respond_to do |format|
      format.html { redirect_to clowns_path, status: :see_other, notice: "Clown was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clown
      @clown = Clown.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clown_params
      params.require(:clown).permit(:name, :description, :cost)
    end
end
