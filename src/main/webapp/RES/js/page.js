function send(controller){
	if($("#message").val()==""){
		$("#message").css("border","1px solid red");
		return;
	}else{
		$("#message").css("border","1px solid gray");
	}
	$.ajax({
		type: 'post',
		url:'/demo-activemq/activemq/'+controller,
		dataType:'text', 
		data:{"message":$("#message").val()},
		success:function(data){
			if(data=="suc"){
				$("#status").html("<font color=green>发送成功</font>");
				setTimeout(clear,1000);
			}else{
				$("#status").html("<font color=red>"+data+"</font>");
				setTimeout(clear,5000);
			}
		},
		error:function(data){
			$("#status").html("<font color=red>ERROR:"+data["status"]+","+data["statusText"]+"</font>");
			setTimeout(clear,5000);
		}
		
	});
}

function clear(){
	$("#status").html("");
}