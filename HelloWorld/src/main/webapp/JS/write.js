$(function(){
	var $submit = $('#submit');
	var $myContent = $('#myContent');
	var $createTime = $('#createTime');
	var $briefInfo = $('#briefInfo');
	//实例化编辑器
	var um = UM.getEditor('myEditor');
	
	function getContent() {
	    var arr = [];
	    arr.push("使用editor.getContent()方法可以获得编辑器的内容");
		arr.push("内容为：");
		arr.push(UM.getEditor('myEditor').getContent());
		alert(arr.join("\n"));
	}
	
	function save(){
		$myContent.val(um.getContent());
		$briefInfo.val(um.getPlainTxt().substring(0,30));// TODO 改为获取前三行数据
		$createTime.val(new Date());
		return true;
	}
	$submit.on('click',save);

});
