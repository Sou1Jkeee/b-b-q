module ApplicationHelper
  def user_avatar(user)
    user.avatar? ? user.avatar.url : asset_path('avatar.webp')
  end

  def user_avatar_thumb(user)
    user.avatar.file.present? ? user.avatar.thumb.url : asset_path('avatar.webp')
  end

  def event_photo(event)
    photos = event.photos.persisted

    photos.any? ? photos.sample.photo.url : asset_path('event.jpg')
  end

  def event_thumb(event)
    photos = event.photos.persisted

    photos.any? ? photos.sample.photo.thumb.url : asset_path('event_thumb.jpg')
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
