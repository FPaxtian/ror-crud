require "test_helper"

class WorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work = works(:one)
  end

  test "should get index" do
    get works_url
    assert_response :success
  end

  test "should get new" do
    get new_work_url
    assert_response :success
  end

  test "should create work" do
    assert_difference('Work.count') do
      post works_url, params: { work: { acount_woks: @work.acount_woks, employees_id: @work.employees_id, end_date_works: @work.end_date_works, location: @work.location, start_date_works: @work.start_date_works, type_works: @work.type_works, works_name: @work.works_name, worls_desc: @work.worls_desc } }
    end

    assert_redirected_to work_url(Work.last)
  end

  test "should show work" do
    get work_url(@work)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_url(@work)
    assert_response :success
  end

  test "should update work" do
    patch work_url(@work), params: { work: { acount_woks: @work.acount_woks, employees_id: @work.employees_id, end_date_works: @work.end_date_works, location: @work.location, start_date_works: @work.start_date_works, type_works: @work.type_works, works_name: @work.works_name, worls_desc: @work.worls_desc } }
    assert_redirected_to work_url(@work)
  end

  test "should destroy work" do
    assert_difference('Work.count', -1) do
      delete work_url(@work)
    end

    assert_redirected_to works_url
  end
end
