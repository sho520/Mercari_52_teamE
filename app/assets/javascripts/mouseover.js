$(function() {
 
  //マウスを乗せたら発動
  $('.nav__list__item').hover(function() {
 
    //マウスを乗せたら色が変わる
    $(this).css('background', '#d3d3d3');
 
  //ここにはマウスを離したときの動作を記述
  }, function() {
 
    //色指定を空欄にすれば元の色に戻る
    $(this).css('background', '');
 
  });
});