require 'test_helper'

class EncountersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encounter = encounters(:one)
  end

  test "should get index" do
    get encounters_url
    assert_response :success
  end

  test "should get new" do
    get new_encounter_url
    assert_response :success
  end

  test "should create encounter" do
    assert_difference('Encounter.count') do
      post encounters_url, params: { encounter: { admitted_at: @encounter.admitted_at, bed: @encounter.bed, discharged_at: @encounter.discharged_at, location: @encounter.location, patient_id: @encounter.patient_id, room: @encounter.room, visit_number: @encounter.visit_number } }
    end

    assert_redirected_to encounter_url(Encounter.last)
  end

  test "should show encounter" do
    get encounter_url(@encounter)
    assert_response :success
  end

  test "should get edit" do
    get edit_encounter_url(@encounter)
    assert_response :success
  end

  test "should update encounter" do
    patch encounter_url(@encounter), params: { encounter: { admitted_at: @encounter.admitted_at, bed: @encounter.bed, discharged_at: @encounter.discharged_at, location: @encounter.location, patient_id: @encounter.patient_id, room: @encounter.room, visit_number: @encounter.visit_number } }
    assert_redirected_to encounter_url(@encounter)
  end

  test "should destroy encounter" do
    assert_difference('Encounter.count', -1) do
      delete encounter_url(@encounter)
    end

    assert_redirected_to encounters_url
  end
end
