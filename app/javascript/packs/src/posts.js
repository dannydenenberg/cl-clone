$(function() {
  $("#show_contact_form").on("click", function (e) {
    e.preventDefault();
    
    $("#contact-form").show(); // show the contact form
    $(this).hide(); // hide the "reply" button

    return false;
  })
})
