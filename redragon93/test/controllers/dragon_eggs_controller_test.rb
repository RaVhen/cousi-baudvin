require 'test_helper'

class DragonEggsControllerTest < ActionController::TestCase
  setup do
    @dragon_egg = dragon_eggs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dragon_eggs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dragon_egg" do
    assert_difference('DragonEgg.count') do
      post :create, dragon_egg: { count: @dragon_egg.count, description: @dragon_egg.description, race: @dragon_egg.race }
    end

    assert_redirected_to dragon_egg_path(assigns(:dragon_egg))
  end

  test "should show dragon_egg" do
    get :show, id: @dragon_egg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dragon_egg
    assert_response :success
  end

  test "should update dragon_egg" do
    patch :update, id: @dragon_egg, dragon_egg: { count: @dragon_egg.count, description: @dragon_egg.description, race: @dragon_egg.race }
    assert_redirected_to dragon_egg_path(assigns(:dragon_egg))
  end

  test "should destroy dragon_egg" do
    assert_difference('DragonEgg.count', -1) do
      delete :destroy, id: @dragon_egg
    end

    assert_redirected_to dragon_eggs_path
  end
end
