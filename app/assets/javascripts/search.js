$(document).on('turbolinks:load', function() {

  $("#condition_all").on("change", function(){
    $('input[id=condition]').prop('checked', this.checked);
  });

  $("#shipping_fee_payer_all").on("change", function(){
    $('input[id=shipping_fee_payer]').prop('checked', this.checked);
  });

  $("#state_all").on("change", function(){
    $('input[id=state]').prop('checked', this.checked);
  });

});
