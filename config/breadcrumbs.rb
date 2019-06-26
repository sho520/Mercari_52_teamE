crumb :root do
  link "メルカリ", root_path
end

# items関連

crumb :item do |item|
  link item.name, item_path
end

crumb :search do
  @keyword = params[:keyword]
  if @keyword.blank?
    link "検索画面", search_path
  else
    link "#{params[:keyword]}", search_path
  end
end

crumb :category do
  link "カテゴリー一覧", categories_path
end

crumb :brand do
  link "ブランド一覧", items_brand_path
end

# users関連

crumb :mypage do
  link "マイページ", "/users/1"
end

crumb :profile do
  link "プロフィール", edit_user_path
  parent :mypage
end

crumb :identification do
  link "本人情報の登録", edit_user_registration_path
  parent :mypage
end

crumb :card do
  link "支払い情報", users_card_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", users_logout_path
  parent :mypage
end

crumb :categories do |category|
  if category.has_parent?
    if category.has_children?
      link category.parent.name + "  ›  " + category.name, "/categories/1"
      parent :category
    else
      link category.root.name + "  ›  " + category.parent.name + "  ›  " + category.name, "/categories/1"
      parent :category
    end
  else
    link category.name, "/categories/1"
    parent :category
  end
end
