# frozen_string_literal: true

# class
class ArrayTask
  attr_accessor :arr1, :arr2
  def test_array(array)
    array_new = array.sort
    array_int = 0

    array_new.each_index do |index|
      break if index == array_new.size - 1

      array_int += array_new[index + 1].to_i - array_new[index].to_i - 1
    end
    array_int
  end
end

array_object = ArrayTask.new
array_object.arr1 = [3, 1, 5, 6, 9]
array_object.arr2 = [0, 10]

puts(array_object.test_array(array_object.arr1))
puts(array_object.test_array(array_object.arr2))

# Mano 1 uzduotis
# Atitinka Object-Oriented programavimo paradigma.
# Yra panaudojamas objektas kuris yra priskirtas klasei ArrayTask,
# klase priima kintamuosius, o juos priskiriu per savo array_object ir paduodu masyvus.
# Taip pat kintamieji turi tureti maziausiai 3 simbolius, kitaip neatitinka rubocopo reikalavimu ir
# jei yra naudojama 2 zodziai ar daugiau jie turi buti atskirti su apatiniu bruksniu ir zodis is mazuju raidziu.
# Dar yra naudojamas komentaras virs klases kuris yra butinas, nes kitaip mes klaida, kad nera dokumentacijos komentaro
