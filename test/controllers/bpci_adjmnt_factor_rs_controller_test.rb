require 'test_helper'

class BpciAdjmntFactorRsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bpci_adjmnt_factor_r = bpci_adjmnt_factor_rs(:one)
  end

  test "should get index" do
    get bpci_adjmnt_factor_rs_url
    assert_response :success
  end

  test "should get new" do
    get new_bpci_adjmnt_factor_r_url
    assert_response :success
  end

  test "should create bpci_adjmnt_factor_r" do
    assert_difference('BpciAdjmntFactorR.count') do
      post bpci_adjmnt_factor_rs_url, params: { bpci_adjmnt_factor_r: { APU_IQR_ADJMNT_FACTOR_FY15: @bpci_adjmnt_factor_r.APU_IQR_ADJMNT_FACTOR_FY15, APU_IQR_ADJMNT_FACTOR_FY16: @bpci_adjmnt_factor_r.APU_IQR_ADJMNT_FACTOR_FY16, FR12_APU_REDUCTION: @bpci_adjmnt_factor_r.FR12_APU_REDUCTION, FR15_APU_REDUCTION: @bpci_adjmnt_factor_r.FR15_APU_REDUCTION, FR16_APU_REDUCTION: @bpci_adjmnt_factor_r.FR16_APU_REDUCTION, HAC_ADJMNT_FACTOR: @bpci_adjmnt_factor_r.HAC_ADJMNT_FACTOR, LTCH_IRF_ADJMNT_FACTOR: @bpci_adjmnt_factor_r.LTCH_IRF_ADJMNT_FACTOR, PROVIDER_CCN: @bpci_adjmnt_factor_r.PROVIDER_CCN, TOP_25TH_PERC_FY15: @bpci_adjmnt_factor_r.TOP_25TH_PERC_FY15, TOP_25TH_PERC_FY16: @bpci_adjmnt_factor_r.TOP_25TH_PERC_FY16 } }
    end

    assert_redirected_to bpci_adjmnt_factor_r_url(BpciAdjmntFactorR.last)
  end

  test "should show bpci_adjmnt_factor_r" do
    get bpci_adjmnt_factor_r_url(@bpci_adjmnt_factor_r)
    assert_response :success
  end

  test "should get edit" do
    get edit_bpci_adjmnt_factor_r_url(@bpci_adjmnt_factor_r)
    assert_response :success
  end

  test "should update bpci_adjmnt_factor_r" do
    patch bpci_adjmnt_factor_r_url(@bpci_adjmnt_factor_r), params: { bpci_adjmnt_factor_r: { APU_IQR_ADJMNT_FACTOR_FY15: @bpci_adjmnt_factor_r.APU_IQR_ADJMNT_FACTOR_FY15, APU_IQR_ADJMNT_FACTOR_FY16: @bpci_adjmnt_factor_r.APU_IQR_ADJMNT_FACTOR_FY16, FR12_APU_REDUCTION: @bpci_adjmnt_factor_r.FR12_APU_REDUCTION, FR15_APU_REDUCTION: @bpci_adjmnt_factor_r.FR15_APU_REDUCTION, FR16_APU_REDUCTION: @bpci_adjmnt_factor_r.FR16_APU_REDUCTION, HAC_ADJMNT_FACTOR: @bpci_adjmnt_factor_r.HAC_ADJMNT_FACTOR, LTCH_IRF_ADJMNT_FACTOR: @bpci_adjmnt_factor_r.LTCH_IRF_ADJMNT_FACTOR, PROVIDER_CCN: @bpci_adjmnt_factor_r.PROVIDER_CCN, TOP_25TH_PERC_FY15: @bpci_adjmnt_factor_r.TOP_25TH_PERC_FY15, TOP_25TH_PERC_FY16: @bpci_adjmnt_factor_r.TOP_25TH_PERC_FY16 } }
    assert_redirected_to bpci_adjmnt_factor_r_url(@bpci_adjmnt_factor_r)
  end

  test "should destroy bpci_adjmnt_factor_r" do
    assert_difference('BpciAdjmntFactorR.count', -1) do
      delete bpci_adjmnt_factor_r_url(@bpci_adjmnt_factor_r)
    end

    assert_redirected_to bpci_adjmnt_factor_rs_url
  end
end
