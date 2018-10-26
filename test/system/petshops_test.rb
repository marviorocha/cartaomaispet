require "application_system_test_case"

class PetshopsTest < ApplicationSystemTestCase
  setup do
    @petshop = petshops(:one)
  end

  test "visiting the index" do
    visit petshops_url
    assert_selector "h1", text: "Petshops"
  end

  test "creating a Petshop" do
    visit petshops_url
    click_on "New Petshop"

    fill_in "Address", with: @petshop.address
    fill_in "Cep", with: @petshop.cep
    fill_in "Cidade", with: @petshop.cidade
    fill_in "Estado", with: @petshop.estado
    fill_in "Phone", with: @petshop.phone
    fill_in "Title", with: @petshop.title
    click_on "Create Petshop"

    assert_text "Petshop was successfully created"
    click_on "Back"
  end

  test "updating a Petshop" do
    visit petshops_url
    click_on "Edit", match: :first

    fill_in "Address", with: @petshop.address
    fill_in "Cep", with: @petshop.cep
    fill_in "Cidade", with: @petshop.cidade
    fill_in "Estado", with: @petshop.estado
    fill_in "Phone", with: @petshop.phone
    fill_in "Title", with: @petshop.title
    click_on "Update Petshop"

    assert_text "Petshop was successfully updated"
    click_on "Back"
  end

  test "destroying a Petshop" do
    visit petshops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Petshop was successfully destroyed"
  end
end
