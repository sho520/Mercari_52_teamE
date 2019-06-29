$(document).on('turbolinks:load', function() {
  $(".product__item-box__main__left__below__pics").on("mouseover", function(){
    var src = $(this).children('img').attr('src');
           $("#bigimage").attr("src",src);
    return false;
  });
  
  // function buildHTML(comment){
  //   var text = comment.text ? `${ comment.text }` : "";
  //   // var image = comment.image ? `<img src= ${ comment.image }>` : "";
  //   var html = `<div class = "product__item-comment__comments__all__each">
  //                 <div class = "product__item-comment__comments__all__each__left">
  //                   -if comment.user.present?
  //                     - if comment.user.image_url.present?
  //                       = image_tag comment.user.image_url.url(:thumb), size: '40x40'
  //                     - else
  //                       = image_tag 'member_noimage.png', size: '40x40'
  //                   - else
  //                     = image_tag 'member_noimage.png', size: '40x40'
  //                 </div>
  //                 <div class = "product__item-comment__comments__all__each__right">
  //                   <div class = "product__item-comment__comments__all__each__right__name">
  //                     - if comment.user_id == @item.owner_id
  //                       = comment.user.nickname + " (出品者)"
  //                     - elsif comment.user_id != 0
  //                       = comment.user.nickname
  //                     - else
  //                       = "匿名さん"
  //                   </div>
  //                   <div class = "product__item-comment__comments__all__each__right__text">
  //                     ${simple_format(text)}
  //                   <div class = "product__item-comment__comments__all__each__right__time">
  //                     ${comment.created_at}
  //                 </div>
  //               </div>`
  // return html;
  // }
  // $("#new_comment").submit(function(e) {
  //   e.preventDefault();
  //   var formData = new FormData(this);
  //   var url = $(this).attr('action')
  //   console.log(this)
  //   console.log(url)
  //   console.log(formData)
  //   $.ajax({
  //     url: url,
  //     type: "POST",
  //     data: formData,
  //     dataType: 'json',
  //     processData: false,
  //     contentType: false
  //   })
  //   .done(function(data) {

  //     // window.location.href ="/items/2"
  //     console.log(data)
  //     // var html = buildHTML(data);
  //     // console.log(html)
  //     // $('.product__item-comment__comments__all').append(html)
  //     // $('#comment_comment')[0].reset();
  //     // // $(".product__button").removeAttr("disabled")
  //     // $('html,body').animate({ scrollTop: $(document).height() }, 1000);
  //   })
  //   .fail(function(XMLHttpRequest, textStatus, errorThrown) {
  //     console.log("XMLHttpRequest : " + XMLHttpRequest.status);
  //     console.log("textStatus : " + textStatus);
  //     console.log("errorThrown : " + errorThrown.message);
  //     alert('error');
  //     $(".product__button").removeAttr("disabled")
  //   })
  // });
});

