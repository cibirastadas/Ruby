# frozen_string_literal: true

require 'test/unit'
require_relative 'array_task.rb'
# class
class ArrayTaskTest < Test::Unit::TestCase
  def test_sorting
    assert_equal(4, ArrayTask.new.test_array([3, 1, 5, 6, 9]))
    assert_equal(9, ArrayTask.new.test_array([0, 10]))
  end
end

# Nurodau kad naudosiu test/unit
# Tada sukuriu sarysi su savo failu, kuriam noriu pritaikyti testa
# apsirasau klase
# sukuriu metoda kuris patikrina ar atitinka, ar lygus
# mano pirmasis parametras nurodo kokios tikiuosi, o kitas koki gaunu
# testas buna sekmingas jei jie abu sutampa
