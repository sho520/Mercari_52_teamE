crumb :root do
  link "メルカリ", root_path
end

# items関連
crumb :search do
  link "検索結果", search_path
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
  link "本人情報の登録", users_identification_path
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

