Spree.ready(function($) {
  if ($("#checkout_form_address").is("*")) {
    // Hidden by default to support browsers with javascript disabled
    $(".js-address-fields").show();

    var getCountryId = function(region) {
      return $("#" + region + "country select").val();
    };

    var order_use_billing = $("input#order_use_billing");
    order_use_billing.change(function() {
      update_shipping_form_state(order_use_billing);
    });

    var update_shipping_form_state = function(order_use_billing) {
      if (order_use_billing.is(":checked")) {
        $("#shipping .inner").hide();
        $("#shipping .inner input, #shipping .inner select").prop(
          "disabled",
          true
        );
      } else {
        $("#shipping .inner").show();
        $("#shipping .inner input, #shipping .inner select").prop(
          "disabled",
          false
        );
      }
    };

    update_shipping_form_state(order_use_billing);
  }
});
