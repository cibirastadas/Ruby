# frozen_string_literal: true

# class
class QuadraticTask
  attr_accessor :aaa, :bbb, :ccc

  def quadratic_equation(_aaa, _bbb, _ccc)
    sum = suma(aaa, bbb, ccc)
    if sum.zero?
      if_true(aaa, bbb)
    elsif sum.positive?
      if_false(aaa, bbb)
    else
      puts 'Saknis neegzistuoja '
    end
  end

  def suma(_aaa, _bbb, _ccc)
    bbb * bbb - 4 * aaa * ccc
  end

  def if_true(_aaa, _bbb)
    puts('Abidvi saknys yra lygios')
    x1 = - bbb / (2.0 * aaa)
    x2 = x1

    puts('Pirma saknis: ' + x1.to_i.to_s)
    puts('antra saknis: ' + x2.to_i.to_s)
  end

  def if_false(_aaa, _bbb)
    puts('Abidvi saknys yra skirtingos')

    x1 = calculation('+', aaa, bbb)
    x2 = calculation('-', aaa, bbb)
    puts('Pirma saknis: ' + x1.to_s)
    puts('antra saknis: ' + x2.to_s)
  end

  def calculation(stringer, _bbb, _aaa)
    if stringer == '-'
      (-bbb - Math.sqrt(sum)) / (2 * aaa)
    else
      (-bbb + Math.sqrt(sum)) / (2 * aaa)
    end
  end
end

quadratic_object = QuadraticTask.new
puts 'Apskaiciuoti kvadratine lygti'
puts 'Iveskite pirmaja reiksme: '
quadratic_object.aaa = gets.to_i
puts 'Iveskite antra reiksme: '
quadratic_object.bbb = gets.to_i
puts 'Iveskite trecia reiksme: '
quadratic_object.ccc = gets.to_i
quadratic_object.quadratic_equation(quadratic_object.aaa, quadratic_object.bbb, quadratic_object.ccc)

# Mano 2 uzduotis
# principas kaip 1 uzduoties, tik cia viskas yra suskirstyta daugiau i metodus, kadangi pagal rubocop, yra
# neleidziama apkrauti viena metoda su daug veiksmu. Viska isskyrsciau i mazus metodus kur kiekvienas turi
# savo uzduoti.
