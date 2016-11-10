<?php
namespace TAdmin\Controller;
//use Think\Controller;
class IndexController  extends CommonController{
    public function index(){
	     $this->display();
    }

    public  function test(){
        $_SESSION['ip']= get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        $_SESSION['realip']=Getip();
        $_SESSION['localip']=get_onlineip();
//         $_SESSION['caddress']=Getaddress();
       
        $this->display();
    }

}