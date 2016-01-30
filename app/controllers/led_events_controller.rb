class LedEventsController < ApplicationController
  before_action :set_led_event, only: [:show, :edit, :update, :destroy]

  # GET /led_events
  # GET /led_events.json
  def index
    @scenario = Scenario.find(params[:scenario_id])
    @led_events = LedEvent.where("led_events.scenario_id =?", @scenario.id)
    respond_to do |format|
      format.html{
        @rows = []
        @colors = []
        @led_events.each do |event|
          @rows << [ Part.find(event.part_id).name, event.color, event.start_time, event.end_time]

          unless @colors.include? event.color
            @colors << event.color
          end
        end
      }
      format.json{
        @rows = []
        @hash = {}
        Part.all.each do |part|
          @hash[part.id] = []
          @led_events.where(part_id: part.id).each do |event|
            @hash[part.id] << [ event.mode, event.color, (event.end_time-event.start_time)/100]
          end
        end
      }
    end
  end

  # GET /led_events/1
  # GET /led_events/1.json
  def show
  end

  # GET /led_events/new
  def new
    # @scenario_id = params[:scenario_id]
    @led_event = LedEvent.new
  end

  # GET /led_events/1/edit
  def edit
  end

  # POST /led_events
  # POST /led_events.json
  def create
    @led_event = LedEvent.new(led_event_params)
    @led_event.scenario_id = params[:scenario_id]

    respond_to do |format|
      if @led_event.save
        format.html { render :index, notice: 'Led event was successfully created.' }
        format.json { render :show, status: :created, location: @led_event }
      else
        format.html { render :new }
        format.json { render json: @led_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /led_events/1
  # PATCH/PUT /led_events/1.json
  def update
    respond_to do |format|
      if @led_event.update(led_event_params)
        format.html { redirect_to @led_event, notice: 'Led event was successfully updated.' }
        format.json { render :show, status: :ok, location: @led_event }
      else
        format.html { render :edit }
        format.json { render json: @led_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /led_events/1
  # DELETE /led_events/1.json
  def destroy
    @led_event.destroy
    respond_to do |format|
      format.html { redirect_to led_events_url, notice: 'Led event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_led_event
      @led_event = LedEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def led_event_params
      params.require(:led_event).permit(:color, :mode,:start_time, :end_time, :scenario_id, :part_id)
    end
end
