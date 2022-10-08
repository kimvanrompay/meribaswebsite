require "test_helper"

class VacbibsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacbib = vacbibs(:one)
  end

  test "should get index" do
    get vacbibs_url
    assert_response :success
  end

  test "should get new" do
    get new_vacbib_url
    assert_response :success
  end

  test "should create vacbib" do
    assert_difference("Vacbib.count") do
      post vacbibs_url, params: { vacbib: { body: @vacbib.body, category: @vacbib.category, title: @vacbib.title } }
    end

    assert_redirected_to vacbib_url(Vacbib.last)
  end

  test "should show vacbib" do
    get vacbib_url(@vacbib)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacbib_url(@vacbib)
    assert_response :success
  end

  test "should update vacbib" do
    patch vacbib_url(@vacbib), params: { vacbib: { body: @vacbib.body, category: @vacbib.category, title: @vacbib.title } }
    assert_redirected_to vacbib_url(@vacbib)
  end

  test "should destroy vacbib" do
    assert_difference("Vacbib.count", -1) do
      delete vacbib_url(@vacbib)
    end

    assert_redirected_to vacbibs_url
  end
end
