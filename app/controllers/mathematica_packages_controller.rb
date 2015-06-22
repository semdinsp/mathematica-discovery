class MathematicaPackagesController < ApplicationController
  before_action :set_mathematica_package, only: [:show, :edit, :update, :destroy]

  # GET /mathematica_packages
  # GET /mathematica_packages.json
  def index
    @mathematica_packages = MathematicaPackage.all
  end

  # GET /mathematica_packages/1
  # GET /mathematica_packages/1.json
  def show
  end

  # GET /mathematica_packages/new
  def new
    @mathematica_package = MathematicaPackage.new
  end

  # GET /mathematica_packages/1/edit
  def edit
  end

  # POST /mathematica_packages
  # POST /mathematica_packages.json
  def create
    @mathematica_package = MathematicaPackage.new(mathematica_package_params)

    respond_to do |format|
      if @mathematica_package.save
        format.html { redirect_to @mathematica_package, notice: 'Mathematica package was successfully created.' }
        format.json { render :show, status: :created, location: @mathematica_package }
      else
        format.html { render :new }
        format.json { render json: @mathematica_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mathematica_packages/1
  # PATCH/PUT /mathematica_packages/1.json
  def update
    respond_to do |format|
      if @mathematica_package.update(mathematica_package_params)
        format.html { redirect_to @mathematica_package, notice: 'Mathematica package was successfully updated.' }
        format.json { render :show, status: :ok, location: @mathematica_package }
      else
        format.html { render :edit }
        format.json { render json: @mathematica_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mathematica_packages/1
  # DELETE /mathematica_packages/1.json
  def destroy
    @mathematica_package.destroy
    respond_to do |format|
      format.html { redirect_to mathematica_packages_url, notice: 'Mathematica package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mathematica_package
      @mathematica_package = MathematicaPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mathematica_package_params
      params.require(:mathematica_package).permit(:owner, :repository, :description, :downloads)
    end
end
