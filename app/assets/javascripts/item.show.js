$(document).on('turbolinks:load', function() {
  $(".product__item-box__main__left__below__pics").on("mouseover", function(){
    console.log("a")
    var src = $(this).children('img').attr('src');
    console.log(src)
           $("#bigimage").attr("src",src);
    return false;
  });
});

  // $(document).on('turbolinks:load', function() {
  //   $(function(){
  //     $(".product__item-box__main__left__below__pics").on("mouseover", ChangeImage){
  //       function ChangeImage( imgid , newimg )
  //       var imgid = "#bigimage"
  //       var newimg = "/uploads/image/image_url/90/thumb_men_tops_polo11.jpg"
  //       document.getElementById(imgid).src = newimg;
  //     }
  //   })
  // })
  