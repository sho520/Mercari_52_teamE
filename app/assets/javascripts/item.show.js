$(document).on('turbolinks:load', function() {
  $(".product__item-box__main__left__below__pics").on("mouseover", function(){
    console.log("a")
    var src = $(this).children('img').attr('src');
    console.log(src)
           $("#bigimage").attr("src",src);
    return false;
  });
});

