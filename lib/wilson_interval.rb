require 'statistics2'

module Wilson
  class Interval
    def initialize(options)
      @o = options
      @o[:confidence] ||= 0.95

      raise "Need to specify :n" unless @o[:total]
      unless @o[:p_hat]
        raise "Need to specify :p_hat or :successes" unless @o[:successes]
        @o[:p_hat] = @o[:successes].to_f / @o[:total] unless @o[:total] == 0
      end
    end

    def lower_bound
      return nil if @o[:total] == 0
      (center - plus_minus) / denominator
    end

    def upper_bound
      return nil if @o[:total] == 0
      (center + plus_minus) / denominator
    end

    private
    def z
      Statistics2.pnormaldist(1-(1-@o[:confidence])/2)
    end

    def center
      @o[:p_hat] + z*z/(2*@o[:total])
    end
    
    def plus_minus
      z * Math.sqrt((@o[:p_hat]*(1-@o[:p_hat])+z*z/(4*@o[:total]))/@o[:total])
    end

    def denominator
      1 + z*z / @o[:total]
    end
  end
end
