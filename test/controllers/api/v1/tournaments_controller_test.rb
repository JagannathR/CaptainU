require "test_helper"

class Api::V1::TournamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_tournament = api_v1_tournaments(:one)
  end

  test "should get index" do
    get api_v1_tournaments_url, as: :json
    assert_response :success
  end

  test "should create api_v1_tournament" do
    assert_difference('Api::V1::Tournament.count') do
      post api_v1_tournaments_url, params: { api_v1_tournament: { city: @api_v1_tournament.city, name: @api_v1_tournament.name, start_date: @api_v1_tournament.start_date, state: @api_v1_tournament.state } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_tournament" do
    get api_v1_tournament_url(@api_v1_tournament), as: :json
    assert_response :success
  end

  test "should update api_v1_tournament" do
    patch api_v1_tournament_url(@api_v1_tournament), params: { api_v1_tournament: { city: @api_v1_tournament.city, name: @api_v1_tournament.name, start_date: @api_v1_tournament.start_date, state: @api_v1_tournament.state } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_tournament" do
    assert_difference('Api::V1::Tournament.count', -1) do
      delete api_v1_tournament_url(@api_v1_tournament), as: :json
    end

    assert_response 204
  end
end
