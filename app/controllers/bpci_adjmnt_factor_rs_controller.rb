class BpciAdjmntFactorRsController < ApplicationController
  before_action :set_bpci_adjmnt_factor_r, only: [:show, :edit, :update, :destroy]

  # GET /bpci_adjmnt_factor_rs
  # GET /bpci_adjmnt_factor_rs.json
  def index
    @bpci_adjmnt_factor_rs = BpciAdjmntFactorR.all
  end

  # GET /bpci_adjmnt_factor_rs/1
  # GET /bpci_adjmnt_factor_rs/1.json
  def show
  end

  # GET /bpci_adjmnt_factor_rs/new
  def new
    @bpci_adjmnt_factor_r = BpciAdjmntFactorR.new
  end

  # GET /bpci_adjmnt_factor_rs/1/edit
  def edit
  end

  # POST /bpci_adjmnt_factor_rs
  # POST /bpci_adjmnt_factor_rs.json
  def create
    @bpci_adjmnt_factor_r = BpciAdjmntFactorR.new(bpci_adjmnt_factor_r_params)

    respond_to do |format|
      if @bpci_adjmnt_factor_r.save
        format.html { redirect_to @bpci_adjmnt_factor_r, notice: 'Bpci adjmnt factor r was successfully created.' }
        format.json { render :show, status: :created, location: @bpci_adjmnt_factor_r }
      else
        format.html { render :new }
        format.json { render json: @bpci_adjmnt_factor_r.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bpci_adjmnt_factor_rs/1
  # PATCH/PUT /bpci_adjmnt_factor_rs/1.json
  def update
    respond_to do |format|
      if @bpci_adjmnt_factor_r.update(bpci_adjmnt_factor_r_params)
        format.html { redirect_to @bpci_adjmnt_factor_r, notice: 'Bpci adjmnt factor r was successfully updated.' }
        format.json { render :show, status: :ok, location: @bpci_adjmnt_factor_r }
      else
        format.html { render :edit }
        format.json { render json: @bpci_adjmnt_factor_r.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bpci_adjmnt_factor_rs/1
  # DELETE /bpci_adjmnt_factor_rs/1.json
  def destroy
    @bpci_adjmnt_factor_r.destroy
    respond_to do |format|
      format.html { redirect_to bpci_adjmnt_factor_rs_url, notice: 'Bpci adjmnt factor r was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bpci_adjmnt_factor_r
      @bpci_adjmnt_factor_r = BpciAdjmntFactorR.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bpci_adjmnt_factor_r_params
      params.require(:bpci_adjmnt_factor_r).permit(:PROVIDER_CCN, :TOP_25TH_PERC_FY15, :TOP_25TH_PERC_FY16, :HAC_ADJMNT_FACTOR, :LTCH_IRF_ADJMNT_FACTOR, :FR12_APU_REDUCTION, :FR15_APU_REDUCTION, :FR16_APU_REDUCTION, :APU_IQR_ADJMNT_FACTOR_FY15, :APU_IQR_ADJMNT_FACTOR_FY16)
    end
end
