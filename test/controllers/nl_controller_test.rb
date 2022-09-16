require "test_helper"

class NlControllerTest < ActionDispatch::IntegrationTest
  test "should get meribas" do
    get nl_meribas_url
    assert_response :success
  end

  test "should get hoe" do
    get nl_hoe_url
    assert_response :success
  end

  test "should get result" do
    get nl_result_url
    assert_response :success
  end

  test "should get candidates" do
    get nl_candidates_url
    assert_response :success
  end

  test "should get prijs" do
    get nl_prijs_url
    assert_response :success
  end

  test "should get support" do
    get nl_support_url
    assert_response :success
  end

  test "should get rechten" do
    get nl_rechten_url
    assert_response :success
  end

  test "should get privacy" do
    get nl_privacy_url
    assert_response :success
  end

  test "should get algemenevoorwaarden" do
    get nl_algemenevoorwaarden_url
    assert_response :success
  end
end
