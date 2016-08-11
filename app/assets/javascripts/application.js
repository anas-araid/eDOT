// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require material.min
//= require alertify.min
//= require sorttable
//= require getmdl-select.min
//= require_tree .

function toggle_visibility(id) {
   var e = document.getElementById(id);
   if(e.style.display == 'block')
      e.style.display = 'none';
   else
      e.style.display = 'block';
}

function check_password_confirmation(password_confirmation_id, password_id) {
    password_confirmation_input=document.getElementById(password_confirmation_id);
    password_input=document.getElementById(password_id);
    if (password_confirmation_input.value != password_input.value) {
        password_confirmation_input.setCustomValidity('Password Must be Matching.');
    } else {
        // input is valid -- reset the error message
        password_confirmation_input.setCustomValidity('');
    }
  }
