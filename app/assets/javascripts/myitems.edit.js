$(function(){
  $("#price").keyup(function(){
    var fee__number = $("#price").val() * 0.1;
    var profit__number = $("#price").val()*0.9;
let countFeeNum = fee__number;
let countProfitNum = profit__number;
$("#edit__fee").text(countFeeNum);
$("#edit__profit").text(countProfitNum);
})
$(".img").error(function(){
  $(this).attr({
    "src":"/img/usernon.jpg"
  });
});
})
