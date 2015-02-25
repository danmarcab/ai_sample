module SmartSample
  class FitnessProportionateSelector

    def initialize(weights)
      @weights = adjust_weights(weights)
      @size = weights.size
    end

    def select(num=1)
      1.upto(num).map do
        begin
          index = (rand * @size).to_i
        end while(rand >= @weights[index])
        index
      end
    end

    private

    def adjust_weights(weights)
      max_weight = weights.max.to_f
      weights.map { |weight| weight/max_weight }
    end
  end
  FPS = RouletteWheelSelector = FitnessProportionateSelector
end
