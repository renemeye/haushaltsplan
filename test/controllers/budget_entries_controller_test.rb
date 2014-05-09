require 'test_helper'

class BudgetEntriesControllerTest < ActionController::TestCase
  setup do
    @budget_entry = budget_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:budget_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create budget_entry" do
    assert_difference('BudgetEntry.count') do
      post :create, budget_entry: { budget_id: @budget_entry.budget_id, income: @budget_entry.income, name: @budget_entry.name, parent_budget_entry_id: @budget_entry.parent_budget_entry_id, value_in_euro: @budget_entry.value_in_euro }
    end

    assert_redirected_to budget_entry_path(assigns(:budget_entry))
  end

  test "should show budget_entry" do
    get :show, id: @budget_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @budget_entry
    assert_response :success
  end

  test "should update budget_entry" do
    patch :update, id: @budget_entry, budget_entry: { budget_id: @budget_entry.budget_id, income: @budget_entry.income, name: @budget_entry.name, parent_budget_entry_id: @budget_entry.parent_budget_entry_id, value_in_euro: @budget_entry.value_in_euro }
    assert_redirected_to budget_entry_path(assigns(:budget_entry))
  end

  test "should destroy budget_entry" do
    assert_difference('BudgetEntry.count', -1) do
      delete :destroy, id: @budget_entry
    end

    assert_redirected_to budget_entries_path
  end
end
