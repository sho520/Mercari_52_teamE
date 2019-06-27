$(function(){


  $(document).on('change', 'input[type= "file"]',function(event) {
    var file = $(this).prop('files')[0];
    var reader = new FileReader();
    console.log(file)
    console.log(reader)
    inputs.push($(this));
    var img = $(`<div class= "img_view"><img></div>`);
    console.log(img)
    reader.onload = function(e) {
      var btn_wrapper = $('<div class="btn_wrapper"><div class="btn edit">編集</div><div class="btn delete">削除</div></div>');
      img.append(btn_wrapper);
      img.find('img').attr({
        src: e.target.result
  })
    }
    reader.readAsDataURL(file);
    images.push(img);
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
$("#item_middle_class_id").change(function(){
  $('#item_small_class_id').css('display', "block");
})
$("#item_small_class_id").change(function(){
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