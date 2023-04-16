require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference("Property.count") do
      post properties_url, params: { property: { address: @property.address, cabinet: @property.cabinet, category: @property.category, finality: @property.finality, floor: @property.floor, footage: @property.footage, highlighted: @property.highlighted, infrastructure: @property.infrastructure, intention: @property.intention, intimate: @property.intimate, leisure: @property.leisure, location: @property.location, price: @property.price, primary_date: @property.primary_date, published: @property.published, services: @property.services, social: @property.social, user_id: @property.user_id } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { address: @property.address, cabinet: @property.cabinet, category: @property.category, finality: @property.finality, floor: @property.floor, footage: @property.footage, highlighted: @property.highlighted, infrastructure: @property.infrastructure, intention: @property.intention, intimate: @property.intimate, leisure: @property.leisure, location: @property.location, price: @property.price, primary_date: @property.primary_date, published: @property.published, services: @property.services, social: @property.social, user_id: @property.user_id } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference("Property.count", -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
