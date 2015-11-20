$(function(){
    var $rId = $('#rId'),
	$rPassword = $('#rPassword'),
	$rPassword2 = $('#rPassword2'),
	$rIdInfo = $('#rIdInfo'),
	$rPasswordInfo = $('#rPasswordInfo'),
	$rPassword2Info = $('#rPassword2Info'),
	$submit = $('#submit');

    //检查两个密码是否一致
    function checkInfo(){
		if($rId.val().length < 2 || $rId.val().length>32){
		    $rIdInfo.html("*帐号至少2个字符，至多32个字符");
		    $rIdInfo.addClass("Error");
		    return false;
		}else{
		    $rIdInfo.removeClass("Error");
		    $rIdInfo.html("2~32字符");
		}
		if($rPassword.val().length < 6 || $rPassword2.val().length>32){
		    $rPasswordInfo.html("*密码至少6个字符，至多32个字符");
		    $rPasswordInfo.addClass("Error");
		    return false;
		}else{
		    $rPasswordInfo.removeClass("Error");
		    $rPasswordInfo.html("6~32字符");
		}
		if(($rPassword2.val() == "") || ($rPassword2.val() != $rPassword.val())){
		    $rPassword2Info.html('*两次输入密码不一致，请重新输入！');
		    $rPassword2Info.addClass("Error");
		    return false;
		}else{
		    $rPassword2Info.removeClass("Error");
		    $rPassword2Info.html('(再次输入你的密码)')
		}
		return true;
    }
    $submit.click(function(){
		if(checkInfo()){
		    return true;
		}else{
		    alert("请修正信息");
		    return false;
		}
    });

});
