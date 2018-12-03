$(function (){
	$('button').bind('click', function(){
		var cidade = $('#cidade').val();
		var now = new Date();

		var tempURL = 'https://query.yahooapis.com/v1/public/yql?format=json&rnd='+ now.getFullYear() + now.getMonth() + now.getDay() + now.getHours() + '&diagnostics=true&callback=?&q='; 
			tempURL += 'select * from weather.forecast where woeid in (select woeid from geo.places(1) where text="' + cidade+'") and u="c"';
//montando a string de requisição para pegar o valor da temperatura pelo Yahool
	$.ajax({
		url:encodeURI(tempURL),
		dataType:'json',
		type:'GET',
		beforeSend:function(){
			$('#res').html('Carregando ...');
		},//antes do envio do meu ajax
		success:function(data){

			if(data !== null && data.query !== null && data.query.results !== null && data.query.results.channel.description !== 'Yahoo! Weather Error'){
				var temp = data.query.results.channel.item.condition.temp; //resposta da api do Yahoo

				$('res').html(temp+'º C');
			}
		},//verifico se o valor está correto.
		error:function(){
			$('#res').html('Erro');
		}

	})
	});
});