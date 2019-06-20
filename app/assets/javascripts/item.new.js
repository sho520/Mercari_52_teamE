$(function(){

  $("#price").keyup(function(){
    var fee__number = $("#price").val() * 0.1;
    var profit__number = $("#price").val()*0.9;
let countFeeNum = fee__number;
let countProfitNum = profit__number;
$("#fee").text(countFeeNum);
$("#profit").text(countProfitNum);
})

// $("#item_shipping_fee_payer_id").change(function(){
//   var select = $(this).val();
//   console.log(select);
//   if(select == 2){
//     item[delivery_way_id].options[0] = new Option("りんご");
//     item[delivery_way_id].options[1] = new Option("みかん");
//     item[delivery_way_id].options[2] = new Option("オレンジ");
//     }
//   })
//   // if ("#item_shipping_fee_payer_id".options["#item_shipping_fee_payer_id".selectedIndex].value == 2)
//   // "#item[delivery_way_id]".options[0] = new Option("りんご");

// })
// $("#item_shipping_fee_payer_id").change(function(){
//     var select = $(this).val();
//     console.log(select);
//     if(select == 2){
//       item[delivery_way_id].options[0] = new Option("りんご");
//       item[delivery_way_id].options[1] = new Option("みかん");
//       item[delivery_way_id].options[2] = new Option("オレンジ");
//       }
//     })

$("#item_large_class_id").change(function(){
  $('#item_middle_class_id').css('display', "block");
})
$("#item_middle_class_id").change(function(){
  $('#item_small_class_id').css('display', "block");
})
$("#item_small_class_ide").change(function(){
  $('').css('display', "block");
})
$("#item_shipping_fee_payer_id").change(function(){
  $('#delivery__Configuration').css('display', "block");
})


item_shipping_fee_payer_id
})