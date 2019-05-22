// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery_ujs
//= require jquery.mask
//= require activestorage
//= require turbolinks
//= require cocoon
//= require plotly
//= require_tree .

function change_cell(tr_user){
	if(tr_user.hasClass('error')){
		tr_user.removeClass('error');
	} else {
		tr_user.addClass('error');
	}
}

function change_user_status(button_link){
	if(button_link.hasClass('false')){
		button_link.text('Ativado');
		button_link.removeClass('false');
		button_link.addClass('true');
	} else {
		button_link.text('Desativado');
		button_link.removeClass('true');
		button_link.addClass('false');
	}
}

function change_status(user_id){
	change_cell($(user_id));
	change_user_status($(user_id+"_button"));
}

function bits_to_bytes(bits){
	return bits/8;
}
