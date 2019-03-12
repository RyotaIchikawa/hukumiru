module UsersHelper
  
  # ユーザーのGravatar画像表示
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar")
  end
  
  # 渡したユーザーがログイン済か確認
  def current_user?(user)
    user == current_user
  end
  
end
