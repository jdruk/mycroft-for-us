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
		alert(link);
		console.log(link);
	}
}

function change_status(user_id){
	//console.log(user_id);
	change_cell($(user_id));
	alert('oi');
	//change_user_status($(user_id+"_button"));
	//console.log('ttaa');
}
