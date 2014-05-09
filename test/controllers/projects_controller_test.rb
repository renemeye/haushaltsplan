require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { budget_entry: @project.budget_entry, comment: @project.comment, contact_e_mail_address: @project.contact_e_mail_address, contact_person: @project.contact_person, contact_telephone_no: @project.contact_telephone_no, decision_date: @project.decision_date, decision_protocol_link: @project.decision_protocol_link, decision_value: @project.decision_value, name: @project.name }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { budget_entry: @project.budget_entry, comment: @project.comment, contact_e_mail_address: @project.contact_e_mail_address, contact_person: @project.contact_person, contact_telephone_no: @project.contact_telephone_no, decision_date: @project.decision_date, decision_protocol_link: @project.decision_protocol_link, decision_value: @project.decision_value, name: @project.name }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
