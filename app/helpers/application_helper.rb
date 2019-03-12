module ApplicationHelper
  
  # ページタイトル
  def full_title(page_title = '')
    base_title = "hukumiru"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  # 渡したユーザーがログイン済か確認
  def current_user?(user)
    user == current_user
  end
  
end