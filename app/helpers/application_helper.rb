module ApplicationHelper
  def declension(num, one, few, many)
    num %= 100
    num_dec = num % 10

    return many if num.between?(11, 19)
    return few if num_dec.between?(2, 4)
    return one if num_dec == 1

    many
  end
end
