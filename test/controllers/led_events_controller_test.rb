require 'test_helper'

class LedEventsControllerTest < ActionController::TestCase
  setup do
    @led_event = led_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:led_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create led_event" do
    assert_difference('LedEvent.count') do
      post :create, led_event: { blink: @led_event.blink, blink_delay: @led_event.blink_delay, color: @led_event.color, end_time: @led_event.end_time, part_id: @led_event.part_id, scenario_id: @led_event.scenario_id, start_time: @led_event.start_time, wave: @led_event.wave, wave_repeat: @led_event.wave_repeat }
    end

    assert_redirected_to led_event_path(assigns(:led_event))
  end

  test "should show led_event" do
    get :show, id: @led_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @led_event
    assert_response :success
  end

  test "should update led_event" do
    patch :update, id: @led_event, led_event: { blink: @led_event.blink, blink_delay: @led_event.blink_delay, color: @led_event.color, end_time: @led_event.end_time, part_id: @led_event.part_id, scenario_id: @led_event.scenario_id, start_time: @led_event.start_time, wave: @led_event.wave, wave_repeat: @led_event.wave_repeat }
    assert_redirected_to led_event_path(assigns(:led_event))
  end

  test "should destroy led_event" do
    assert_difference('LedEvent.count', -1) do
      delete :destroy, id: @led_event
    end

    assert_redirected_to led_events_path
  end
end
