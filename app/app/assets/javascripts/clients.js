function getReferencer(element){
	return "#" + $(element).data('referencer');
}

function hideMap(element){
	$(element).removeClass('active');
	$(getReferencer(element)).hide();
}

function showMap(element){
	$(element).addClass('active');
	$(getReferencer(element)).show();
}

function map(element){
	if($(element).hasClass('active')){
		hideMap(element);	
	} else {
		showMap(element);
	}
}