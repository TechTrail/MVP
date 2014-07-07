class BloodbanksController < ApplicationController
  before_action :set_bloodbank, only: [:show, :edit, :update, :destroy]

  # GET /bloodbanks
  # GET /bloodbanks.json
  def index
    @bloodbanks = Bloodbank.all
  end

  # GET /bloodbanks/1
  # GET /bloodbanks/1.json
  def show
  end

  # GET /bloodbanks/new
  def new
    @bloodbank = Bloodbank.new
  end

  # GET /bloodbanks/1/edit
  def edit
  end

  # POST /bloodbanks
  # POST /bloodbanks.json
  def create
    @bloodbank = Bloodbank.new(bloodbank_params)

    respond_to do |format|
      if @bloodbank.save
        format.html { redirect_to @bloodbank, notice: 'Blood bank was successfully created.' }
        format.json { render :show, status: :created, location: @bloodbank }
      else
        format.html { render :new }
        format.json { render json: @bloodbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloodbanks/1
  # PATCH/PUT /bloodbanks/1.json
  def update
    respond_to do |format|
      if @bloodbank.update(bloodbank_params)
        format.html { redirect_to @bloodbank, notice: 'Blood bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @bloodbank }
      else
        format.html { render :edit }
        format.json { render json: @bloodbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloodbanks/1
  # DELETE /bloodbanks/1.json
  def destroy
    @bloodbank.destroy
    respond_to do |format|
      format.html { redirect_to bloodbanks_url, notice: 'Blood bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloodbank
      @bloodbank = Bloodbank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bloodbank_params
      params.require(:bloodbank).permit(:name, :address, :city, :email, :mobile, :website, :landline)
    end
end
