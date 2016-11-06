<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){

            $m=D('setting');
            $data=$m->find(1);
            $_SESSION['web']=$data['web'];
            $_SESSION['desc']=$data['desc'];
            $_SESSION['phone']=$data['phone'];
            $_SESSION['qq']=$data['qq'];
            $_SESSION['weburl']=$data['url'];
            $_SESSION['ip']=get_client_ip();
            $_SESSION['browser']=GetBrowser();
            $_SESSION['os']=GetOs();
            $_SESSION['himg']=$data['hpath'].$data['himg'];
            $_SESSION['aimg']=$data['apath'].$data['aimg'];


        
       
        $this->display();
    }


   
}