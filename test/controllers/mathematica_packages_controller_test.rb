require 'test_helper'

class MathematicaPackagesControllerTest < ActionController::TestCase
  setup do
    @mathematica_package = mathematica_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mathematica_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mathematica_package" do
    assert_difference('MathematicaPackage.count') do
      post :create, mathematica_package: { description: @mathematica_package.description, downloads: @mathematica_package.downloads, owner: @mathematica_package.owner, repository: @mathematica_package.repository }
    end

    assert_redirected_to mathematica_package_path(assigns(:mathematica_package))
  end

  test "should show mathematica_package" do
    get :show, id: @mathematica_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mathematica_package
    assert_response :success
  end

  test "should update mathematica_package" do
    patch :update, id: @mathematica_package, mathematica_package: { description: @mathematica_package.description, downloads: @mathematica_package.downloads, owner: @mathematica_package.owner, repository: @mathematica_package.repository }
    assert_redirected_to mathematica_package_path(assigns(:mathematica_package))
  end

  test "should destroy mathematica_package" do
    assert_difference('MathematicaPackage.count', -1) do
      delete :destroy, id: @mathematica_package
    end

    assert_redirected_to mathematica_packages_path
  end
end
