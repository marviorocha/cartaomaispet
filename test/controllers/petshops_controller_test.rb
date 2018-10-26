require 'test_helper'

class PetshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @petshop = petshops(:one)
  end

  test "should get index" do
    get petshops_url
    assert_response :success
  end

  test "should get new" do
    get new_petshop_url
    assert_response :success
  end

  test "should create petshop" do
    assert_difference('Petshop.count') do
      post petshops_url, params: { petshop: { address: @petshop.address, cep: @petshop.cep, cidade: @petshop.cidade, estado: @petshop.estado, phone: @petshop.phone, title: @petshop.title } }
    end

    assert_redirected_to petshop_url(Petshop.last)
  end

  test "should show petshop" do
    get petshop_url(@petshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_petshop_url(@petshop)
    assert_response :success
  end

  test "should update petshop" do
    patch petshop_url(@petshop), params: { petshop: { address: @petshop.address, cep: @petshop.cep, cidade: @petshop.cidade, estado: @petshop.estado, phone: @petshop.phone, title: @petshop.title } }
    assert_redirected_to petshop_url(@petshop)
  end

  test "should destroy petshop" do
    assert_difference('Petshop.count', -1) do
      delete petshop_url(@petshop)
    end

    assert_redirected_to petshops_url
  end
end
