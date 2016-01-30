module LedEventsHelper
    def parts_select_collect
        parts = Part.all.collect {|s| [ s.name, s.id ] }
    end

    def scenarios_select_collect
        scenarios = Scenario.all.collect {|s| [ s.name, s.id ] }
    end


    def modes_select_collect
        modes = Mode.all.collect {|s| [ s.name, s.id ] }
    end

end
