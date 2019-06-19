$(document).on('turbolinks:load', function() {
  $(".product__item-box__main__left__below__pics").on("mouseover", function(){
    var src = $(this).children('img').attr('src');
           $("#bigimage").attr("src",src);
    return false;
  });
});

