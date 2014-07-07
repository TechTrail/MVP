class BloodstocksController < ApplicationController
  before_action :set_bloodstock, only: [:show, :edit, :update, :destroy]

  # GET /bloodstocks
  # GET /bloodstocks.json
  def index
    @bloodstocks = Bloodstock.all
  end

  # GET /bloodstocks/1
  # GET /bloodstocks/1.json
  def show
  end

  # GET /bloodstocks/new
  def new
    @bloodstock = Bloodstock.new
    @bloodbanks = Bloodbank.all
  end

  # GET /bloodstocks/1/edit
  def edit
@bloodstock = Bloodstock.new
    @bloodbanks = Bloodbank.all
  end

  # POST /bloodstocks
  # POST /bloodstocks.json
  def create
   # @bloodstock = Bloodstock.new(bloodstock_params)

    bloodbank_id = params[:bloodstock][:bloodbank_id]

    @bloodstock = Bloodstock.create(:bloodbank_id =>bloodbank_id, :bloodcomponentid =>params[:bloodstock][:bloodcomponentid], :bloodgroupid =>params[:bloodstock][:bloodgroupid], :units =>params[:bloodstock][:units])

    respond_to do |format|
      if @bloodstock.save
        format.html { redirect_to @bloodstock, notice: 'Blood tock was successfully created.' }
        format.json { render :show, status: :created, location: @bloodstock }
      else
        format.html { render :new }
        format.json { render json: @bloodstock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloodstocks/1
  # PATCH/PUT /bloodstocks/1.json
  def update
    respond_to do |format|
      if @bloodstock.update(bloodstock_params)
        format.html { redirect_to @bloodstock, notice: 'Blood stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @bloodstock }
      else
        format.html { render :edit }
        format.json { render json: @bloodstock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloodstocks/1
  # DELETE /bloodstocks/1.json
  def destroy
    @bloodstock.destroy
    respond_to do |format|
      format.html { redirect_to bloodstocks_url, notice: 'Blood stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloodstock
      @bloodstock = Bloodstock.find(params[:id])
    end

   
end
