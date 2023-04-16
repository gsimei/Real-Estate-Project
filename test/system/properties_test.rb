require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "should create property" do
    visit properties_url
    click_on "New property"

    fill_in "Address", with: @property.address
    fill_in "Cabinet", with: @property.cabinet
    fill_in "Category", with: @property.category
    fill_in "Finality", with: @property.finality
    fill_in "Floor", with: @property.floor
    fill_in "Footage", with: @property.footage
    check "Highlighted" if @property.highlighted
    fill_in "Infrastructure", with: @property.infrastructure
    fill_in "Intention", with: @property.intention
    fill_in "Intimate", with: @property.intimate
    fill_in "Leisure", with: @property.leisure
    fill_in "Location", with: @property.location
    fill_in "Price", with: @property.price
    fill_in "Primary date", with: @property.primary_date
    check "Published" if @property.published
    fill_in "Services", with: @property.services
    fill_in "Social", with: @property.social
    fill_in "User", with: @property.user_id
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "should update Property" do
    visit property_url(@property)
    click_on "Edit this property", match: :first

    fill_in "Address", with: @property.address
    fill_in "Cabinet", with: @property.cabinet
    fill_in "Category", with: @property.category
    fill_in "Finality", with: @property.finality
    fill_in "Floor", with: @property.floor
    fill_in "Footage", with: @property.footage
    check "Highlighted" if @property.highlighted
    fill_in "Infrastructure", with: @property.infrastructure
    fill_in "Intention", with: @property.intention
    fill_in "Intimate", with: @property.intimate
    fill_in "Leisure", with: @property.leisure
    fill_in "Location", with: @property.location
    fill_in "Price", with: @property.price
    fill_in "Primary date", with: @property.primary_date
    check "Published" if @property.published
    fill_in "Services", with: @property.services
    fill_in "Social", with: @property.social
    fill_in "User", with: @property.user_id
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "should destroy Property" do
    visit property_url(@property)
    click_on "Destroy this property", match: :first

    assert_text "Property was successfully destroyed"
  end
end
