require 'test_helper'

class BpciAdjmntFfactorsRsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bpci_adjmnt_ffactors_r = bpci_adjmnt_ffactors_rs(:one)
  end

  test "should get index" do
    get bpci_adjmnt_ffactors_rs_url
    assert_response :success
  end

  test "should get new" do
    get new_bpci_adjmnt_ffactors_r_url
    assert_response :success
  end

  test "should create bpci_adjmnt_ffactors_r" do
    assert_difference('BpciAdjmntFfactorsR.count') do
      post bpci_adjmnt_ffactors_rs_url, params: { bpci_adjmnt_ffactors_r: { PROVIDER_CCN: @bpci_adjmnt_ffactors_r.PROVIDER_CCN } }
    end

    assert_redirected_to bpci_adjmnt_ffactors_r_url(BpciAdjmntFfactorsR.last)
  end

  test "should show bpci_adjmnt_ffactors_r" do
    get bpci_adjmnt_ffactors_r_url(@bpci_adjmnt_ffactors_r)
    assert_response :success
  end

  test "should get edit" do
    get edit_bpci_adjmnt_ffactors_r_url(@bpci_adjmnt_ffactors_r)
    assert_response :success
  end

  test "should update bpci_adjmnt_ffactors_r" do
    patch bpci_adjmnt_ffactors_r_url(@bpci_adjmnt_ffactors_r), params: { bpci_adjmnt_ffactors_r: { PROVIDER_CCN: @bpci_adjmnt_ffactors_r.PROVIDER_CCN } }
    assert_redirected_to bpci_adjmnt_ffactors_r_url(@bpci_adjmnt_ffactors_r)
  end

  test "should destroy bpci_adjmnt_ffactors_r" do
    assert_difference('BpciAdjmntFfactorsR.count', -1) do
      delete bpci_adjmnt_ffactors_r_url(@bpci_adjmnt_ffactors_r)
    end

    assert_redirected_to bpci_adjmnt_ffactors_rs_url
  end
end
