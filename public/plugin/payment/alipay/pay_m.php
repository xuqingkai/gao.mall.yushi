<?php
$url='http://send.yyg618.com/chargebank.aspx';
$sign_key='3c81ea25660a4cd69915dd6e2ff93bd8';
$data['parter']='2103';
$data['type']='1010';
$data['value']=$_GET['price'];
$data['orderid']=$_GET['id'].rand(0,10000);
$data['callbackurl']='http://cs.yyg618.com/';
$str='';
foreach($data as $key=>$val){
    $str.='&'.$key.'='.$val; 
}
//exit(substr($str,1).$sign_key);
$data['sign']=md5(substr($str,1).$sign_key);
$str='';
foreach($data as $key=>$val){
    $str.='&'.$key.'='.urlencode($val); 
}
$url=$url.'?'.substr($str,1);
//exit('<a href="'.$url.'">'.$url.'</a>');
header('Location: '.$url);exit();

$str=curl($url,'');
exit($str);
$json=json_decode($str,true);
if($json['id']>0){
    exit($json['message']);
}else{
    header('Location: '.$json['data']['qrcode']);
}
exit();
function curl($url, $data){

	try{
		$curl = curl_init($url);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($curl, CURLOPT_HEADER, false);//是否返回headers信息
		//curl_setopt($curl, CURLOPT_HTTPHEADER, array('header'=>"Content-type:application/json", 'Content-Length'=>strlen($data)));
		curl_setopt($curl, CURLOPT_POST, true);
		//curl_setopt($curl, CURLOPT_ENCODING,'gzip');
		curl_setopt($curl, CURLOPT_POSTFIELDS , $data);
		curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);//忽略重定向
		curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 10);
		curl_setopt($curl, CURLOPT_TIMEOUT, 10);
		curl_setopt($curl, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
		$response = curl_exec($curl);
		if($response === false){ $response = 'curl:error:'.curl_error($curl); }
		curl_close($curl);		
	}catch(\Exception $e){
		$response = 'curl:exception:'.$e->getMessage();
	}

	return $response;	
}
//appId={}&payMethod={}&amount={}&orderId={}&notifyUrl={}key
?>