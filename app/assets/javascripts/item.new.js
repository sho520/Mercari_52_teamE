$(function(){

  var images = [];
  $(document).on('change', 'input[type= "file"]',function(event) {
    var file = $(this).prop('files')[0];
    var reader = new FileReader();
    // console.log(file)
    // console.log(reader)
    reader.readAsDataURL(file);
    reader.onload = function(e) {
      // console.log("ok")
      var btn_wrapper = $('<div class= "img_view"><img class= "up__image"><div class="btn_wrapper"><div class="btn_edit">編集</div><div class= "btn_delete"><input type= "button" value= "削除" class= "delete__button"></div></div>');
      var img = btn_wrapper.val;
      images.push(img);
console.log(images.length)
      if(images.length <= 5 ) {
      $(".image__box__list").append(btn_wrapper);
      $(".image__box__list").find('img').attr({
        src: e.target.result
  })
}
else{(images.length >= 6 )
    $(".image__box__list2").append(btn_wrapper);
    $(".image__box__list2").find('img').attr({
      src: e.target.result
  })
}
  }
  $(document).on('click', '.delete__button', function() {
    console.log('削除ボタンを押しています');
    $(this).parent().parent().parent().hide();


    // var target_image = $(this).parent().parent();
    // $.each(inputs, function(index, input){
    //   if ($(this).data('image') == target_image.data('image')){
    //     $(this).remove();
    //     target_image.remove();
    //     var num = $(this).data('image');
    //     images.splice(num, 1);
    //     inputs.splice(num, 1);
    //     if(inputs.length == 0) {
    //       $('input[type= "file"].upload-image').attr({
    //         'data-image': 0
          // })
        // }
      // }
    })

  });



// console.log(e.target.result)
  $('#item_images_attributes_0_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_1_image_url').css('display', "block");
    $('#item_images_attributes_0_image_url').css('display', "none");
    // console.log("ok111")
  })
  $('#item_images_attributes_1_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_2_image_url').css('display', "block");
    $('#item_images_attributes_1_image_url').css('display', "none");
    // console.log("ok2")
  })
  $('#item_images_attributes_2_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_3_image_url').css('display', "block");
    $('#item_images_attributes_2_image_url').css('display', "none");
  })
  $('#item_images_attributes_3_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_4_image_url').css('display', "block");
    $('#item_images_attributes_3_image_url').css('display', "none");
  })
  $('#item_images_attributes_4_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_5_image_url').css('display', "block");
    $('#item_images_attributes_4_image_url').css('display', "none");
  })
  $('#item_images_attributes_5_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_6_image_url').css('display', "block");
    $('#item_images_attributes_5_image_url').css('display', "none");
  })
  $('#item_images_attributes_6_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_7_image_url').css('display', "block");
    $('#item_images_attributes_6_image_url').css('display', "none");
  })
  $('#item_images_attributes_7_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_8_image_url').css('display', "block");
    $('#item_images_attributes_7_image_url').css('display', "none");
  })
  $('#item_images_attributes_8_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_9_image_url').css('display', "block");
    $('#item_images_attributes_8_image_url').css('display', "none");
  })
  $('#item_images_attributes_9_image_url').change ('input[type= "file"]',function(event) {
    $('#item_images_attributes_9_image_url').css('display', "none");
  })




$("#item_large_class_id").change(function(){
  var select = $(this).val();
  console.log(select);
  if(select == 1){
  $('#item_middle_class_id').css('display', "block");
  var aaa = $('#item_middle_class_id').filter("value: 4,5");
  console.log(aaa);

  }
})
$("#item_large_class_id").change(function(){
  $('#item_middle_class_id').css('display', "block");
})
$("#item_middle_class_id").change(function(){
  $('#item_category_id').css('display', "block");
})
$("#item_category_id").change(function(){
  $('#Details__Size').css('display', "block");
})

$("#item_shipping_fee_payer_id").change(function(){
  $('#delivery__Configuration').css('display', "block");
})




$("#price").keyup(function(){
  var fee__number = $("#price").val() * 0.1;
  var profit__number = $("#price").val()*0.9;
let countFeeNum = fee__number;
let countProfitNum = profit__number;
$("#fee").text(countFeeNum);
$("#profit").text(countProfitNum);
})


})