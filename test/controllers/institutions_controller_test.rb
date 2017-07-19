require 'test_helper'

class InstitutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @institution = institutions(:one)
  end

  test "should get index" do
    get institutions_url, as: :json
    assert_response :success
  end

  test "should create institution" do
    assert_difference('Institution.count') do
      post institutions_url, params: { institution: { accreditation_date_type: @institution.accreditation_date_type, accreditation_status: @institution.accreditation_status, accreditation_type: @institution.accreditation_type, action_date: @institution.action_date, address: @institution.address, agency_name: @institution.agency_name, agency_status: @institution.agency_status, campus_address: @institution.campus_address, campus_city: @institution.campus_city, campus_id: @institution.campus_id, campus_ipeds_unitid: @institution.campus_ipeds_unitid, campus_name: @institution.campus_name, campus_state: @institution.campus_state, campus_zip: @institution.campus_zip, city: @institution.city, identify_id: @institution.identify_id, ipeds_unitid: @institution.ipeds_unitid, justification: @institution.justification, justification_url: @institution.justification_url, last_action: @institution.last_action, name: @institution.name, opeid: @institution.opeid, other_justification: @institution.other_justification, periods: @institution.periods, phone: @institution.phone, program_name: @institution.program_name, state: @institution.state, web_address: @institution.web_address, zip: @institution.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show institution" do
    get institution_url(@institution), as: :json
    assert_response :success
  end

  test "should update institution" do
    patch institution_url(@institution), params: { institution: { accreditation_date_type: @institution.accreditation_date_type, accreditation_status: @institution.accreditation_status, accreditation_type: @institution.accreditation_type, action_date: @institution.action_date, address: @institution.address, agency_name: @institution.agency_name, agency_status: @institution.agency_status, campus_address: @institution.campus_address, campus_city: @institution.campus_city, campus_id: @institution.campus_id, campus_ipeds_unitid: @institution.campus_ipeds_unitid, campus_name: @institution.campus_name, campus_state: @institution.campus_state, campus_zip: @institution.campus_zip, city: @institution.city, identify_id: @institution.identify_id, ipeds_unitid: @institution.ipeds_unitid, justification: @institution.justification, justification_url: @institution.justification_url, last_action: @institution.last_action, name: @institution.name, opeid: @institution.opeid, other_justification: @institution.other_justification, periods: @institution.periods, phone: @institution.phone, program_name: @institution.program_name, state: @institution.state, web_address: @institution.web_address, zip: @institution.zip } }, as: :json
    assert_response 200
  end

  test "should destroy institution" do
    assert_difference('Institution.count', -1) do
      delete institution_url(@institution), as: :json
    end

    assert_response 204
  end
end
