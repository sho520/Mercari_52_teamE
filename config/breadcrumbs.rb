crumb :root do
  link "Home", root_path
end

crumb :search do
  link "検索結果", search_path
  parent :root
end

crumb :user do
  link "マイページ", user_path
  parent :root
end

