module ApplicationHelper
  def user_avatar(user)
  # TODO user avatar upload
    asset_path('avatar.webp')
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end


  def declension(num, one, few, many)
    num %= 100
    num_dec = num % 10

    return many if num.between?(11, 19)
    return few if num_dec.between?(2, 4)
    return one if num_dec == 1

    many
  end
end
