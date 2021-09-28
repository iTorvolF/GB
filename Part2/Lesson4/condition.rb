# frozen_string_literal: true

require 'aasm'

class Condition
  include AASM
  aasm do
    state :solid, :liquid, :gaz

    event :melt do
      transitions from: :solid, to: :liquid
    end

    event :freeze do
      transitions from: :liquid, to: :solid
    end

    event :boil do
      transitions from: :liquid, to: :gaz
    end

    event :condense do
      transitions from: :gaz, to: :liquid
    end

    event :sublime do
      transitions from: :solid, to: :gaz
    end

    event :deposit do
      transitions from: :gaz, to: :solid
    end
  end
end

condition = Condition.new
p condition.solid? # true
p condition.liquid? # false
p condition.gaz? # false

condition.melt

p condition.solid? # false
p condition.liquid? # true
p condition.gaz? # false

condition.boil

p condition.solid? # false
p condition.liquid? # false
p condition.gaz? # true
